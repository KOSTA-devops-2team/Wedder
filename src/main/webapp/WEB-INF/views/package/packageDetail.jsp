<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    Integer customerId =  (Integer) session.getAttribute("customerId");
    String customerEmail = (String) session.getAttribute("customerEmail");
    String customerName = (String) session.getAttribute("customerName");
    String customerTel = (String) session.getAttribute("customerTel");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>package detail</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/package/packageDetail.css"/>
<%--    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>--%>
<%--    <script defer src="${pageContext.request.contextPath}/resources/js/package/packageDetail.js"></script>--%>
<%--    <script defer src="${pageContext.request.contextPath}/resources/js/package/packagePayment.js"></script>--%>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <!-- SweetAlert2 사용 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
</head>
<script>
    var kakaoPayKey = '${paymentKeys.kakaoPayKey}';
    var customerId = '<%= customerId %>';
    var customerEmail = '<%= customerEmail %>';
    var customerName = '<%= customerName %>';
    var customerTel = '<%= customerTel %>';
    var packageDetails = ${packageDetails};
</script>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<script>
    var packageDetails = [];
    <c:forEach var="detail" items="${packageDetails}">
    packageDetails.push({
        companyName: "${detail.companyName}",
        companyCategory: "${detail.companyCategory}"
    });
    </c:forEach>
</script>

<div class="hd__inner960">
    <div class="container">
        <div class="header">
            <h1>${packageDetails[0].description}</h1>
            <h2 class="product-name">${packageDetails[0].packageName}</h2>
        </div>
        <c:forEach var="detail" items="${packageDetails}">
            <div class="service">
                <img src="${detail.imgUrl}" alt="${detail.packageName}">
                <div class="description">
                    <h3>${detail.companyCategory}</h3>
                    <p>${detail.companyName}</p>
                    <p>${detail.companyAddress}</p>
                    <p><fmt:formatNumber value="${detail.basicPrice}" type="number" pattern="#,###"/>원</p>
                </div>
                <div class="action">
                    <button class="heart"></button>
                    <a href="#">리뷰 보러가기</a>
                </div>
            </div>
        </c:forEach>

        <!--패키지 예약 가능일정 확인 -->
        <section class="schedule-available">
            <h2>패키지 예약하기</h2>
            <h4>✔️ 스튜디오, 드레스, 메이크업 업체를 클릭 후 일정을 선택해주세요.</h4>
            <!-- 3.calendar -->
            <section class="calendar" id="payment-detail-section3">
                <div class="calendar-payment-list">
                    <%@ include file="/WEB-INF/views/package/packageCalendar.jsp" %>

                    <div style="display: none" id="getDate">
                        ${date}
                    </div>
                </div>
            </section>
        </section>


        <!-- 가격 안내 부분-->
        <div class="total-title">결제할 금액</div>
        <div class="total">
            <section>
            <div class="total-cost">
                <div class="tag">정상가</div>
                <div class="price"><fmt:formatNumber value="${packagePrice}" type="number" pattern="#,###"/>원</div>
            </div>
            <div class="total-discount">
                <div class="tag">패키지 추가 할인</div>
                <div class="price"><fmt:formatNumber value="${discountPrice}" type="number" pattern="#,###"/>원</div>
            </div>
            <div class="total-final">
                <div class="tag">최종 혜택가</div>
                <div class="final-price"><fmt:formatNumber value="${finalPrice}" type="number" pattern="#,###"/>원</div>
            </div>
            </section>

            <section>
            <div class="choice">
                <div class="choice-box">
                    <div class="saving-price">패키지 구매 시<br>총<fmt:formatNumber value="${discountPrice}" type="number" pattern="#,###"/>원 절약</div>
                    <div class="notice">선택 옵션 변경 시 패키지 혜택이 달라질 수 있습니다.</div>
                </div>
            </div>
            </section>
        </div>

        <div class="btn">
           <button class="back"><a class="main-button" href="${pageContext.request.contextPath}/package/recommend">뒤로 가기</a></button>
            <button class="pay">패키지 결제하기</button>
        </div>
    </div>
</div>
<!-- 스크립트는 body 마지막에 배치하여 DOM 로딩 이후에 실행되도록 -->
<script src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/package/packageDetail.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/package/packagePayment.js"></script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>