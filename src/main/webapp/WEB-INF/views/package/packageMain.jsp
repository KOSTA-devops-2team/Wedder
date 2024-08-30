<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>packagemain</title>
    <!-- 링크 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/package/packageMain.css"/>
    <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.3.1/swiper-bundle.css"/>"/>
    <!-- 스크립트 -->
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/package/packageMain.js"></script>
    <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.3.1/swiper-bundle.min.js"/>"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="slider-box">
        <!-- 슬라이더 메인 컨테이너 -->
        <div class="swiper">
            <div class="swiper-wrapper">
                <!-- 슬라이드 -->
                <div class="swiper-slide">
                    <div class="banner-slide">
                        <div class="banner-content">
                            <div class="banner-bold">
                                웨딩 카페보다<br>웨딩 박람회보다 더 싸게<br>결혼준비를 할 수 있어요.
                            </div>
                            <div class="banner-text1">
                                <p>'스드메 상품'은 어디서 계약하시더라도 동일한 구성입니다.</p>
                                <p>단지 '플래너 수수료'를 얼마나 책정하느냐에 따라 소비자 가격이 달라질 뿐이죠.</p>
                            </div>
                            <div class="banner-text1">
                                <p>wedder는 기존 '웨딩플래너 역할'은 그대로 제공해드리면서</p>
                                <p><span class="color">투명한 정찰제</span>로 업계 <span class="color">최저가격</span>을 선보입니다.</p>
                            </div>
                            <div class="banner-text1">
                                <p>이제 결혼준비 시장도 투명하게 바뀔 때가 되지 않았나요? Wedder가 앞장섭니다!</p>
                            </div>
                        </div>
                        <div class="icon">
                            <img class="gift" src="resources/assets/images/gift.png">
                            <img class="coin" src="resources/assets/images/coin.png">
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="banner-slide">
                        <div class="banner-content2">
                            <div class="banner-text2">
                                <p>누적 판매수 <span class="color">110만회</span></p>
                                <p>누적 회원수<span class="color"> 67만명</span></p>
                                <p>예랑, 예신들의 이유 있는 선택</p>
                                <p>요즘 웨딩의 모든 것, <span class="color">Wedder</span></p>
                                <p>지금 가입하고 혜택 받으세요!</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="banner-slide">
                        <div class="banner-content2">
                            <div class="banner-text3">
                                <p>내 마음대로 견적서 생성</p>
                                <p>직접 '스/드'메'를 조합하여 최저가 견적을 낼 수 있어요.</p>
                                <p>1.'스/드/메'카테고리별로 원하는 상품을 선택하세요.</p>
                                <p>2. '드/메'만 필요하시다면? '드/메' 상품만 선택하세요.</p>
                                <p>3. '견적확인' 버튼을 누르면 금액을 확인할 수 있어요.</p>
                                <p>4. 자세히보기를 클릭하시면 상세한 상품분석을 확인하실 수 있어요!</p>
                                <p>5. 계약 이후에는 Wedder에서 웨딩 플래너 역할을 대신해 모든 일을 처리해드려요.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 슬라이드 페이지 -->
            <div class="swiper-pagination"></div>
            <!-- 화살표 -->
            <div class="swiper-prev"></div>
            <div class="swiper-next"></div>
        </div>
    </div>
    <div class="container">
        <div class="notice">스드메 패키지,<br/> 이런 분들께 <span class="color">추천</span>드려요!</div>
        <div class="recommendations">
            <div class="recommendation">
                <img src="resources/assets/images/recommand-pic1.png">
                <div class="recommand-detail">
                    <div class="recommand-title">
                        <span class="circle">1</span>
                        <h2>합리적인 가격</h2>
                    </div>
                    <p>웨딩플래너 없이도 만족하실 수 있는<br>상품들을 투명한 정찰제 시행을 통해<br>업계 최저 가격으로 구성했어요.</p>
                </div>
            </div>
            <div class="recommendation">
                <img src="resources/assets/images/recommand-pic2.png">
                <div class="recommand-detail">
                    <div class="recommand-title">
                        <span class="circle">2</span>
                        <h2>맞춤형 서비스</h2>
                    </div>
                    <p>당신만을 위한 맞춤형 웨딩!<br>원하시는 분위기에 맞는 업체들을<br>한 곳에 모아뒀어요.</p>
                </div>
            </div>
            <div class="recommendation">
                <img src="resources/assets/images/recommand-pic3.png">
                <div class="recommand-detail">
                    <div class="recommand-title">
                        <span class="circle">3</span>
                        <h2>편의성</h2>
                    </div>
                    <p>모든 웨딩 준비, 한 곳에서 해결하세요!<br>쉽고 빠르게 결혼식을 준비할 수 있도록<br>패키지를 구성했어요.</p>
                </div>
            </div>
            <div class="recommendation">
                <img src="resources/assets/images/recommand-pic4.png">
                <div class="recommand-detail">
                    <div class="recommand-title">
                        <span class="circle">4</span>
                        <h2>프리미엄 패키지</h2>
                    </div>
                    <p>프리미엄 패키지를 통해<br>가장 특별한 순간을 놓치지 마세요.<br>한번에 좋은 날씨, 좋은 시간대를<br>예약할 수 있어요.</p>
                </div>
            </div>
        </div>

        <!-- 이용방법 -->
        <div class="step-title">
            <div class="step-name">패키지 이용방법</div>
        </div>
        <div class="step-title">
            <p>전문가가 선택한 실패 없는 조합,</p>
            <p>바쁜 예비 부부를 위한 빠르고 간편한 솔루션 이용방법</p>
        </div>
        <div class="step">
            <div class="step-content">
                <img src="resources/assets/images/icon-cart.png" alt="Step 1">
                <div class="step-detail">
                    <p class="title">step 1 담기</p>
                    <p>다양한 패키지 중<br>취향에 맞는 패키지 장바구니에 담아요.</p>
                </div>
            </div>
            <div class="step-content">
                <img src="resources/assets/images/icon-calander.png" alt="Step 2">
                <div class="step-detail">
                    <p class="title">step2 스케줄 예약</p>
                    <p>원하는 날짜와 시간으로 예약!<br>궁금한 점도 전달사항에 남길 수 있어요.</p>
                </div>
            </div>
            <div class="step-content">
                <img src="resources/assets/images/icon-payment.png" alt="Step 3">
                <div class="step-detail">
                    <p class="title">step3 결제하기</p>
                    <p>선택한 패키지 확인 후,<br>최종 혜택가로 결제해요.<br>결제 방법도 다양해요.</p>
                </div>
            </div>
            <div class="step-content">
                <img src="resources/assets/images/icon-document.png" alt="Step 4">
                <div class="step-detail">
                    <p class="title">step4 서비스 이용</p>
                    <p>결제한 서비스를 예약한 일정에 맞춰 이용해요.<br>만족도 평가도 남길 수 있어요.</p>
                </div>
            </div>
        </div>

        <!-- 패키지 -->
        <div class="packages">
            <div class="package-title">
                <div class="package-best">Best Package</div>
                <div class="package-watch"><a href="resources/html/Package/packageRecommand.html">패키지 구경하기 →</a></div>
            </div>
            <div class="package-list">
                <div class="package-content">
                    <img src="resources/assets/images/bestPackage1.png" alt="Package 1">
                    <h3>화보 속 그 패키지</h3>
                    <p>S스튜디오 + 엔조최재훈 + 밈</p>
                </div>
                <div class="package-content">
                    <img src="resources/assets/images/bestPackage2.png" alt="Package 2">
                    <h3>화보 속 그 패키지</h3>
                    <p>줄리의정원 + 펠리스노비아 + 이경민포레</p>
                </div>
                <div class="package-content">
                    <img src="resources/assets/images/bestPackage3.png" alt="Package 3">
                    <h3>화보 속 그 패키지</h3>
                    <p>세미앙 + 모네뜨아르 + 제이와이</p>
                </div>
                <div class="package-content">
                    <img src="resources/assets/images/bestPackage4.png" alt="Package 4">
                    <h3>화보 속 그 패키지</h3>
                    <p>페레스튜디오 + 안나스포사 + 빈헤어</p>
                </div>
            </div>
        </div>
    </div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>