<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>packageList</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/package/packageRecommend.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/header/header.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/pagination/pagination.css"/>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<%--    <script defer src="${pageContext.request.contextPath}/resources/js/pagination/pagination.js"></script>--%>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="hd__inner1100">
    <!--BestPackage-->
    <section class="package-section">
        <div class="pack-title">
            <p>Best Package</p>
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
                        <a class="detail" href="${pageContext.request.contextPath}/package/${BestPackage.packageId}/detail">상품
                            자세히 보기 &#62;</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>

    <!--MD Pick-->
    <section class="package-section">
        <div class="pack-title">
            <p>MD Pick</p>
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
                        <a class="detail" href="${pageContext.request.contextPath}/package/${MDPickPackage.packageId}/detail">상품
                            자세히 보기 &#62;</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>

    <!-- 패키지 검색 -->
    <section class="bot package-section">
        <div class="pack-title">
            <p>스드메 패키지</p>
        </div>
        <div class="range">
            <div class="price-title">금액대</div>
            <!-- 검색 영역 -->
            <div class="header-search-form">
                <form class="search-box" action="" method="get">
                    <input class="search-txt" type="text" name="" placeholder="검색어를 입력하세요.">
                    <button class="search-btn" type="submit">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </form>
                <form class="form-container">
                    <div></div>
                    <div class="form-text">
                        <input type="text" id="autoComplete"/>
                    </div>
                    <button type="submit" class="btn_search">
                        <img src="https://image.hago.kr/dev/main/pc/pc_search.svg" alt="search"/>
                    </button>
                </form>
            </div>
            <div class="price-range">
                <button class="btn-price" data-min="0" data-max="3000000">300만원↓</button>
                <button class="btn-price" data-min="3000000" data-max="5000000">300만원~500만원</button>
                <button class="btn-price" data-min="5000000" data-max="7000000">500만원~700만원</button>
                <button class="btn-price" data-min="7000000" data-max="9000000">700만원~900만원</button>
                <button class="btn-price" data-min="9000000" data-max="999999999">900만원↑</button>
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
            <p class="cost"><fmt:formatNumber value="${finalPrice}" type="number" pattern="#,###"/></p>
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