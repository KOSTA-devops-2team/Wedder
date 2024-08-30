<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>customerList</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/customerList.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/sidebar/sidebarAdmin.css"/>
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/admin/customerList.js"></script>
</head>
<body>
<div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
<div class="admin-container hd__inner1100">
    <aside class="myPage-sidebar">
        <div><%@ include file="/WEB-INF/views/common/sidebarAdmin.jsp" %></div>
    </aside>

    <main class="admin-content">
        <!-- 1. 상단 요약 섹션 -->
        <section class="summary">
            <h1>안녕하세요. 마리아쥬스퀘어 관리자님 🙌</h1>
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
                        <span class="number">3</span>
                        <span class="unit">건</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- 2. 고객 예약 관리 -->
        <section class="customer-management">
            <h2>고객 예약 관리</h2>
            <p class="customer-management-info">
                ✔️ 날짜, 예약자명 전화번호를 통해 1년 간의 예약 현황을
                확인할 수 있습니다.
            </p>

            <!-- 2-1. 고객 검색 -->
            <section class="customer-search">
                <div class="calendar">
                    <span>선택한 날짜가 표시됩니다.</span>
                    <img src="${pageContext.request.contextPath}/resources/assets/images/calendar-color.png"/>
                </div>
                <div class="name-phone">
                    <span>예약자명, 전화번호를 입력해주세요</span>
                    <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/search-icon.png"/>
                </div>
            </section>

            <!-- 2-2. 방문 고객 리스트 -->
            <div class="visit-detail-container">
                <a href="${pageContext.request.contextPath}/customerDetail.jsp">
                    <div class="visit-details">
                        <div class="visit-time">
                            <div>하우스홀</div>
                            <div class="visit-true">12:00</div>
                        </div>
                        <div class="visit-customer-info">
                            <div class="customer-1">
                                👰🏻‍♀️ <span class="name">박혜원</span>
                                <span class="phone">010-9917-5026</span>
                            </div>
                            <div class="customer-2">
                                🤵🏻 <span class="name">이정원</span>
                                <span class="phone">010-5454-9395</span>
                            </div>
                            <div class="payment-email-true">결제 안내 메일 발송 완료</div>
                        </div>
                        <div class="wedding-info">
                            <div>
                                <span>예상 하객수</span>
                                <span>200명 ~ 300명</span>
                            </div>
                            <div>
                                <span>희망 예식일</span>
                                <span>2024-11-23 토요일</span>
                            </div>
                            <!-- 2-3. 전달사항 더보기 & 닫기-->
                            <div class="announcement">
                                <span>전달 사항</span>
                                <div class="text-wrapper">
                                    <p class="text">
                                        2024년 10월 15일 오후 2시에 예식을
                                        진행하고자 합니다. 예상 인원은 250명
                                        정도이며, 예산은 300만원 내외로
                                        생각하고 있습니다. 특별히 꽃장식과
                                        사진 촬영을 부탁드리고 싶습니다.
                                        예약 가능 여부와 세부사항, 추가 비용
                                        등에 대해 상담하고 싶습니다.
                                    <div class="more-text">더보기</div>
                                    <div class="less-text">닫기</div>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <div class="visit-details">
                    <div class="visit-time">
                        <div>채플홀</div>
                        <div class="visit-false">16:00</div>
                    </div>
                    <div class="visit-customer-info">
                        <div class="customer-1">
                            👰🏻‍♀️ <span class="name">사임당</span>
                            <span class="phone">010-1224-5678</span>
                        </div>
                        <div class="customer-2">
                            🤵🏻 <span class="name">이순신</span>
                            <span class="phone">010-2222-2222</span>
                        </div>
                        <div class="payment-email-false">결제 안내 메일 미발송</div>
                    </div>
                    <div class="wedding-info">
                        <div>
                            <span>예상 하객수</span>
                            <span>200명 ~ 300명</span>
                        </div>
                        <div>
                            <span>희망 예식일</span>
                            <span>2024-11-23 토요일</span>
                        </div>
                        <!-- 2-3. 전달사항 더보기 & 닫기-->
                        <div class="announcement">
                            <span>전달 사항</span>
                            <div class="text-wrapper">
                                <p class="text">
                                    2024년 10월 15일 오후 2시에 예식을
                                    진행하고자 합니다. 예상 인원은 250명
                                    정도이며, 예산은 300만원 내외로
                                    생각하고 있습니다. 특별히 꽃장식과
                                    사진 촬영을 부탁드리고 싶습니다.
                                    예약 가능 여부와 세부사항, 추가 비용
                                    등에 대해 상담하고 싶습니다.
                                <div class="more-text">더보기</div>
                                <div class="less-text">닫기</div>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</div>
<div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</body>
</html>
