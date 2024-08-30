<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mapViewWithFilters</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/company/weddinghall/mapViewWithFilters.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/company/weddinghall/weddinghallList.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/company/weddinghall/mapViewWithFilters.js"></script>
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
                <div class="local-search">
                        <span
                        >지역<img
                                id="region-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"
                        /></span>
                </div>
                <div>
                        <span
                        >날짜<img
                                id="date-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"
                        /></span>
                </div>
                <div>
                        <span
                        >예산<img
                                id="cost-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"
                        /></span>
                </div>
                <div>
                        <span
                        >분위기<img
                                id="mood-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"
                        /></span>
                </div>
                <div>
                        <span
                        >업체명으로 검색<img
                                id="company-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/search-icon.png"
                        /></span>
                </div>
            </div>
            <div class="search-btn">
                <button class="list-search-btn dark-pink">
                    <a href="weddinghallList"
                    >목록으로 보기</a
                    >
                </button>
                <button class="map-search-btn">
                    <a href="mapViewWithFilters"
                    >지도로 보기</a
                    >
                </button>
            </div>
        </section>

        <!-- 지도 -->
        <section class="map">
            <img
                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/etc/map.png"
            />
        </section>

        <!-- 키워드 검색 -->
        <section class="keyword">
            <h2>인기 키워드로 보는 웨딩홀</h2>
            <div class="keyword-container">
                <ul>
                    <li class="popular">
                        <a href="#">🔥 인기많은</a>
                    </li>
                    <li class="delicious">
                        <a href="#">
                            >🍽️ 식사가 맛있는</a
                        >
                    </li>
                    <li class="outdoor">
                        <a href="#""
                        >🌳 야외에서 즐기는</a
                            >
                    </li>
                    <li class="reviewed">
                        <a href="#">💎 후기많은</a>
                    </li>
                    <li class="new">
                        <a href="#" >🚩 따끈따근한</a>
                    </li>
                    <li class="value">
                        <a href="#">💸 가성비</a></li>
                </ul>
            </div>
        </section>

        <!-- 키워드 검색 결과 : 슬라이드 -->
        <section class="slide">
            <button class="slide-button left" id="prevButton">
                <img
                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/left-arrow.png"
                />
            </button>
            <div class="slide-container">
                <div class="slide-inner">
                    <div class="slide-item">
                        <div class="slide-item-title">
                            <p>도심속 자연과 어우러진 하우스웨딩</p>
                            <h2>자연 채광 아래 여유롭고 프라이빗한 예식</h2>
                        </div>
                        <div class="slide-item-img">
                            <a
                                    href="weddinghallDetail"
                            >
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                                        alt="웨딩홀 이미지 5"
                                /></a>
                        </div>
                        <div class="slide-item-content">
                            <h3>추천포인트</h3>
                            <p>✔️ 따뜻한 분위기 살라</p>
                            <p>✔️ 따뜻한 분위기 살라</p>
                        </div>
                    </div>
                    <div class="slide-item">
                        <div class="slide-item-title">
                            <p>도심속 자연과 어우러진 하우스웨딩</p>
                            <h2>자연 채광 아래 여유롭고 프라이빗한 예식</h2>
                        </div>
                        <div class="slide-item-img">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                                    alt="웨딩홀 이미지 5"
                            />
                        </div>
                        <div class="slide-item-content">
                            <h3>추천포인트</h3>
                            <p>✔️ 따뜻한 분위기 살라</p>
                            <p>✔️ 따뜻한 분위기 살라</p>
                        </div>
                    </div>
                    <div class="slide-item">
                        <div class="slide-item-title">
                            <p>도심속 자연과 어우러진 하우스웨딩</p>
                            <h2>자연 채광 아래 여유롭고 프라이빗한 예식</h2>
                        </div>
                        <div class="slide-item-img">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                                    alt="웨딩홀 이미지 5"
                            />
                        </div>
                        <div class="slide-item-content">
                            <h3>추천포인트</h3>
                            <p>✔️ 따뜻한 분위기 살라</p>
                            <p>✔️ 따뜻한 분위기 살라</p>
                        </div>
                    </div>
                    <div class="slide-item">
                        <div class="slide-item-title">
                            <p>도심속 자연과 어우러진 하우스웨딩</p>
                            <h2>자연 채광 아래 여유롭고 프라이빗한 예식</h2>
                        </div>
                        <div class="slide-item-img">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                                    alt="웨딩홀 이미지 5"
                            />
                        </div>
                        <div class="slide-item-content">
                            <h3>추천포인트</h3>
                            <p>✔️ 따뜻한 분위기 살라</p>
                            <p>✔️ 따뜻한 분위기 살라</p>
                        </div>
                    </div>
                    <div class="slide-item">
                        <div class="slide-item-title">
                            <p>도심속 자연과 어우러진 하우스웨딩</p>
                            <h2>자연 채광 아래 여유롭고 프라이빗한 예식</h2>
                        </div>
                        <div class="slide-item-img">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                                    alt="웨딩홀 이미지 5"
                            />
                        </div>
                        <div class="slide-item-content">
                            <h3>추천포인트</h3>
                            <p>✔️ 따뜻한 분위기 살라</p>
                            <p>✔️ 따뜻한 분위기 살라</p>
                        </div>
                    </div>
                    <div class="slide-item">
                        <div class="slide-item-title">
                            <p>도심속 자연과 어우러진 하우스웨딩</p>
                            <h2>자연 채광 아래 여유롭고 프라이빗한 예식</h2>
                        </div>
                        <div class="slide-item-img">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                                    alt="웨딩홀 이미지 5"
                            />
                        </div>
                        <div class="slide-item-content">
                            <h3>추천포인트</h3>
                            <p>✔️ 따뜻한 분위기 살라</p>
                            <p>✔️ 따뜻한 분위기 살라</p>
                        </div>
                    </div>
                    <div class="slide-item">
                        <div class="slide-item-title">
                            <p>도심속 자연과 어우러진 하우스웨딩</p>
                            <h2>자연 채광 아래 여유롭고 프라이빗한 예식</h2>
                        </div>
                        <div class="slide-item-img">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                                    alt="웨딩홀 이미지 5"
                            />
                        </div>
                        <div class="slide-item-content">
                            <h3>추천포인트</h3>
                            <p>✔️ 따뜻한 분위기 살라</p>
                            <p>✔️ 따뜻한 분위기 살라</p>
                        </div>
                    </div>
                    <div class="slide-item">
                        <div class="slide-item-title">
                            <p>도심속 자연과 어우러진 하우스웨딩</p>
                            <h2>자연 채광 아래 여유롭고 프라이빗한 예식</h2>
                        </div>
                        <div class="slide-item-img">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                                    alt="웨딩홀 이미지 5"
                            />
                        </div>
                        <div class="slide-item-content">
                            <h3>추천포인트</h3>
                            <p>✔️ 따뜻한 분위기 살라</p>
                            <p>✔️ 따뜻한 분위기 살라</p>
                        </div>
                    </div>
                </div>
            </div>
            <button class="slide-button right" id="nextButton">
                <img
                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/right-arrow.png"
                />
            </button>
        </section>
    </div>
    <div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</body>
</html>
