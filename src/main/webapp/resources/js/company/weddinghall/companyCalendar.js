let availableDates = {}; // 예약 가능한 날짜 저장 객체
let selectedData = {};  // 선택된 정보 저장 객체

$(document).ready(function () {

    const infoCalendar = document.getElementById("calendar-section1")
    const companyId = infoCalendar.getAttribute("data-company-id");
    const category = infoCalendar.getAttribute("data-category");
    console.log("카테고리 값:", category);

    const categoryMap = {
        "웨딩홀": "weddinghall",
        "스튜디오": "studio",
        "메이크업": "makeup",
        "드레스": "dress"
    };
    // 한글 카테고리를 영어로 변환
    const categoryEng = categoryMap[category];

    if (!categoryEng) {
        console.error("카테고리 매핑 실패:", category);
        return; // 잘못된 카테고리 값 처리
    }

    // 동적으로 URL 생성
    const dateUrl = `/${categoryEng}/getAvailableDate`;
    const timeUrl = `/${categoryEng}/getAvailableTime`;
    console.log("동적으로 생성된 URL:", dateUrl, timeUrl);

    // 1. 선택한 업체에 대한 저장된 정보가 있으면 달력과 시간을 표시
    if (selectedData[companyId] && selectedData[companyId].date) {
        let savedDate = selectedData[companyId].date;
        let savedTime = selectedData[companyId].time;

        console.log(`저장된 날짜: ${savedDate}, 저장된 시간: ${savedTime}`);

        // 선택된 날짜가 있다면 highlight 처리
        let month = $("#currentMonth").text();
        let year = $("#currentYear").text();
        $(".date").each(function () {
            let day = $(this).text().padStart(2, '0');
            let fullDate = year + "-" + month.padStart(2, '0') + "-" + day;

            if (fullDate === savedDate) {
                $(this).addClass("highlight");
            }
        });

        // 선택된 시간이 있다면 time-selected 처리
        if (savedTime) {
            // 시간대 요청해서 화면에 다시 그리기
            $.ajax({
                type: 'GET',
                url: timeUrl,
                contentType: "application/json",
                data: {
                    companyId: companyId,
                    date: savedDate
                },
                dataType: "json",
                success: function (response) {
                    renderTimeLists(response);

                    // 시간이 선택된 상태라면 시간 슬롯에 반영
                    if (savedTime) {
                        $(".time-slot").each(function () {
                            if ($(this).text() === savedTime) {
                                $(this).addClass("time-selected");
                            }
                        });
                    }
                },
                error: function () {
                    alert("시간대 정보를 불러오는데 실패했습니다.");
                }
            });
        }
    }

    // 업체의 예약 가능한 날짜 정보를 서버로 요청
    if (companyId) {
        $.ajax({
            type: 'GET',
            url: dateUrl,
            data: {
                companyId: companyId
            },
            dataType: "json",
            success: function (response) {
                console.log("서버 응답 (예약 가능한 날짜):", response);
                if (response && Array.isArray(response)) {
                    availableDates[companyId] = response.map(item => item.date);
                } else {
                    availableDates[companyId] = [];
                }
                updateDateColors(); // 날짜 색상 업데이트 함수 호출
            },
            error: function () {
                alert("예약 가능한 날짜 정보를 불러오는데 실패했습니다.");
            }
        });
    }

    // 날짜 클릭 시 예약 가능한 시간대 요청
    $(".date").on("click", function () {
        let date = $(this);
        let month = $("#currentMonth").text();
        let year = $("#currentYear").text();
        let day = date.text().padStart(2, '0');
        let selectedDate = year + "-" + month + "-" + day;  // 선택된 날짜 저장
        console.log("클릭한 날짜:", selectedDate);

        $(".date").removeClass("highlight");
        $(this).addClass("highlight").removeClass("available");

        selectedData[companyId] = selectedData[companyId] || {};
        selectedData[companyId].date = selectedDate;
        console.log("현재 선택된 정보:", selectedData);

        // 선택한 날짜와 업체에 해당하는 시간대를 서버로 요청
        if (companyId && selectedDate) {
            $.ajax({
                type: 'GET',
                url: timeUrl,
                contentType: "application/json",
                data: {
                    companyId: companyId,
                    date: selectedDate
                },
                dataType: "json",
                success: function (response) {
                    console.log("서버 응답:", response);
                    if (response && response.length > 0) {
                        renderTimeLists(response);  // 시간대를 렌더링하는 함수 호출
                    } else {
                        alert("선택한 날짜에 예약 가능한 시간이 없습니다.");
                    }
                },
                error: function () {
                    alert("시간대 정보를 불러오는데 실패했습니다.");
                }
            });
        } else {
            alert("날짜를 선택해주세요.");
        }
    });

    // 예약 가능한 날짜에 따라 색상 업데이트
    function updateDateColors() {
        let dates = $(".date");
        let month = $("#currentMonth").text();
        let year = $("#currentYear").text();
        let availableDatesForCompany = availableDates[companyId] || [];

        dates.each(function () {
            let day = $(this).text().padStart(2, '0');
            let fullDate = year + "-" + month.padStart(2, '0') + "-" + day;

            if (availableDatesForCompany.includes(fullDate)) {
                $(this).addClass("available");  // 예약 가능한 날짜 표시
            }
        });
    }

    // 예약 가능한 시간대를 동적으로 표시하는 함수
    function renderTimeLists(timeLists) {
        let container = $("#timeListContainer");
        container.empty();  // 기존 시간대 초기화

        timeLists.forEach(function (list) {
            let slotElement = $("<div></div>")
                .addClass("time-slot")
                .text(list.time);

            slotElement.on("click", function () {
                $(".time-slot").removeClass("time-selected");
                $(this).addClass("time-selected");

                // 시간대 정보를 현재 업체와 날짜에 저장
                if (!selectedData[companyId]) {
                    selectedData[companyId] = {};
                }

                selectedData[companyId].time = list.time;  // 선택한 시간을 저장
                console.log(`선택한 시간: ${list.time} (업체: ${companyId})`);
                console.log("현재 선택된 정보:", selectedData);

                $("#selectedDateTime_${companyId}").text(`${selectedDate[companyId].date} • ${list.time}`);
            });

            container.append(slotElement);  // 새로운 시간대 추가
        });
    }
});

