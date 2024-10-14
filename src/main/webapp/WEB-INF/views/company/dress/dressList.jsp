<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>dressList</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/company/dress/dressList.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/company/dress/dressList.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner1100">
        <!-- 메인 타이틀 문구 -->
        <section class="title">
            <div class="title-sub">
                원하는 조건으로 나만의 드레스 업체를 찾아보세요.
            </div>
            <div class="title-main">Dress</div>
        </section>

        <!-- 검색 조건 및 버튼 -->
        <section class="search">
            <div class="search-condition">
                <div>
                        <span
                        >업체명으로 검색<img
                                id="company-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/search-icon.png"
                        /></span>
                </div>
            </div>
<%--            <div class="search-btn">--%>
<%--                <button class="list-search-btn dark-pink">--%>
<%--                    <a href="dressList"--%>
<%--                    >목록으로 보기</a--%>
<%--                    >--%>
<%--                </button>--%>
<%--                <button class="map-search-btn">--%>
<%--                    <a href="mapViewWithFilters"--%>
<%--                    >지도로 보기</a--%>
<%--                    >--%>
<%--                </button>--%>
<%--            </div>--%>
        </section>

        <!-- 업체 리스트 부분  -->
        <section class="list-all">
            <c:forEach var="card" items="${dressList}">
                <div class="card">
                    <a href="${pageContext.request.contextPath}/dress/detail/${card.companyId}">
                        <img
                                class="card-img"
                                src="${card.imgUrl}"
                                alt="드레스샵 이미지"
                        />
                    </a>
                    <div class="card-info">
                        <div class="dress-name">
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
                        <div class="dress-address">주소 : ${card.companyAddress}</div>
                        <div class="phone-num">연락처 : ${card.phoneNum}</div>
                        <div class="operation-hours">영업시간 : ${card.operationHours}</div>
                        <div class="dress-type">상품 유형 : ${card.dressDto.dressType}</div>
                        <div class="position">상품 구성 : ${card.dressDto.composition}</div>
                    </div>
                </div>
            </c:forEach>
        </section>
    </div>

    <!-- 페이지네이션  -->
    <div id="pagination-placeholder">
        <%@ include file="/WEB-INF/views/common/pagination.jsp" %>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
