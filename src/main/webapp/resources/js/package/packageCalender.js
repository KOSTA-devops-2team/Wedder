$(document).ready(function () {
    let selectedCompanyName = "";
    let availableDates = {}; // 예약 가능한 날짜 저장 객체
    let selectedData = {}; // 업체별로 선택된 정보 저장 객체

    // 업체 버튼 클릭 이벤트 처리
    $(".calendar-category button").on("click", function (e) {
        e.preventDefault();
        let newCompanyName = $(this).text();

        // 기존에 선택된 다른 업체가 있으면 날짜와 시간 초기화
        // if (selectedCompanyName !== newCompanyName) {
        //     $(".date").removeClass("highlight"); // 이전 업체의 날짜 선택 해제
        //     $(".time-slot").removeClass("selected"); // 이전 업체의 시간 선택 해제
        //     $("#timeSlotsContainer").empty(); // 이전 업체의 시간 슬롯 초기화
        //
        // }

        // 기존에 선택된 다른 업체가 있으면 날짜와 시간 초기화
        if (selectedCompanyName !== newCompanyName) {
            $(".date").removeClass("highlight").removeClass("available").removeClass("unavailable");
            $(".time-slot").removeClass("selected");
            $("#timeSlotsContainer").empty(); // 이전 업체의 시간 슬롯 초기화
        }

        selectedCompanyName = newCompanyName;
        $(".calendar-category button").removeClass("select");
        $(this).addClass("select");
        console.log("클릭한 업체 이름:", selectedCompanyName);

        // 선택된 업체의 예약 가능한 날짜 정보를 서버로 요청
        if (selectedCompanyName) {
            $.ajax({
                type: 'GET',
                url: "/package/getAvailableDate",
                contentType: "application/json",
                data: {
                    companyName: selectedCompanyName
                },
                dataType: "json",
                success: function (response) {
                    console.log("서버 응답 (예약 가능한 날짜):", response);
                    //availableDates[selectedCompanyName] = response || [];
                    availableDates[selectedCompanyName] = response.map(item => item.date) || [];
                    updateDateColors(); // 날짜 색상 업데이트 함수 호출
                },
                error: function () {
                    alert("예약 가능한 날짜 정보를 불러오는데 실패했습니다.");
                }
            });
        }
    });

    // 날짜 클릭 이벤트 처리
    $(".date").on("click", function () {
        let date = $(this);
        let month = $("#currentMonth").text();
        let year = $("#currentYear").text();
        let day = date.text();
        let selectedDate = year + "-" + month + "-" + day; // 선택된 날짜 저장
        console.log("클릭한 날짜:", selectedDate);

        $(".date").removeClass("highlight");
        $(this).addClass("highlight");

        if (!selectedData[selectedCompanyName]) {
            selectedData[selectedCompanyName] = {};
        }
        selectedData[selectedCompanyName].date = selectedDate;

        console.log("현재 선택된 정보:", selectedData);

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
                    // 응답 데이터가 배열인지 확인하고 처리
                    if (response.length === 0) {
                        console.log("선택한 날짜에 예약 가능한 시간이 없습니다.");
                        alert("선택한 날짜에 예약 가능한 시간이 없습니다.");
                    } else {
                        renderTimeSlots(response); // 시간대를 렌더링하는 함수 호출
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
            let day = $(this).text();
            let fullDate = year + "-" + month.padStart(2, '0') + "-" + day;

            if (availableDatesForCompany.includes(fullDate)) {
                $(this).addClass("available"); // 예약 가능한 날짜는 검정색으로 표시
            } else {
                $(this).addClass("unavailable"); // 예약 불가능한 날짜는 연회색으로 표시
            }
        });
    }

    // 예약 가능한 시간대를 동적으로 표시하는 함수
    function renderTimeSlots(timeSlots) {
        let container = $("#timeSlotsContainer");
        container.empty(); // 기존 시간대들을 비움

        // timeSlots가 undefined일 경우 빈 배열로 초기화
        timeSlots = timeSlots || [];
        if(timeSlots.length === 0) {
            container.append("<p>선택한 날짜에 예약 가능한 시간이 없습니다.</p>");
        } else{
            timeSlots.forEach(function (list) {

                let slotElement = $("<div></div>")
                    .addClass("time-slot")
                    .text(list.time);

                slotElement.on("click", function () {
                    $(".time-slot").removeClass("selected");
                    $(this).addClass("selected");

                    // 시간대 정보를 현재 업체에 저장
                    if (!selectedData[selectedCompanyName]) {
                        selectedData[selectedCompanyName] = {};
                    }
                    selectedData[selectedCompanyName].time = list.time; // 선택된 시간 저장
                    console.log(`선택한 시간: ${list.time} (업체: ${selectedCompanyName})`);
                    console.log("현재 선택된 정보:", selectedData);
                });

                container.append(slotElement); // 시간대 요소를 컨테이너에 추가
            });
        }
    }
});
