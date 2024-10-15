<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>reservationList</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage/reservationList.css" />
   	<link
                rel="stylesheet"
                href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"
     />
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/sidebar/sidebarMypage.css" />
      <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
      <script defer src="${pageContext.request.contextPath}/resources/js/mypage/myPageMain.js"></script>
      <script defer src="${pageContext.request.contextPath}/resources/js/mypage/reservationList.js"></script>

  </head>
  <div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
  <body>
    <div class="hd__inner1100">
      <div class="side-bar-flex">
        <!-- 2.5 사이드 바 -->
        <section class="nav-bar" id="nav-bar">
          <aside class="myPage-sidebar">
       	  	<div> <%@ include file="/WEB-INF/views/common/sidebarMyPage.jsp" %></div>
          </aside>
        </section>
      </div>
      <div class="hd__inner880">
        <section class="summary">
          <h1>안녕하세요. ${myPageDTO.name} 님</h1>
          <div class="summary-lists">
            <div class="summary-item">
              <div class="summary-title">신규 방문 예약</div>
              <div class="summary-count">
                <span class="number">2</span>
                <span class="unit">건</span>
              </div>
            </div>
            <div class="summary-item">
              <div class="summary-title"> 방문 일정</div>
              <div class="summary-count">
                <span class="number">${visitCriteriaCount}</span>
                <span class="unit">건</span>
              </div>
            </div>
          </div>
        </section>
	  	<section id="reservationCalendar">
		  <%@ include file="/WEB-INF/views/common/calendarList.jsp" %>
	  	</section>
        <div class="reservationList">
          <h3 class="reservation-h3-1">예약 내역</h3>

          <div class="sudume-list">
            <a class="company studio">스튜디오</a>
            <div>&nbsp/&nbsp</div>
            <a class="company dress">드레스</a>
            <div>&nbsp/&nbsp</div>
            <a class="company makeUp">메이크업</a>
          </div>
          <section class="reservationList-sudume-middle" id="reservation-section3-1" >
             <c:forEach var="coCriteria" items="${coReStudioList}">
	            <div class="reservationList-visithall-card">

	              <div>
	                <img src="${coCriteria.companyImage.imgUrl}" alt="이미지" />

	              </div>

	              <div class="card-content">

					  <h3>${coCriteria.companyDto.companyName}</h3>
				    <div class="content-body">
	                  <div>
	                    <p>예약자명</p>
	                    <p>날짜</p>
	                    <p>시간</p>
	                  </div>
	                  <div class="inputs">
	                    <p>${coCriteria.myPageDTO.name}</p>
	                    <p><fmt:formatDate value="${coCriteria.reservationDto.reservationDate }" pattern="yyyy-MM-dd"/></p>
	                    <p>${coCriteria.reservationDto.reservationTime }</p>
	                  </div>
	                </div>

	                <div class="content-end">
						<a href="/mypage/reservation-detail?category=${coCriteria.companyDto.category}&companyId=${coCriteria.companyDto.companyId}&${coCriteria.reservationDto.reservationDate}">예약 상세 보러가기>></a>
	                </div>

	              </div>
	            </div>
			 </c:forEach>
          </section>
		  <section class="reservationList-sudume-middle" id="reservation-section4"		  >
			<c:forEach var="coCriteria" items="${coReDressList}">
				<div class="reservationList-visithall-card">

				  <div>
					<img src="${coCriteria.companyImage.imgUrl}" alt="이미지" />

				  </div>

				  <div class="card-content">

					<div class="content-body">
					  <div>
						  <h3>${coCriteria.companyDto.companyName}</h3>
						<p>예약자명</p>
						<p>날짜</p>
						<p>시간</p>
					  </div>
					  <div class="inputs">
						  <h3></h3>
						<p>${coCriteria.myPageDTO.name}</p>
						<p><fmt:formatDate value="${coCriteria.reservationDto.reservationDate }" pattern="yyyy-MM-dd"/></p>
						<p>${coCriteria.reservationDto.reservationTime }</p>
					  </div>
					</div>

					<div class="content-end">
						<a href="/mypage/reservation-detail?category=${coCriteria.companyDto.category}&companyId=${coCriteria.companyDto.companyId}&${coCriteria.reservationDto.reservationDate}">예약 상세 보러가기>></a>
					</div>

				  </div>
				</div>
			</c:forEach>
		  </section>
		  <section class="reservationList-sudume-middle" id="reservation-section3">
			<c:forEach var="coCriteria" items="${coReMakeUpList}">
				<div class="reservationList-visithall-card">
					  <div>
						<img src="${coCriteria.companyImage.imgUrl}" alt="이미지" />
					  </div>

					  <div class="card-content">

						<div class="content-body">
						  <div>
							  <h3>${coCriteria.companyDto.companyName}</h3>
							<p>예약자명</p>
							<p>날짜</p>
							<p>시간</p>
						  </div>
						  <div class="inputs">
							  <h3></h3>
							<p>${coCriteria.myPageDTO.name}</p>
							<p><fmt:formatDate value="${coCriteria.reservationDto.reservationDate}" pattern="yyyy-MM-dd" var="formattedDate"/>${formattedDate}</p>
							<p>${coCriteria.reservationDto.reservationTime }</p>
						  </div>
						</div>
						<div class="content-end">
						  <a href="/mypage/reservation-detail?category=${coCriteria.companyDto.category}&companyId=${coCriteria.companyDto.companyId}&date=${formattedDate}">예약 상세 보러가기>></a>
						</div>

					  </div>

				</div>
			  </c:forEach>
		  </section>
			<div class="reservationList-visithall-top">
				<h3>웨딩홀 방문 예약 내역</h3>
			</div>
			<section class="reservationList-visithall-middle" id="reservation-section1">
				<div class="visitBox"> 현재 방문 예약 건이 없습니다.</div>
				<c:forEach var="hallCriteria" items="${hallVisitReservatioinList}">
					<div class="reservationList-visithall-card">

						<div>
							<img src="${hallCriteria.companyImage.imgUrl}" alt="이미지" />

						</div>

						<div class="card-content">

							<div class="content-body">
								<div>
									<h3>${hallCriteria.companyDto.companyName}</h3>
									<p>예약자명</p>
									<p>날짜</p>
									<p>시간</p>
									<p>인원 수</p>
								</div>
								<div class="inputs">
									<p>${hallCriteria.myPageDTO.name}</p>
									<p><fmt:formatDate value="${hallCriteria.reservationDto.reservationDate }" pattern="yyyy-MM-dd"/></p>
									<p>${hallCriteria.reservationDto.reservationTime }</p>
									<p>${hallCriteria.hallInfoDto.minPeople}</p>
								</div>
							</div>

							<div class="content-end">
								<a href="reservation-detail">예약 상세 보러가기>></a>
							</div>

						</div>
					</div>
				</c:forEach>
			</section>
			<div class="reservationList-top">
				<h3>웨딩홀 예약 내역</h3>
			</div>
			<section class="reservationList-hall-middle" id="reservation-section2" >
				<div class="visitBox"> 현재  예약 건이 없습니다.</div>
				<c:forEach var="hallCriteria" items="${hallReList}">
					<div class="reservationList-visithall-card">

						<div>
							<img src="${hallCriteria.companyImage.imgUrl}" alt="이미지" />
						</div>

						<div class="card-content">

							<div class="content-body">
								<div>
									<h3>${hallCriteria.companyDto.companyName}</h3>
									<p>예약자명</p>
									<p>날짜</p>
									<p>시간</p>
									<p>인원 수</p>
								</div>
								<div class="inputs">
									<h3></h3>
									<p>${hallCriteria.myPageDTO.name}</p>
									<p><fmt:formatDate value="${hallCriteria.reservationDto.reservationDate}" pattern="yyyy-MM-dd"/></p>
									<p>${hallCriteria.reservationDto.reservationTime}</p>
									<p>${hallCriteria.hallInfoDto.minPeople}</p>
								</div>
							</div>

							<div class="content-end">
								<a href="reservation-detail">예약 상세 보러가기>></a>
							</div>

						</div>
					</div>
				</c:forEach>

			</section>
		</div>
	  </div>
	</div>
  </body>
  <div> <%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</html>
