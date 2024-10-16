<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>package</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/package/packageMain.css"/>
    <script defer src="${pageContext.request.contextPath}/resources/js/package/packageMain.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="container hd__inner900">
    <!--1. 패키지 설명-->
    <div class="package-info">
        <h1>패키지</h1>
        <p>스드메 패키지,<br/> 이런 분들께 추천 드려요!</p>
    </div>
    <section class="recommendations">
        <div class="recommendation">
            <img src="resources/images/recommand-pic1.png">
            <h2>합리적인 가격</h2>
            <p>웨딩플래너 없이도 만족하실 수 있는<br>상품들을 투명한 정찰제 시행을 통해 업계 최저 가격으로 구성했어요.</p>
        </div>
        <div class="recommendation">
            <img src="resources/images/recommand-pic2.png">
            <h2>맞춤형 서비스</h2>
            <p>당신만을 위한 맞춤형 웨딩!<br>원하시는 분위기에 맞는 업체들을 한 곳에 모아뒀어요.</p>
        </div>
        <div class="recommendation">
            <img src="resources/images/recommand-pic3.png">
            <h2>편의성</h2>
            <p>모든 웨딩 준비, 한 곳에서 해결하세요!<br>쉽고 빠르게 결혼식을 준비할 수 있도록 패키지를 구성했어요.</p>
        </div>
        <div class="recommendation">
            <img src="resources/images/recommand-pic4.png">
            <h2>프리미엄 패키지</h2>
            <p>프리미엄 패키지를 통해<br>가장 특별한 순간을 놓치지 마세요.<br>한번에 좋은 날씨, 좋은 시간대를 예약할 수 있어요.</p>
        </div>
    </section>

    <!-- 2. 패키지 이용방법 -->
    <section class="package-container">
        <div class="package-title">
            <h1>패키지 이용방법</h1>
            <p>전문가가 선택한 조합,<br>바쁜 예비 부부를 위한 <br>빠르고 간편하게 알아보세요.</p>
        </div>

        <!--패키지 이용방법 단계별 설명-->
        <div class="steps">
            <div class="step-content">
                <img src="resources/images/icon-cart.png" alt="Step 1">
                <div class="step-detail">
                    <h3>Step 1 담기</h3>
                    <p>다양한 패키지 중 취향에 맞는 패키지 장바구니에 담아요.</p>
                </div>
            </div>
            <div class="step-content">
                <img src="resources/images/icon-calander.png" alt="Step 2">
                <div class="step-detail">
                    <h3>Step2 스케줄 예약</h3>
                    <p>원하는 날짜와 시간으로 예약! 궁금한 점도 전달사항에 남길 수 있어요.</p>
                </div>
            </div>
            <div class="step-content">
                <img src="resources/images/icon-payment.png" alt="Step 3">
                <div class="step-detail">
                    <h3>Step3 결제하기</h3>
                    <p>선택한 패키지 확인 후, 최종 혜택가로 결제해요. 결제 방법도 다양해요.</p>
                </div>
            </div>
            <div class="step-content">
                <img src="resources/images/icon-document.png" alt="Step 4">
                <div class="step-detail">
                    <h3>Step4 서비스 이용</h3>
                    <p> 결제한 서비스를 예약한 일정에 맞춰 이용해요. 만족도 평가도 남길 수 있어요.</p>
                </div>
            </div>
        </div>

        <div class="package-btn">
            <button type="button" onclick="location.href='/package/recommend'">패키지 구경하러 가기</button>
        </div>
    </section>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>