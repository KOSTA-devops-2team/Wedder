<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>calendarList</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/calendarList.css">
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

							<div>${dto.scheduleId }</div>
							
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
									
										<td class="schedule_id">${dto.scheduleId} </td>
										<td class="company_id">
											<a href="<c:url value="/calendar/read${pr.sc.getQueryString()}&schedule_id=${dto.scheduleId }" />">
										${dto.companyId }</a>
										</td>
										<td class="company_name">${dto.companyName } </td>
										<td class="Date">
										<fmt:formatDate value="${dto.date}" pattern="yyyy-MM-dd"/>
										 </td>
										<td class="time">${dto.time } </td>
									</tr>
								</c:forEach>
							</table>
							<br>
							<div id="data"></div>
							<div id="data1"></div>
							<div id="data2"></div>
							<div id="data3"></div>
							<div id="data4"></div>
							<div id="data5"></div>
							<div id="data6"></div>
							
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
                             
                             $(".date").removeClass("highlight");
                             $(this).addClass("highlight");
                              
                             let formattedDate=year+"-"+month+"-"+value;
                             let formattedTime =hour+":"+minute;
                             
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
                             	url: "/calendar/send2", //요청 URI
                             	headers:{"Content-Type":"application/json"}, //요청 헤더
                             	data: JSON.stringify(test),
                             	dataType: "json", //전송 받을 데이터의 타입더
                             	success: function(result){ // 서버로부터 응답이 도착하면 호출될 함수 
                             		test2 =JSON.parse(result) //result는 서버가 전송한 데이터 
                             		alert("received: "+result)
                             		console.log(test2)
                             		console.log(test2.date)
                             		//-> 컨트롤러에서 받은 값을 출력한다.
                             		$("#data1").html(
                             				"schedule_id ="+test2.schedule_id
                             				)
                             		$("#data2").html(
                             				"company_id ="+test2.company_id
                             				)
                             		$("#data3").html(
                             				"company_name ="+test2.company_name
                             				)
                             		$("#data4").html(
                             				"date ="+test2.date
                             				)
                             		$("#data5").html(
                             				"time ="+test2.time
                             				)
                             		$("#data6").html(
                             				"time ="+test.time
                             				)
                          				// test 는 내가 달력에서 클릭했을 때 나오는 데이터 값
                          				// test2 는 컨트롤러에서 화면단으로 보내는 데이터 값
                           				
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