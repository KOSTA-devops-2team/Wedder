<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Wedder</title>
        
        <link rel="stylesheet" href="<c:url value="resources/css/common/reset.css"/>" />
        <link rel="stylesheet" href="<c:url value="resources/css/common/header/headerV2.css"/>" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <script defer src="../../js/header/header.js"></script>
    </head>
    <body>
        <header>
            <div class="header-container">
                <div class="header-top">
                    <!-- 해더 로고 -->
                    <div class="header-logo">
                        <a href="../../html/main/main.html">
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
                                <a href="../../html/admin/adminMain.html"
                                    ><img
                                        src="https://image.hago.kr/dev/main/pc/login.svg"
                                        alt="로그인"
                                /></a>
                                <div>로그인</div>
                            </li>
                            <li>
                                <a href="../../html/mypage/mypage.html"
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
                            <a href="../../html/main/main.html">Home</a>
                        </li>
                        <li class="black">
                            <a
                                href="../../html/weddingHall/weddingHallList.html"
                                >Wedding Hall</a
                            >
                        </li>
                        <li class="black">
                            <a href="../../html/studio/studioList.html"
                                >Studio</a
                            >
                        </li>
                        <li class="black">
                            <a href="../../html/dress/dressList.html">Dress</a>
                        </li>
                        <li class="black">
                            <a href="../../html/makeup/makeupList.html"
                                >Make Up</a
                            >
                        </li>
                        <li class="black">
                            <a href="../../html/Package/packageMain.html"
                                >Package</a
                            >
                        </li>
                        <li class="black">
                            <a href="../../html/estimate/estimateCal.html"
                                >Estimate</a
                            >
                        </li>
                        <li class="black">
                            <a
                                href="../../html/reservation/reservationCategory.html"
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
