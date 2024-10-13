<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>packageList</title>
    <!-- Swiper CSS & JS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/package/packageRecommend.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/header/header.css"/>
    <%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/package/packageMain.css"/>--%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://kit.fontawesome.com/your-kit-code.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- SweetAlert2 사용 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>

</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="swiper-container">
    <div class="swiper-wrapper">
        <!-- 첫 번째 배너 -->
        <div class="swiper-slide">
            <div class="package-top-banner-1">
                <div class="package-main-content hd__inner1100">
                    <div class="second-title">웨딩 박람회보다 더 합리적인 결혼준비</div>
                    <div class="first-title">'스드메 상품'은 어디서 계약하시더라도 동일한 구성입니다.<br>
                        단지 '플래너 수수료'를 얼마나 책정하느냐에 따라 소비자 가격이 달라질 뿐이죠.
                    </div>
                    <div class="third-title">
                        wedder는 투명한 정찰제를 통해 업계 최저가격을 제공합니다.
                    </div>
                    <%--                    <a class="package-show-button" href="${pageContext.request.contextPath}/package/recommend">스드메 패키지 구경하기</a>--%>
                </div>
<%--                <img class="banner-coin"--%>
<%--                     src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/main/package/package_banner_coin.png"--%>
<%--                     alt="커뮤니티 배너 1"/>--%>
                    <img class="banner-gift" src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/main/package/package_banner_gift.png" alt="커뮤니티 배너 1" />
            </div>
        </div>

        <!-- 두 번째 배너 -->
        <div class="swiper-slide">
            <div class="package-top-banner-2">
                <div class="package-main-content hd__inner1100">
                    <div class="second-title">🔎 내 마음대로 견적서 생성 🔎</div>
                    <div class="first-title">직접 '스/드'메'를 조합하여 최저가 견적을 낼 수 있어요.<br>계약 이후에는 Wedder에서 웨딩 플래너 역할을 대신해 모든 일을
                        처리해드려요.
                    </div>
                    <div class="third-title-2">기본부터 업체별 옵션까지, 상세한 견적서를 확인해보세요.<a class="package-show-button estimate">견적
                        확인하러 가기</a></div>
                </div>
            </div>
        </div>
    </div>

    <!-- 페이지네이션 -->
    <div class="swiper-pagination"></div>

    <!-- 화살표 -->
    <div class="swiper-prev swiper-button-prev"></div>
    <div class="swiper-next swiper-button-next"></div>
