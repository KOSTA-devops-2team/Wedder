<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>weddinghallList</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/company/weddinghall/weddinghallList.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/company/weddinghall/weddinghallList.js"></script>
<%--    <script defer src="${pageContext.request.contextPath}/resources/js/pagination/pagination.js"></script>--%>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner1100">
        <!-- 메인 타이틀 문구 -->
        <section class="title">
            <div class="title-sub">
                원하는 조건으로 나만의 웨딩홀 장소를 찾아보세요.
            </div>
            <div class="title-main">Wedding Hall</div>
        </section>

        <!-- 검색 조건 및 버튼 -->
        <section class="search">
            <div class="search-condition">
<%--                <div class="local-search">--%>
<%--                        <span--%>
<%--                        >지역<img--%>
<%--                                id="region-icon"--%>
<%--                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"--%>
<%--                        /></span>--%>
<%--                </div>--%>
<%--                <div>--%>
<%--                        <span--%>
<%--                        >예산<img--%>
<%--                                id="cost-icon"--%>
<%--                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"--%>
<%--                        /></span>--%>
<%--                </div>--%>
                <div>
                        <select>
                            <option value="">분위기</option>
                            <c:forEach var="option" items="${hallList}">
                                <option value="${option.mood}">${option.mood}</option>
                            </c:forEach>
                        </select>
<%--                        <span--%>
<%--                        >분위기<img--%>
<%--                                id="mood-icon"--%>
<%--                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"--%>
<%--                        /></span>--%>
                </div>
                <div class="search-container">
                    <input type="text" id="keyword" class="search-bar" placeholder="업체명으로 검색">
                    <button class="search-btn">
                        <img
                            id="search-icon"
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/search-icon.png"
                        />
                    </button>
                </div>
            </div>
            <div class="search-btns">
                <button class="list-search-btn dark-pink">
                    <a href="weddinghall">
                        목록으로 보기
                    </a>
                </button>
                <button class="map-search-btn">
                    <a href="weddinghall/mapViewWithFilters">
                        지도로 보기
                    </a>
                </button>
            </div>
        </section>

        <!-- 업체 리스트 부분  -->
        <section class="list-all">
            <c:forEach var="card" items="${hallList}">
                <div class="card">
                    <a href="${pageContext.request.contextPath}/weddinghall/detail/${card.companyId}">
                        <img
                                class="card-img"
                                src="${card.imgUrl}"
                                alt="웨딩홀 이미지"
                        />
                    </a>
                    <div class="card-info">
                        <div class="weddinghall-name">
                            ${card.companyName}
                            <a
                                    href="${card.instagramUrl}"
                                    target="_blank"
                                    class="instagram"
                            >
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/instagram.png"
                                        alt="인스타 이미지"
                                />
                            </a>
                        </div>
                        <div class="weddinghall-address">주소 : ${card.companyAddress}</div>
                        <div class="phone-num">연락처 : ${card.phoneNum}</div>
                        <div class="operation-hours">영업시간 : ${card.operationHours}</div>
                        <div class="meal-price">식사비 : ${card.hallDto.mealPrice}</div>
                        <div class="minimum-guarantee">최소보증인원 : ${card.hallDto.minPeople}</div>
                    </div>
                </div>
            </c:forEach>
        </section>
    </div>

    <!-- 페이지네이션  -->
    <div id="pagination-placeholder">
        <%@ include file="/WEB-INF/views/common/pagination.jsp" %>
    </div>

    <div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</body>
</html>
