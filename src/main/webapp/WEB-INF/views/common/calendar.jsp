<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>    

    
<!DOCTYPE html>
<html>

	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/calendar.css">
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	</head>
	
	<body>
	
	<script type="text/javascript">
	
	</script>
	
	<div class="container">
	 	<h2 class="writing-header">일정 ${mode=="new"?"등록" : "확인" }</h2>
	 	<form action="" id ="calendarForm" class="frm" method="post">
			<!--
			넘겨야 되는 정보값
			고객 정보, 회사 정보
			1. 일정 명 (업체에서 studio, makeup, dress에서 detail쪽으로 너 
			2. 일정 날짜 (당일 일정 calendarList에서 클릭한 일정 일정추가 시 데이터 들어옴) 
			3.예약한
			
			
			  -->	 		
	 	</form>
	</div>
	
	
	</body>
</html>