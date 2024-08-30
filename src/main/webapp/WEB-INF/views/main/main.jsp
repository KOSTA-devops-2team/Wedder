<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Wedder</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/main.css"/>
</head>
<body>
<div><%@ include file="/WEB-INF/views/common/header.jsp" %></div>
<!-- 1. 메인 -->
<section class="main" id="section1">
    <div class="main-content">
        <h1>간편하게 비교하자<br/>웨딩서비스 비교견적</h1>
        <h3>
            투명한 가격공개를 통해 원하는 예산으로 완벽한 결혼식
            준비해요!
        </h3>
    </div>
</section>

<!-- 2. 웨딩홀 -->
<section class="hall hd__inner900" id="section5">
    <div class="hall-container">
        <div>
            <div class="common-title">
                <h1>웨딩홀</h1>
                <p>
                    여러 웨딩홀의 조건을<br/>1분 만에
                    <br/>확인해보세요
                </p>
            </div>
            <div class="hall-subtitle">
                <div class="hall-subtitle-item">
                    <span>선택의 폭은</span>
                    <span>넓게,</span>
                </div>
                <div class="hall-subtitle-item">
                    <span>원하는 것을</span>
                    <span style="color: #8b95a1">쉽게,</span>
                </div>
                <div class="hall-subtitle-item">
                    <span>가격은</span>
                    <span style="color: #d1d6db">투명하게.</span>
                </div>
                <p>
                    앉은 자리에서 지역, 날짜, 예산, 분위기를 선택해서
                    <br/>내게 꼭 맞는 웨딩홀을 찾아보세요. <br/>
                    야외, 소규모웨딩 모두 가능해요.
                </p>
            </div>
        </div>
        <div class="hall-image">
            <img
                    style="width: 430px"
                    src="resources/images/003.png"
                    alt="웨딩홀 선택하는 이미지"
            />
        </div>
    </div>
    <div class="main-btn">
        <a
                href="WEB-INF/views/company/weddinghall/weddingHallList.jsp"
                class="main-button"
        >
            웨딩홀 구경하러 가기
        </a>
    </div>
</section>

<!-- 3. 스드메 패키지 -->
<section class="package" id="section2">
    <div class="hd__inner900">
        <div class="common-title">
            <h1>패키지</h1>
            <p>
                전문가가 선택한 실패 없는 조합, <br/>
                바쁜 예비 부부를 위한 <br/>빠르고 간편한 솔루션
            </p>
        </div>

        <div class="package-item">
            <div class="package-content">
                <h2>내 취향에 맞게</h2>
                <p>
                    선택한 웨딩을 분위기에 어울리는 최고의 스튜디오,
                    드레스, 메이크업 업체를 한곳에 모아보았어요.
                </p>
            </div>
            <img
                    class="package-img"
                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/main/main-package1-1.png"
                    alt="패키지 이미지 1"
            />
        </div>

        <div class="package-item">
            <img
                    class="package-img"
                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/main/main-package2-1.png"
                    alt="패키지 이미지 2"
            />
            <div class="package-content">
                <h2>합리적인 가격으로</h2>
                <p>
                    너무 복잡하기만 한 결혼준비, <br/>
                    결혼준비 초보라도 이해하기 쉽게 최저가로 구성했어요!
                </p>
            </div>
        </div>

        <div class="package-item">
            <div class="package-content">
                <h2>프리미엄 패키지</h2>
                <p>
                    성수기 황금시간대와 특화 패키지를 통해 가장 특별한
                    순간을 놓치지 마세요. <br/>프리미엄 패키지로 좋은
                    날씨, 좋은 시간대에 예약할 수 있어요.
                </p>
            </div>
            <img
                    class="package-img"
                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/main/main-package3-1.png"
                    alt="패키지 이미지 3"
            />
        </div>

        <div class="main-btn">
            <a
                    href=WEB-INF/views/package/packageMain.jsp"
                    class="main-button"
            >
                패키지 구경하러 가기
            </a>
        </div>
    </div>
</section>

<!-- 4. 견적서 -->
<section class="estimate hd__inner900" id="section4">
    <div class="common-title">
        <h1>견적서</h1>
        <p>
            맞춤형 스드메 견적, <br/>
            원하는 업체와 옵션을 골라서 <br/>
            견적을 무료로 알아보세요.
        </p>
    </div>
    <div class="estimate-items">
        <div class="estimate-item">
            <img
                    src="${pageContext.request.contextPath}/resources/images/section-compare2.png"
                    alt="원하는 업체와 옵션"
            />
            <h3>원하는 업체와 옵션</h3>
            <p>
                언제 어디서든, 원할 때 간편하게 원하는 업체와 옵션을
                골라서 견적을 낼 수 있어요.
            </p>
        </div>
        <div class="estimate-item">
            <img
                    src="${pageContext.request.contextPath}/resources/images/section-estimate2.png"
                    alt="견적함에 담기"
            />
            <h3>견적함에 담기</h3>
            <p>
                마음에 드는 견적을 마이페이지의 견적함에 담아 나중에
                비교하거나 참고할 수 있어요.
            </p>
        </div>
        <div class="estimate-item">
            <img
                    src="${pageContext.request.contextPath}/resources/images/section-share1.png"
                    alt="공유"
            />
            <h3>공유</h3>
            <p>
                견적을 배우자와 함께 커플페이지에서 공유하고 의논해봐요.
            </p>
        </div>
        <div class="estimate-item">
            <img
                    src="${pageContext.request.contextPath}/resources/images/section-pay1.png"
                    alt="바로 결제"
            />
            <h3>바로 결제</h3>
            <p>
                원하는 견적이 바로 나왔다면 즉시 결제하여 예약을 확정할
                수 있어요.
            </p>
        </div>
    </div>
    <div class="main-btn">
        <a
                href="WEB-INF/views/estimate/estimteCompany.jsp"
                class="main-button"
        >
            견적 확인하러 가기
        </a>
    </div>
</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
</body>
</html>

