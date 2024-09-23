<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>mypage</title>
    <!-- 링크 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage/mypage.css" />	
        <link
                rel="stylesheet"
                href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"
        />
        <link
                rel="stylesheet"
                href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
        />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/sidebar/sidebarMypage.css"/>
    <!-- 스크립트 -->
        <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
        <script defer src="${pageContext.request.contextPath}/resources/js/mypage/mypage.js"></script>
        <script defer src="${pageContext.request.contextPath}/resources/js/mypage/myPageMain.js"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
 <div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
<body>
<div class="myPage-container hd__inner1100">
    <!-- 0. 마이페이지 사이드 바 -->
    <aside class="myPage-sidebar">
    	<div> <%@ include file="/WEB-INF/views/common/sidebarMyPage.jsp" %></div>
    </aside>

    <!-- 1.마이페이지 메인페이지 -->
    <div class="myPage-content hd__inner880">
        <section class="summary">
            <h1>안녕하세요. ${myPageDTO.name} 고객님 </h1>
            <div class="summary-lists">
                <div class="summary-item">
                    <div class="summary-title">신규 방문 예약</div>
                    <div class="summary-count">
                        <span class="number">2</span>
                        <span class="unit">건</span>
                    </div>
                </div>
                <div class="summary-item">
                    <div class="summary-title">오늘 방문 일정</div>
                    <div class="summary-count">
                        <span class="number">${visitCriteriaCount}</span>
                        <span class="unit">건</span>
                    </div>
                </div>
            </div>
        </section>
        <main>
            <!-- 2.프로필 정보 -->
            <section class="profile" id="Mypage-section2">
                <div class="profile-main">
                    <div class="profile-main-image">
                        <img
                                src="${myPageDTO.profileUrl}"
                                alt="프로필 사진"
                        />
                    </div>
                    <div>
                        <div class="profile-name">${myPageDTO.name}</div>
                       	 <div>전화 번호</div>
                        <div class="profile-body">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/phone.png"
                                    alt="휴대폰 로고"
                            />
                            <input type="text" name="phone" id="phone" readonly="readonly" 
                            value="${myPageDTO.phone}" style="font-size: 18px; border: none; margin-top: 12px" 
                            >
                        </div>
                        <div>메일</div>
                        <div class="profile-body">
                            <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/mail.png" alt="메일 로고" />
                            <input type="text" name="mail" readonly="readonly" style="font-size: 18px; border: none"
                            value="${myPageDTO.email}" >
                        </div>
                    </div>
                </div>
            </section>
            <!-- 3.금일 방문 일정 -->
            <section class="visit-plan" id="Mypage-section3">
                <div class="sub-title-header">
                    <div class="sub-title">금일 방문 일정</div>
                    <div class="Reservation-mange-go">
                        <a href="#">방문 일정 상세보기>>></a>
                    </div>
                </div>
                <br>
                <!-- <form action="" id="todayVisitHistoryForm" class="frm" method="post"> -->
	                <table class="table-VSplan">
	                
	                    <thead>
	                    <tr>
	                        <th>스튜디오명</th>
	                        <th>예약자</th>
	                        <th>예약 날짜</th>
	                        <th>예약 시간</th>
	                        <th>상태</th>
	                    </tr>
	                    </thead>
	                    <tbody>
	                    <c:forEach var="visitCriteria" items="${visitCriteriaList}">
		                    <tr>
		                    	<td>${visitCriteria.companyDto.companyName }</td>
		                    	<td>${visitCriteria.myPageDTO.name }</td>
		                    	<td><fmt:formatDate value="${visitCriteria.reservationDto.reservationDate }" pattern="yyyy-MM-dd"/></td>
		                    	<td>${visitCriteria.reservationDto.reservationTime }</td>
		                    	<td>${visitCriteria.historyDto.reservationStatus}</td>
		                    </tr>
	                    </c:forEach> 
	                   
	                    </tbody>
	                </table>
                <!-- </form> -->
            </section>
            <BR></BR><BR></BR>
            <!-- 4.현재 예약 현황 -->
            <section class="recent-reservation" id="Mypage-section4">
                <div class="sub-title-header">
                    <div class="sub-title">현재 예약 현황</div>
                    <div class="Reservation-mange-go">
                        <a href="reservation-list">예약 현황 바로가기>>></a>
                    </div>
                </div>
                <div class="category">웨딩 홀 </div>
                <div class="table-divide">
                	<c:forEach var="companyDto" items="${companyListHall}" >

	                    <div class="table">
	                        <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                    alt="프로필 이미지"
                            />
	                        <div>
	                            <div>${companyDto.companyName}</div>
	                            <div>${companyDto.companyAddress}</div>
	                            <div class="button-list">
	                                <button  class="mail" href="#"></button>
	                                <button  class="heart liked"></button>
	                            </div>
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
                <div class="tabs">
                    <div id="horizontal-underline"></div>
                    <div class="tab" id="studio" data-tab="tab1">스튜디오</div>
                    <div class="tab" id="dress" data-tab="tab2">드레스</div>
                    <div class="tab" id="makeUp" data-tab="tab3">메이크업</div>
                </div>
                <div class="content">
                    <div class="studio brand" >
                    	<div class="tab-content" id="tab1">
	                        <c:forEach var="companyDto" items="${companyListStudio}" >
			                    <div class="table">
			                        <img
		                                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
		                                  alt="프로필 이미지"
		                         	/>

			                        <div>
			                            <div>${companyDto.companyName}</div>
			                            <div>${companyDto.companyAddress}</div>
			                            <div class="button-list">
			                                <button  class="mail" href="#"></button>
			                                <button  class="heart liked"></button>
			                            </div>
			                        </div>
			                    </div>
	                    	</c:forEach>
                    	</div>
                    	<div class="tab-content" id="tab2">
	                        <c:forEach var="companyDto" items="${companyListDress}" >
			                    <div class="table">
			                        <img
		                                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
		                                  alt="프로필 이미지"
		                         	/>

			                        <div>
			                            <div>${companyDto.companyName}</div>
			                            <div>${companyDto.companyAddress}</div>
			                            <div class="button-list">
			                                <button  class="mail" href="#"></button>
			                                <button  class="heart liked"></button>
			                            </div>
			                        </div>
			                    </div>
	                    	</c:forEach>
                    	</div>
                    	<div class="tab-content" id="tab3">
	                        <c:forEach var="companyDto" items="${companyListMake}" >
			                    <div class="table">
			                        <img
		                                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
		                                  alt="프로필 이미지"
		                         	/>

			                        <div>
			                            <div>${companyDto.companyName}</div>
			                            <div>${companyDto.companyAddress}</div>
			                            <div class="button-list">
			                                <button  class="mail" href="#"></button>
			                                <button  class="heart liked"></button>
			                            </div>
			                        </div>
			                    </div>
	                    	</c:forEach>
                    	</div>
                        <script type="text/javascript">
	                        $(document).ready(function(){
	                        	$(".tab").on("click",function(){

	                        		$(".tab").removeClass("onTab");
	                        		$(".tab-content").addClass("hidden");

	                        		//현재 클릭한 탭만
	                        		$(this).addClass("onTab");

	                        		var target=$(this).attr("data-tab");
	                        		$("#" + target).removeClass("hidden");
	                        	})
	                        })
                        </script>
                    </div>
                </div>
            </section>
        </main>
    </div>
</div>
</body>
<div> <%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</html>
