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
	<style type="text/css">
		.container{
		 width: 400px;
		}
		.frm {
		display: flex;
		flex-direction: column;
		
		}
	</style>
	
	</head>
	
	<body>
	
	<script type="text/javascript">
	let msg = "${msg}"
	if(msg == "WRT_ERR") alert("게시물 등록에 실패하였습니다. 다시 시도해 주세요.")
	if(msg == "MOD_ERR") alert("게시물 수정에 실패하였습니다. 다시 시도해 주세요.")
	
	$(document).ready(function() {
		//let schedule_id=1
		//let schedule_id =$("input[name=schedule_id]").val()
		
		//보드 목록 버튼 
		$("#listBtn").on("click",function(){
			location.href="<c:url value="/calendar/list${searchItem.queryString}"/>"
		})
		//게시물 제거 버튼 
		$("#removeBtn").on("click",function(){
			let form=$("#calendarForm")
			form.attr("action","<c:url value="/calendar/remove${searchItem.queryString}"/>")
			form.attr("method","post")
			form.submit()
		})
		$("#writeBtn").on("click",function(){
			let form=$("#calendarForm");
			form.attr("action","<c:url value="/calendar/write"/>")
			form.attr("method","post")
			form.submit()
			
			showDate()
			showTime()
		//	dateValue()
		})	
		
	})
	
	function showDate(){
		let dateValue =document.getElementById("dateInput").value;
		console.log("선택한 날짜: "+ dateValue);
		console.log("선택한 날짜: "+typeof dateValue);
	}
	
	function showTime(){
		let dateTime =document.getElementById("timeInput").value;
		console.log("선택한 시간: "+dateTime);
		console.log("선택한 시간 타입:"+typeof dateTime);
	}
	//EL 태그로 가져온 값과 타입을 알 수 있는 방법
		function dateValue(){
//			let schedule_id =${companyScheduleDto.scheduleId}
//			let company_id = ${companyScheduleDto.companyId}
//			let company_name= ${companyScheduleDto.companyName }
//			let Date= ${companyScheduleDto.date }
//			let time= ${companyScheduleDto.time }
			
			console.log("EL로 전달된 값: " + scheduleId);
		    console.log("값의 타입: " + typeof scheduleId);
		    
			console.log("EL로 전달된 값: " + companyId);
		    console.log("값의 타입: " + typeof companyId);
		    
			//console.log("EL로 전달된 값: " + company_name);
		    //console.log("값의 타입: " + typeof company_name);
		    
			//console.log("EL로 전달된 값: " + Date);
		    //console.log("값의 타입: " + typeof Date);
		    
			//console.log("EL로 전달된 값: " + time);
		    //console.log("값의 타입: " + typeof time);
		}
	
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
  			<%-- 스케 아이디<input type="hidden" name="schedule_id" value="${companyScheduleDto.schedule_id}"/><br/> --%>
  			회사 아이디<input type="text" name="company_id" value="${companyScheduleDto.companyId}"/>
			회사 이름<input type="text" name="company_name" value="${companyScheduleDto.companyName}"/>
			날짜<input type="date" name="date" id="dateInput" value="<fmt:formatDate value="${companyScheduleDto.date}" pattern="yyyy-MM-dd"/>"/>
			시간<input type="time" name="time" id="timeInput" value="${companyScheduleDto.time}"/><br>
		
			<c:if test="${mode eq 'new'}">
				<button type="button" id="writeBtn" class=" btn btn-write"><i class="fa fa-pencil-alt" aria-hidden="true"></i>등록</button>
			</c:if>
			<c:if test="${mode ne 'new' }">
				<button type="button" id="writeNewBtn" class="btn btn-write"><i class="fa fa-pencil-alt" aria-hidden="true"></i>글쓰기</button>
			</c:if>	
			<br>
			<button type="button" id="removeBtn" class="btn btn-remove"><i class="fa fa-trash" aria-hidden="true"></i>삭제</button><br/>
			<button type="button" id="listBtn" class="btn btn-list"><i class="fa fa-bars" aria-hidden="true"></i>목록</button><br/>
	 	</form>
	</div>
	
	
	</body>
</html>