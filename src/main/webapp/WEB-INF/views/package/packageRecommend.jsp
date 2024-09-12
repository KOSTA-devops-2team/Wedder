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
            <div class="price-range">
                <button class="btn-price">
                    <a href="">100만원↓</a>
                </button>
                <button class="btn-price">
                    <a href="">100만원~150만원</a>
                </button>
                <button class="btn-price">
                    <a href="">150만원~200만원</a>
                </button>
                <button class="btn-price">
                    <a href="">200만원~250만원</a>
                </button>
                <button class="btn-price">
                    <a href="">250만원~300만원</a>
                </button>
                <button class="btn-price">
                    <a href="">300만원~350만원</a>
                </button>
                <button class="btn-price">
                    <a href="">350만원~400만원</a>
                </button>
                <button class="btn-price">
                    <a href="">400만원↑</a>
                </button>
            </div>
        </div>
        <!-- 하단 그리드 내용-->
        <div class="grid-bottom">
            <div class="grid-content">
                <div class="grid-pic">
                    <img src="resources/images/bestPackage1.png" alt="">
                </div>
                <p class="name">라뮤즈(토탈)+브라이드벨라+비올</p>
                <p class="cost">169만원</p>
            </div>
            <div class="grid-content">
                <div class="grid-pic">
                    <img src="resources/images/bestPackage2.png" alt="">
                </div>
                <p class="name">가을스튜디오+컬리트비+비올</p>
                <p class="cost">179만원</p>
            </div>
            <div class="grid-content">
                <div class="grid-pic">
                    <img src="resources/images/bestPackage3.png" alt="">
                </div>
                <p class="name">메레스튜디오+레이첼+비올</p>
                <p class="cost">190만원</p>
            </div>
            <div class="grid-content">
                <div class="grid-pic">
                    <img src="resources/images/bestPackage1.png" alt="">
                </div>
                <p class="name">ST정우(토탈)+디유드라포뎀+비올</p>
                <p class="cost">210만원</p>
            </div>
            <div class="grid-content">
                <div class="grid-pic">
                    <img src="resources/images/bestPackage2.png" alt="">
                </div>
                <p class="name">원규+누벨드블랑+알루</p>
                <p class="cost">245만원</p>
            </div>
            <div class="grid-content">
                <div class="grid-pic">
                    <img src="resources/images/bestPackage3.png" alt="">
                </div>
                <p class="name">아키스튜디오+모니카블랑쉬+알루</p>
                <p class="cost">275만원</p>
            </div>
        </div>
    </section>

</div>
<%--<div id="pagination-placeholder"></div>--%>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>