document.addEventListener("DOMContentLoaded",function(){
    const tabs =document.querySelectorAll(".company");
    const contents = document.querySelectorAll(".reservationList-sudume-middle");

    // 첫번째 탭 활성화
    if(tabs.length> 0 && contents.length > 0){
        tabs[0].classList.add("tab-selected");
        contents[0].classList.add("reservationList-sudume-middle-active");
    }
    
    tabs.forEach((tab,index)=>{
        tab.addEventListener("click",()=>{
            //다른 탭을 눌렀을 때 
            tabs.forEach((btn)=> {
                btn.classList.remove("tab-selected");
            });
            contents.forEach((content) => {
                content.classList.remove("reservationList-sudume-middle-active");
            });

            tab.classList.add("tab-selected");

            contents[index].classList.add("reservationList-sudume-middle-active");
        })
    })
    eventsAjax();

    /* post calendar/list plan  post방식 일정 추가 */
    function eventsAjax(){

        $.ajax({
            url: '/mypage/calendar/events',
            method:'Get',
            success: function (data,response,xhr){
                console.log(xhr.getAllResponseHeaders())
                /*함수에 response를 넣어 컨트롤러에서 받은 데이터를 넣음*/
                getCalendarEvents(data);
            },
            error: function (error){
                alert('ajax에서 데이터를 못받음')

            }
        })

        function getCalendarEvents(getCalendarEvents){
            /*html 추가용으로 만듬*/
            let eventHtml='';
            /*event 즉 내부의 값을 events로 forEach함*/
            getCalendarEvents.forEach(function (getCalendarEvent){
                const eventDate=new Date(getCalendarEvent.reservation_date);
                let formattedYear = eventDate.getFullYear()
                let formattedMonth=('0'+(eventDate.getMonth()+1)).slice(-2)
                let formattedDate=('0'+eventDate.getDate()).slice(-2)
                let company_Name=getCalendarEvent.company_name;
                // currentYear===formattedYear
                //currentMonth+1===parseInt(formattedMonth)
                let queryDate =document.querySelectorAll(".date");
                let testNum=0;

                if((currentYear===formattedYear)&&(currentMonth+1===parseInt(formattedMonth))){
                    for (let i=1;i<32;i++){
                        if(formattedDate === queryDate[i].textContent){
                            testNum=queryDate[i]
                            console.log(testNum);
                            queryDate[i].style.backgroundColor="#ef337f";
                            queryDate[i].style.color="white";

                            queryDate[i].innerHTML+=
                                `<div style="font-size: 15px;">
                                ${company_Name}
                                </div>`;

                        }else {
                            console.log("false");
                        }
                    }
                }
                /*
                eventHtml+=`
                    <div>
                    예약된 날짜 ${formattedYear}년
                    ${formattedMonth}월
                    ${formattedDate}일
                    </div>
                `
                */
            })
            // $(`.testSection`).html(eventHtml);
        }
    }
    /*calendar 크기 조정*/
    let calendarContainer=document.querySelector(".calendar-container");
    calendarContainer.style.width="800px";
    calendarContainer.style.height="600px";

    let calendarDate =document.querySelector(".date");
    calendarDate.style.width="90px";
    calendarDate.style.height="70px";

    let calendarDays=document.querySelector(".calendar-days");
    calendarDays.style.paddingBottom="10px";

    let calendarDates= document.querySelector(".calendar-dates");
    calendarDates.style.marginTop="10px";

    prevBtn.addEventListener("click", () => {
        eventsAjax();
        currentMonth--;
        if (currentMonth < 0) {
            currentMonth = 11;
            currentYear--;
        }


        var calendarData = new Object();
        calendarData.year=currentYear;
        calendarData.month=currentMonth;

        const jsonData=JSON.stringify(calendarData);
        $.ajax({
            url: '/calendar/list', // URL 경로
            type: 'POST', // POST 요청
            contentType: 'application/json', // JSON 형식으로 데이터를 전송
            data: jsonData, // 객체를 JSON 문자열로 변환
            dataType: 'json', // 응답 형식
            success: function(result) {
                console.log(result); // 서버에서 받은 응답 출력
                renderCalendar(currentYear,currentMonth);
            },
            error: function() {
                console.log("Error occurred"); // 에러 처리
            }
        });
    });
    /*
    1. 이전 버튼(prevBtn)을 클릭하면 현재 월을 이전 월로 변경하고, 연도가 바뀌어야 한다면 연도를 변경한다.
    2. 변경된 월과 연도를 바탕으로 renderCalendar 함수를 호출하여 이전 월의 캘린더를 표시한다.
    */

    nextBtn.addEventListener("click", () => {
        eventsAjax();
        currentMonth++;
        if (currentMonth > 11) {
            currentMonth = 0;
            currentYear++;
        }

        var calendarData2 = new Object();
        calendarData2.year=currentYear;
        calendarData2.month=currentMonth;

        const jsonData=JSON.stringify(calendarData2);
        $.ajax({
            url: '/calendar/list', // URL 경로
            type: 'POST', // POST 요청
            contentType: 'application/json', // JSON 형식으로 데이터를 전송
            data: jsonData, // 객체를 JSON 문자열로 변환
            dataType: 'json', // 응답 형식
            success: function(result) {
                console.log(result); // 서버에서 받은 응답 출력
                renderCalendar(currentYear,currentMonth);
            },
            error: function() {
                console.log("Error occurred"); // 에러 처리
            }
        });

    });
})

