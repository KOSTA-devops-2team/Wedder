<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="resources/css/common/reset.css">
		<link rel="stylesheet" href="resources/css/mypage/calendar.css">
		<script type="text/javascript" 
		src="<c:url value='resources/js/mypage/calendar.js'/>">
		</script>
	</head>
	<body>
		<section class="calendar-container" id="calendar-section1">
			<div class="calendar-header">
				<button id="preBtn"> 이전</button>
				<h2 id="currentMonth"></h2>
				<button id="nextBtn"> 다음</button>
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
		</section>
		
		</body>
</html>