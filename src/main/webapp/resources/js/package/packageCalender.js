let selectedCompanyName = "";
let availableDates = {}; // 예약 가능한 날짜 저장 객체
let selectedData = {}; // 업체별로 선택된 정보 저장 객체


$(document).ready(function () {
    console.log("isLoggedIn: ", isLoggedIn);  // 세션 로그인 상태 확인

    // 업체 선택 시 로직
    $(".calendar-category button").on("click", function (e) {
        e.preventDefault();

        if (!isLoggedIn) {
            Swal.fire({
                title:'로그인 필요',
                text: '패키지 예약은 회원만 가능합니다. 로그인 페이지로 이동합니다.',
                icon: 'warning',
                confirmButtonText: '확인'
            }).then(() => {
                let currentUrl = window.location.href;
                console.log("현재 URL: ", currentUrl); // 현재 URL 확인
                window.location.href =  "/log/login?redirect=" + encodeURIComponent(currentUrl)
            });
        } else {
            let newCompanyName = $(this).text();
            //let companyId = $(this).data("companyId")
            let companyId = $(this).data("company-id");
            console.log(`새로 선택된 업체: ${newCompanyName} , companyId: ${companyId}`);

            if (!selectedData[newCompanyName]) {
                selectedData[newCompanyName] = {};
            }
            selectedData[newCompanyName].companyId = companyId;

            // 기존에 선택된 다른 업체가 있으면 날짜와 시간 초기화
            if (selectedCompanyName !== newCompanyName) {
                $(".date").removeClass("highlight").removeClass("available").removeClass("unavailable");
                $(".time-slot").removeClass("time-selected");
                $("#timeListContainer").empty();
            }

            selectedCompanyName = newCompanyName;
            $(".calendar-category button").removeClass("select");
            $(this).addClass("select");
            console.log("클릭한 업체 이름:", selectedCompanyName);

            // 1. 선택한 업체에 대한 저장된 정보가 있으면 달력과 시간을 표시
            if (selectedData[selectedCompanyName] && selectedData[selectedCompanyName].date) {
                let savedDate = selectedData[selectedCompanyName].date;
                let savedTime = selectedData[selectedCompanyName].time;

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
                        url: "/package/getAvailableTimeList",
                        contentType: "application/json",
                        data: {
                            companyName: selectedCompanyName,
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

            // 2. 선택된 업체의 예약 가능한 날짜 정보를 서버로 요청
            if (selectedCompanyName) {
                $.ajax({
                    type: 'GET',
                    url: "/package/getAvailableDate",
                    data: {
                        companyName: selectedCompanyName
                    },
                    dataType: "json",
                    success: function (response) {
                        console.log("서버 응답 (예약 가능한 날짜):", response);
                        if (response && Array.isArray(response)) {
                            availableDates[selectedCompanyName] = response.map(item => item.date);
                        } else {
                            availableDates[selectedCompanyName] = [];
                        }
                        updateDateColors(); // 날짜 색상 업데이트 함수 호출
                    },
                    error: function () {
                        alert("예약 가능한 날짜 정보를 불러오는데 실패했습니다.");
                    }
                });
            }
        }
    });


    // 3. 날짜 클릭 이벤트 처리
    $(".date").on("click", function () {
        let date = $(this);
        let month = $("#currentMonth").text();
        let year = $("#currentYear").text();
        let day = date.text().padStart(2, '0');
        let selectedDate = year + "-" + month + "-" + day; // 선택된 날짜 저장
        console.log("클릭한 날짜:", selectedDate);

        $(".date").removeClass("highlight");
        $(this).addClass("highlight").removeClass("available");

        // 선택된 업체의 데이터 초기화 확인
        if (!selectedData[selectedCompanyName]) {
            console.log(`${selectedCompanyName}의 데이터 초기화`);
            selectedData[selectedCompanyName] = {};
        }

        selectedData[selectedCompanyName].date = selectedDate;
        console.log("현재 선택된 정보:", selectedData);

        // 선택한 날짜를 표시하는 부분 업데이트
        $(`#selectedDateTime_${selectedCompanyName}`).text(`${selectedDate} • 선택한 시간`);

        // 선택한 업체와 날짜에 해당하는 시간대를 서버로 요청
        if (selectedCompanyName && selectedDate) {
            $.ajax({
                type: 'GET',
                url: "/package/getAvailableTimeList",
                contentType: "application/json",
                data: {
                    companyName: selectedCompanyName,
                    date: selectedDate
                },
                dataType: "json",
                success: function (response) {
                    console.log("서버 응답:", response);
                    response = response || [];
                    if (response.length === 0) {
                        console.log("선택한 날짜에 예약 가능한 시간이 없습니다.");
                        alert("선택한 날짜에 예약 가능한 시간이 없습니다.");
                    } else {
                        renderTimeLists(response); // 시간대를 렌더링하는 함수 호출
                    }
                },
                error: function () {
                    alert("시간대 정보를 불러오는데 실패했습니다.");
                }
            });
        } else {
            alert("업체와 날짜를 모두 선택해주세요.");
        }
    });


    // 예약 가능한 날짜에 따라 날짜 색상 업데이트하는 함수
    function updateDateColors() {
        let dates = $(".date");
        let month = $("#currentMonth").text();
        let year = $("#currentYear").text();
        let availableDatesForCompany = availableDates[selectedCompanyName] || [];

        dates.each(function () {
            let day = $(this).text().padStart(2, '0');
            let fullDate = year + "-" + month.padStart(2, '0') + "-" + day;

            if (availableDatesForCompany.includes(fullDate)) {
                $(this).addClass("available"); // 예약 가능한 날짜 color: #000000;
            }
        });
    }

    // 예약 가능한 시간대를 동적으로 표시하는 함수
    function renderTimeLists(timeLists) {
        let container = $("#timeListContainer");
        container.empty(); // 기존 시간대들을 비움

        timeLists.forEach(function (list) {
            let slotElement = $("<div></div>")
                .addClass("time-slot")
                .text(list.time);

            slotElement.on("click", function () {
                $(".time-slot").removeClass("time-selected");
                $(this).addClass("time-selected");

                // 시간대 정보를 현재 업체와 날짜에 저장
                if (!selectedData[selectedCompanyName]) {
                    console.log(`${selectedCompanyName}의 데이터 초기화`);
                    selectedData[selectedCompanyName] = {};
                }

                selectedData[selectedCompanyName].time = list.time;
                console.log(`선택한 시간: ${list.time} (업체: ${selectedCompanyName})`);
                console.log("현재 선택된 정보:", selectedData);

                // 선택된 시간과 날짜를 UI에 반영
                $(`#selectedDateTime_${selectedCompanyName}`).text(`${selectedData[selectedCompanyName].date} • ${list.time}`);
            });

            container.append(slotElement); // 시간대 요소를 컨테이너에 추가
        });
    }
});
