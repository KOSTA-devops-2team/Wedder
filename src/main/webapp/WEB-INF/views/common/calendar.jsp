<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<!-- <link rel="stylesheet" href="resources/css/common/reset.css"> -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/calendar.css">
		
	</head>
	<body>
		<section class="calendar-container" id="calendar-section1">
			<form action="" id="form" class="frm" method="post">
				<div class="calendar-header">
					<button id="prevBtn"> 이전</button>
					<h2 id="currentMonth"></h2>
					<button id="nextBtn"> 다음</button>
				</div>
				<div id="scheduleBtn">
					<button id ="regBtn">일정 추가</button>
					<button id ="delBtn">일정 삭제</button>
				</div>
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
			<script type="text/javascript" 	src="<c:url value='resources/js/mypage/calendar.js'/>" ></script>
		</body>
		<script type="text/javascript">
			$("#regBtn").on("click",function(){
				let form =$("#form");
				form.attr("action","<c:url value="/calendar/write"/>")
				form.attr("method","post")
				
				form.submit()
			})
			
		</script>
</html>