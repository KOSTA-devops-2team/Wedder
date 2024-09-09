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
					<button id="prevBtn"> <</button>
					<div id="yearMonth">
						<h2 id="currentYear"></h2><h2>년</h2>
						<h2 id="currentMonth"></h2><h2>월</h2>
						<h2 id="currentHour"></h2>
						<h2 id="currentMinute"></h2>
						<h2 id="currentSecond"></h2>
					</div>
					<button id="nextBtn"> > </button>
				</div>
				<div id="scheduleBtn">
				
					<button id ="regBtn" type="button" class="btn btn-write"
					onclick="location.href='<c:url value="/calendar/write"/>' ">
					<i class="fa fa-pencil-alt" aria-hidden="true"></i>일정 추가</button>
				</div>
				
				<script type="text/javascript">
					let msg="{msg}"
					if(msg == "DEL_OK") alert("성공적으로 삭제되었습니다.")
					if(msg == "DEL_ERR") alert("삭제되었거나 없는 게시물입니다.")
					
					if(msg == "WRT_OK") alert("일정이 추가되었습니다.")
					if(msg == "MOD_OK") alert("성공적으로 수정되었습니다.")
					
					if(msg == "WRT_ERR") alert("일정 추가에 실패하였습니다. 재작성해 주세요.")
					if(msg == "MOD_ERR") alert("성공적으로 수정되었습니다.")
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
				<section id="calendarBoard">
					<div style="text-align: center;">
						<div class="schedule-container">
							<!-- <div class="searcdh-container">
								<form action="" class="search-form" method="get">
									<select class="search-option" name="option">
										
									</select>
									<input type="text" name="key"> 
								</form>
							</div> -->
							
							<div>${dto.schedule_id }</div>
							
							<table>
								<tr>
									<th class="schedule_id">일정 번호</th>
									<th class="company_id">회사 번호</th>
									<th class="company_name">회사 이름</th>
									<th class="date">예약 날짜</th>
									<th class="time">예약 시간</th>
								</tr>
								<c:forEach var="dto" items="${list}">
									<tr>
										<td class="schedule_id">${dto.schedule_id} </td>
										<td class="company_id">${dto.company_id } </td>
										<td class="company_name">${dto.company_name } </td>
										<td class="Date">${dto.date } </td>
										<td class="time">${dto.time } </td>
									</tr>
								</c:forEach>
							</table>
							<br>
							<div class="paging-container">
								<div class="paging">
									<c:if test="${totalCnt == null || totalCnt == 0 }">
										<div>게시물이 없습니다.</div>
									</c:if>
									<c:if test="${totalCnt != null || totalCnt != 0 }">
										<c:if test="${pr.showPrev }">
											<a class="page" href="<c:url value="/board/list${pr.sc.getQueryString(pr.beginPage-1) }" />"> < </a>
										</c:if>
										<c:forEach var="i" begin="${pr.beginPage }" end="${pr.endPage }">
											<a class="page" href="<c:url value="/board/list${pr.sc.getQueryString(i)}" />">${i }</a>
										</c:forEach>
										<c:if test="${pr.showNext }">
											<a class="page" href="<c:url value="/board/list${pr.sc.getQueryString(pr.endPage+1) }" />"> > </a>
										</c:if>						
									</c:if>
								</div> <!--paging 끝  -->
							</div><!-- paging-container 끝  -->
						</div> <!--schedule-container 끝  -->
					</div> <!--test 첫번째 div  -->
				<div id="insertContainer">
				<h2>registerSchedule</h2>
				
			
				</div>
				</section>
			</section>			
			<script src="https://cdn.jsdelivr.net/npm/korean-lunar-calendar/dist/korean-lunar-calendar.min.js">
			</script>
			<script type="text/javascript" 	src="${pageContext.request.contextPath}/resources/js/mypage/calendar.js" ></script>
		</body>
		<script type="text/javascript">
			/*#currentMonth   */
			
                	 $(document).ready(function(){
                         $(".date").on("click", function(){
                             // 클릭된 요소
                             let date = $(this);
                             
                             let month =$("#currentMonth").text();
                             let year =$("#currentYear").text();
                             let value=date.text();
                             let hour =$("#currentHour").text();
                             let minute =$("#currentMinute").text();
                             let second =$("#currentSecond").text();
                             
                             
                             
                             // 기존에 .highlight 클래스가 있는지 확인
                              if (date.hasClass("highlight")) {
                                 // 이미 클래스가 있으면 제거
                                 date.removeClass("highlight");
                                 
                             } else {
                                 // 클래스가 없으면 추가
                                 date.addClass("highlight");
                             }
                              
                             let formattedDate=year+"-"+month+"-"+value;
                             let formattedTime =hour+":"+minute+":"+second;
                             
                             let test={
                            		 schedule_id: 3,
                            		 company_id: 3,
                            		 company_name: "확인용",
                            		 date:formattedDate,
                            		 time:formattedTime
                            		 }
                             let test2={}
                             
                             $.ajax({
                             	type: 'post', // 요청메서드 
                             	url: "/wedder/calendar/send2", //요청 URI
                             	headers:{"Content-Type":"application/json"}, //요청 헤더
                             	data: JSON.stringify(test),
                             	dataType: "text", //전송 받을 데이터의 타입
                             	success: function(result){ // 서버로부터 응답이 도착하면 호출될 함수 
                             		test2 =JSON.parse(result) //result는 서버가 전송한 데이터 
                             		alert("received: "+result)
                             		//-> 컨트롤러에서 받은 값을 출력한다.
                             		$("#data").html(
                             				"schedule_id ="+test2.schedule_id+
                             				",company_id ="+test2.company_id+
                             				",company_name ="+test2.company_name+
                             				",date ="+test2.date+
                             				",time ="+test2.time
                             				)
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