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
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
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
                            <img src="${BestPackage.packageImg}" alt="${BestPackage.packageImg}">
                            <div class="content-detail">
                                <p class="up">스튜디오 | ${BestPackage.studioName}</p>
                                    <%--                                    <p class="down">[웨딩촬영] ${MDPickPackage.studioDetail}</p>--%>
                            </div>
                        </div>
                        <div class="content">
                            <img src="${BestPackage.packageImg}" alt="${BestPackage.packageImg}">
                            <div class="content-detail">
                                <p class="up">드레스 | ${BestPackage.dressName}</p>
                                    <%--                                    <p class="down">[촬영+본식] ${MDPickPackage.dressDetail}</p>--%>
                            </div>
                        </div>
                        <div class="content-bottom">
                            <img src="${BestPackage.packageImg}" alt="${BestPackage.packageImg}">
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
                            <img src="${MDPickPackage.packageImg}" alt="${MDPickPackage.packageImg}">
                            <div class="content-detail">
                                <p class="up">스튜디오 | ${MDPickPackage.studioName}</p>
                                    <%--                                    <p class="down">[웨딩촬영] ${MDPickPackage.studioDetail}</p>--%>
                            </div>
                        </div>
                        <div class="content">
                            <img src="${MDPickPackage.packageImg}" alt="${MDPickPackage.packageImg}">
                            <div class="content-detail">
                                <p class="up">드레스 | ${MDPickPackage.dressName}</p>
                                    <%--                                    <p class="down">[촬영+본식] ${MDPickPackage.dressDetail}</p>--%>
                            </div>
                        </div>
                        <div class="content-bottom">
                            <img src="${MDPickPackage.packageImg}" alt="${MDPickPackage.packageImg}">
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
                <form class="form-container">
                    <div></div>
                    <div class="form-text">
                        <input
                                type="text"
                                id="search_word"
                                class="textfield"
                        />
                    </div>
                    <button type="submit" class="btn_search">
                        <img
                                src="https://image.hago.kr/dev/main/pc/pc_search.svg"
                                alt="search"
                        />
                    </button>
                </form>
            </div>
            <div class="price-range">
                <button class="btn-price">
                    <a href="">100만원↓</a>
                </button>
                <button class="btn-price">
                    <a href="">100만원~200만원</a>
                </button>
                <button class="btn-price">
                    <a href="">200만원~300만원</a>
                </button>
                <button class="btn-price">
                    <a href="">300만원~400만원</a>
                </button>
                <button class="btn-price">
                    <a href="">400만원↑</a>
                </button>
            </div>
        </div>
    <!-- 패키지 검색 -->
    <div class="grid-bottom">
        <c:forEach var="BestPackage" items="${BestPackages}">
        <div class="grid-content">
            <div class="grid-pic">
                <img src="${BestPackage.packageImg}" alt="패키지 이미지">
            </div>
            <p class="name">${BestPackage.studioName} + ${BestPackage.dressName} + ${BestPackage.makeupName}</p>
            <p class="cost">패키지 가격 들어올 부분</p>
        </div>
        </c:forEach>
    </div>
    </section>
</div>
<%--<div id="pagination-placeholder"></div>--%>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>