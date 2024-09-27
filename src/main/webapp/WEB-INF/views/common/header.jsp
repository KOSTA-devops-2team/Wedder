<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="loginId" value="${sessionScope.id }" />
<c:set var="loginout" value="${sessionScope.id==null ? 'Login' : 'Logout' }" />
<c:set var="loginoutlink" value="${sessionScope.id==null ? '/log/login' : '/log/logout' }" />
<c:set var="mypagelink" value="${sessionScope.id == null ? '/log/login' : '/mypage/mypage' }" />
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Wedder</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/header/header.css" />
        <script defer src="${pageContext.request.contextPath}/resources/js/header/header.js"></script>
    </head>
    <body>
        <header>
            <div class="header-container">
                <div class="header-top">
                    <!-- 해더 로고 -->
                    <div class="header-logo">
                        <a href="${pageContext.request.contextPath}/main">
                            <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/wedder-logo2.png"
                            />
                        </a>
                        <h1>Wedder</h1>
                    </div>
                    <!-- 해더 검색 영역 -->
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
                    <!-- 해더 유저 정보 -->
                    <div class="header-user-container">
                        <ul class="header-user">
                            <li>
                                <a href="<c:url value="${loginoutlink}" />">${loginout}
                                    <img
                                        src="https://image.hago.kr/dev/main/pc/login.svg"
                                        alt="로그인"
                                /></a>
                            </li>
                            <li>
                                <a href="<c:url value='${mypagelink}' />"
                                    ><img
                                        src="https://image.hago.kr/dev/main/pc/mypage.svg"
                                        alt="마이페이지"
                                /></a>
                                <div>마이페이지</div>
                            </li>
                            <li>
                                <a href="../../html/admin/adminMain.html"
                                    ><img
                                        class="header-heart"
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                        alt="Like"
                                /></a>
                                <div>Like</div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 네비게이션 바 -->
                <nav class="header-cate hd__inner1400">
                    <ul>
                        <div id="horizontal-underline"></div>
                        <li class="black">
                            <a href="${pageContext.request.contextPath}/main">Home</a>
                        </li>
                        <li class="black">
                            <a
                                href="${pageContext.request.contextPath}/weddinghallList"
                                >Wedding Hall</a
                            >
                        </li>
                        <li class="black">
                            <a href="${pageContext.request.contextPath}/studioList"
                                >Studio</a
                            >
                        </li>
                        <li class="black">
                            <a href="${pageContext.request.contextPath}/dressList">Dress</a>
                        </li>
                        <li class="black">
                            <a href="makeupList"
                                >Make Up</a
                            >
                        </li>
                        <li class="black">
                            <a href="${pageContext.request.contextPath}/package">Package</a>
                        </li>
                        <li class="black">
                            <a href="${pageContext.request.contextPath}/estimate"
                                >Estimate</a
                            >
                        </li>
                        <li class="black">
                            <a
                                href="${pageContext.request.contextPath}/reservation"
                                >Reservation</a
                            >
                        </li>
                        <li>|</li>
                        <li class="grey">Review</li>
                        <li class="grey">Event</li>
                    </ul>
                </nav>
            </div>
        </header>
    </body>
</html>
