<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>calendarList</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/calendarList.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"  />
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	</head>
	<body>
		<section class="calendar-container" id="calendar-section1">
			<form action="" id="form" class="frm" method="post">
				<div class="calendar-header">
					<button id="prevBtn"> 이전</button>
					<div id="yearMonth">
						<h2 id="currentYear"></h2><h2>년</h2>
						<h2 id="currentMonth"></h2><h2>월</h2>
					</div>
					<button id="nextBtn"> 다음</button>
				</div>
				<div id="scheduleBtn">
					<button id ="regBtn" type="button" class="btn btn-write">일정 추가</button>
					<button id ="delBtn" type="button" class="btn btn-del">일정 삭제</button>
				</div>
				
				<script type="text/javascript">
					let msg="{msg}"
					if(msg == "DEL_OK") alert("성공적으로 삭제되었습니다.")
					if(msg == "DEL_ERR") alert("삭제되었거나 없는 게시물입니다.")
					if(msg == "WRT_OK") alert("성공적으로 등록되었습니다.")
					if(msg == "MOD_OK") alert("성공적으로 수정되었습니다.")
				</script>
				
				<div class ="calendar-body">
					<div class = "calendar-days">
						<div class="day sunday">일</div>				
						<div class="day">월</div>				
						<div class="day">화</div>				
						<div class="day">수</div>				
						<div class="day">목</div>				
						<div class="day">금</div>				
						<div class="day saturday">토</div>				
					</div>
					<div class="calendar-dates" id="calendarDates"></div>
					
				</div>
					<div class = "calendar-footer">
				</div>
			</form>
			
			
		</section>
			<script src="https://cdn.jsdelivr.net/npm/korean-lunar-calendar/dist/korean-lunar-calendar.min.js">
			</script>
			<script type="text/javascript" 	src="${pageContext.request.contextPath}/resources/js/mypage/calendar.js" ></script>
		</body>
		<script type="text/javascript">
			$("#regBtn").on("click",function(){
				let form =$("#form");
				form.attr("action","<c:url value="/calendar/write"/>")
				form.attr("method","post")
				
				form.submit()
			})
			/*#currentMonth   */
			
		 $(document).ready(function(){
            $(".date").on("click", function(){
                // 클릭된 요소
                let date = $(this);
                let month =$("#currentMonth").text();
                let year =$("#currentYear").text();
                // 기존에 .highlight 클래스가 있는지 확인
                if (date.hasClass("highlight")) {
                    // 이미 클래스가 있으면 제거
                    date.removeClass("highlight");
                    
                } else {
                    // 클래스가 없으면 추가
                    date.addClass("highlight");
                }
                
                let value=date.text();
                
                let test={year: year,month: month,day: value}
                let test2={}
                $.ajax({
                	type: 'post', // 요청메서드 
                	url: "/wedder/calendar/send", //요청 URI
                	headers:{"Content-Type":"application/json"}, //요청 헤더
                	data: JSON.stringify(test),
                	dataType: "text", //전송 받을 데이터의 타입
                	success: function(result){ // 서버로부터 응답이 도착하면 호출될 함수 
                		test2 =JSON.parse(result) //result는 서버가 전송한 데이터 
                		alert("received: "+result)
                		$("#data").html("year ="+test2.year+",month ="+test2.month+",day ="+test2.day)
                	},
                	error: function(){
                		alert("error")
                		console.log(test)
                		console.log(test2)
                	}	// 에러가 발생했을 때 
                })
                	alert("the request is sent")
            });
        });
                	
		</script> 
</html>