</div>
<div class="hd__inner1100">
    <!--BestPackage-->
    <section class="package-section">
        <div class="pack-title">
            <p>베스트셀러 패키지, TOP4!</p>
        </div>
        <div class="grid-top">
            <c:forEach var="BestPackage" items="${BestPackages}">
                <div class="grid">
                    <div class="package-picture">
                        <img src="${BestPackage.packageImg}" alt="${BestPackage.packageName}">
                    </div>
                    <div class="top-con">
                        <div class="content">
                            <img src="${BestPackage.studioImgUrl}" alt="${BestPackage.packageImg}">
                            <div class="content-detail">
                                <p class="up">스튜디오 | ${BestPackage.studioName}</p>
                                    <%--                                    <p class="down">[웨딩촬영] ${MDPickPackage.studioDetail}</p>--%>
                            </div>
                        </div>
                        <div class="content">
                            <img src="${BestPackage.dressImgUrl}" alt="${BestPackage.packageImg}">
                            <div class="content-detail">
                                <p class="up">드레스 | ${BestPackage.dressName}</p>
                                    <%--                                    <p class="down">[촬영+본식] ${MDPickPackage.dressDetail}</p>--%>
                            </div>
                        </div>
                        <div class="content-bottom">
                            <img src="${BestPackage.makeupImgUrl}" alt="${BestPackage.packageImg}">
                            <div class="content-detail">
                                <p class="up">헤어/메이크업 | ${BestPackage.makeupName}</p>
                                    <%--                                    <p class="down">[촬영+본식] ${MDPickPackage.makeupDetail}</p>--%>
                            </div>
                        </div>
                        <a class="detail"
                           href="${pageContext.request.contextPath}/package/${BestPackage.packageId}/detail">상품 자세히 보기
                            &#62;</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>

    <!--MD Pick-->
    <section class="package-section">
        <div class="pack-title">
            <p>MD가 엄선한 특별한 패키지, 지금 만나보세요!</p>
        </div>
        <div class="grid-top">
            <c:forEach var="MDPickPackage" items="${MDPickPackages}">
                <div class="grid">
                    <div class="package-picture">
                        <img src="${MDPickPackage.packageImg}" alt="${MDPickPackage.packageName}">
                    </div>
                    <div class="top-con">
                        <div class="content">
                            <img src="${MDPickPackage.studioImgUrl}" alt="스튜디오 이미지">
                            <div class="content-detail">
                                <p class="up">스튜디오 | ${MDPickPackage.studioName}</p>
                                    <%--                                    <p class="down">[웨딩촬영] ${MDPickPackage.studioDetail}</p>--%>
                            </div>
                        </div>
                        <div class="content">
                            <img src="${MDPickPackage.dressImgUrl}" alt="드레스 이미지">
                            <div class="content-detail">
                                <p class="up">드레스 | ${MDPickPackage.dressName}</p>
                                    <%--                                    <p class="down">[촬영+본식] ${MDPickPackage.dressDetail}</p>--%>
                            </div>
                        </div>
                        <div class="content-bottom">
                            <img src="${MDPickPackage.makeupImgUrl}" alt="메이크업 이미지">
                            <div class="content-detail">
                                <p class="up">헤어/메이크업 | ${MDPickPackage.makeupName}</p>
                                    <%--                                    <p class="down">[촬영+본식] ${MDPickPackage.makeupDetail}</p>--%>
                            </div>
                        </div>
                        <a class="detail"
                           href="${pageContext.request.contextPath}/package/${MDPickPackage.packageId}/detail">상품
                            자세히 보기 &#62;</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>

    <!-- 패키지 검색 -->
    <section class="bot package-section">
        <div class="pack-title">
            <p>예산에 맞는 패키지를 구경해보세요</p>
        </div>
        <div class="range search">
            <div class="price-range">
                <%--                <div class="price-title">금액대</div>--%>
                <button class="btn-price" data-min="0" data-max="3000000">300만원↓</button>
                <button class="btn-price" data-min="3000000" data-max="5000000">300만원~500만원</button>
                <button class="btn-price" data-min="5000000" data-max="7000000">500만원~700만원</button>
                <button class="btn-price" data-min="7000000" data-max="9000000">700만원~900만원</button>
                <button class="btn-price" data-min="9000000" data-max="999999999">900만원↑</button>
            </div>
            <div class="search-condition">
                <form class="search-container">
                    <div>
                        <input type="text" id="autoComplete" class="search-bar" placeholder="업체명으로 검색">
                    </div>
                    <button type="submit" class="search-btn">
                        <img id="search-icon"
                             src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/search-icon.png"
                             alt="search"/>
                    </button>
                </form>
            </div>
        </div>
        <!-- 패키지 검색 결과 -->
        <div class="package-search-container">
            <c:forEach var="AllPackage" items="${AllPackages}">
                <div class="grid-content">
                    <div class="grid-pic">
                        <img src="${AllPackage.packageImg}" alt="패키지 이미지">
                    </div>
                    <p class="name">${AllPackage.studioName} + ${AllPackage.dressName} + ${AllPackage.makeupName}</p>
                        <%--                    <p class="cost"><fmt:formatNumber value="${finalPrice}" type="number" pattern="#,###"/></p>--%>
                </div>
            </c:forEach>
        </div>
    </section>
</div>
<%--<div id="pagination-placeholder"></div>--%>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/package/packageRecommend.js"></script>
</body>
</html>