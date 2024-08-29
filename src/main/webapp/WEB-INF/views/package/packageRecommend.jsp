<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>mypage</title>
    <!-- 링크 -->
    <link rel="stylesheet" href="<c:url value='resources/css/common/reset.css'/>" />
    <link rel="stylesheet" href="<c:url value='resources/css/package/packageRecommand.css'/>"/>
    <link rel="stylesheet" href="<c:url value='resources/css/common/pagination/pagination.css'/>"/>
    <!-- 스크립트 -->
    <script defer src="<c:url value='resources/js/main/main.js'/>"></script>
    <script defer src="<c:url value='resources/js/pagination/pagination.js'/>"></script>
</head>

<div> <%@ include file="/resources/components/header/headerV2.jsp" %></div>
<body>
    <div class="hd__inner1100">
        <div class="container-main">
            <div class="container-top">
                <div class="pack-title">
                    <p>Best Package</p>
                </div>
                <div class="grid-top">
                    <div class="grid">
                        <div class="package-picture">
                            <img src="resources/assets/images/basicPack.png" alt="Basic Pack">
                        </div>
                        <div class="top-con">
                            <div class="content">
                                <img src="resources/assets/images/weddingThumbnail.png" alt="스튜디오">
                                <div class="content-detail">
                                    <p class="up">스튜디오    |    테오그라피</p>
                                    <p class="down">[웨딩촬영] 베이직 20P</p>
                                </div>
                            </div>
                            <div class="content">
                                <img src="resources/assets/images/dressThumbnail.png" alt="드레스">
                                <div class="content-detail">
                                    <p class="up">드레스    |    브라이덜수지</p>
                                    <p class="down">[촬영+본식] 드레스 4벌</p>
                                </div>
                            </div>
                            <div class="content-bottom">
                                <img src="resources/assets/images/makeupThumbnail.png" alt="메이크업">
                                <div class="content-detail">
                                    <p class="up">헤어/메이크업    |    고센&끌림뷰티</p>
                                    <p class="down">[촬영+본식] 신부신랑 헤어메이크업</p>
                                </div>
                            </div>
                            <a class="detail" href="../../html/Package/packageDetails.html">상품 자세히 보기 &#62;</a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="package-picture">
                            <img src="resources/assets/images/standardPack.png" alt="Basic Pack">
                        </div>
                        <div class="top-con">
                            <div class="content">
                                <img src="resources/assets/images/weddingThumbnail.png" alt="스튜디오">
                                <div class="content-detail">
                                    <p class="up">스튜디오    |    테오그라피</p>
                                    <p class="down">[웨딩촬영] 베이직 20P</p>
                                </div>
                            </div>
                            <div class="content">
                                <img src="resources/assets/images/dressThumbnail.png" alt="드레스">
                                <div class="content-detail">
                                    <p class="up">드레스    |    브라이덜수지</p>
                                    <p class="down">[촬영+본식] 드레스 4벌</p>
                                </div>
                            </div>
                            <div class="content-bottom">
                                <img src="resources/assets/images/makeupThumbnail.png" alt="메이크업">
                                <div class="content-detail">
                                    <p class="up">헤어/메이크업    |    고센&끌림뷰티</p>
                                    <p class="down">[촬영+본식] 신부신랑 헤어메이크업</p>
                                </div>
                            </div>
                            <a class="detail" href="#">상품 자세히 보기 &#62;</a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="package-picture">
                            <img src="resources/assets/images/PremiumPack.png" alt="Basic Pack">
                        </div>
                        <div class="top-con">
                            <div class="content">
                                <img src="resources/assets/images/weddingThumbnail.png" alt="스튜디오">
                                <div class="content-detail">
                                    <p class="up">스튜디오    |    테오그라피</p>
                                    <p class="down">[웨딩촬영] 베이직 20P</p>
                                </div>
                            </div>
                            <div class="content">
                                <img src="resources/assets/images/dressThumbnail.png" alt="드레스">
                                <div class="content-detail">
                                    <p class="up">드레스    |    브라이덜수지</p>
                                    <p class="down">[촬영+본식] 드레스 4벌</p>
                                </div>
                            </div>
                            <div class="content-bottom">
                                <img src="resources/assets/images/makeupThumbnail.png" alt="메이크업">
                                <div class="content-detail">
                                    <p class="up">헤어/메이크업    |    고센&끌림뷰티</p>
                                    <p class="down">[촬영+본식] 신부신랑 헤어메이크업</p>
                                </div>
                            </div>
                            <a class="detail" href="#">상품 자세히 보기 &#62;</a>
                        </div>
                    </div>
                    <div class="grid">
                        <div class="package-picture">
                            <img src="resources/assets/images/High-endPack.png" alt="Basic Pack">
                        </div>
                        <div class="top-con">
                            <div class="content">
                                <img src="resources/assets/images/weddingThumbnail.png" alt="스튜디오">
                                <div class="content-detail">
                                    <p class="up">스튜디오    |    테오그라피</p>
                                    <p class="down">[웨딩촬영] 베이직 20P</p>
                                </div>
                            </div>
                            <div class="content">
                                <img src="resources/assets/images/dressThumbnail.png" alt="드레스">
                                <div class="content-detail">
                                    <p class="up">드레스    |    브라이덜수지</p>
                                    <p class="down">[촬영+본식] 드레스 4벌</p>
                                </div>
                            </div>
                            <div class="content-bottom">
                                <img src="resources/assets/images/makeupThumbnail.png" alt="메이크업">
                                <div class="content-detail">
                                    <p class="up">헤어/메이크업    |    고센&끌림뷰티</p>
                                    <p class="down">[촬영+본식] 신부신랑 헤어메이크업</p>
                                </div>
                            </div>
                            <a class="detail" href="#">상품 자세히 보기 &#62;</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 하단 그리드 -->
            <div class="bot">
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
                            <img src="resources/assets/images/bestPackage1.png" alt="">
                        </div>
                        <p class="name">라뮤즈(토탈)+브라이드벨라+비올</p>
                        <p class="cost">169만원</p>
                    </div>
                    <div class="grid-content">
                        <div class="grid-pic">
                            <img src="resources/assets/images/bestPackage2.png" alt="">
                        </div>
                        <p class="name">가을스튜디오+컬리트비+비올</p>
                        <p class="cost">179만원</p>
                    </div>
                    <div class="grid-content">
                        <div class="grid-pic">
                            <img src="resources/assets/images/bestPackage3.png" alt="">
                        </div>
                        <p class="name">메레스튜디오+레이첼+비올</p>
                        <p class="cost">190만원</p>
                    </div>
                    <div class="grid-content">
                        <div class="grid-pic">
                            <img src="resources/assets/images/bestPackage1.png" alt="">
                        </div>
                        <p class="name">ST정우(토탈)+디유드라포뎀+비올</p>
                        <p class="cost">210만원</p>
                    </div>
                    <div class="grid-content">
                        <div class="grid-pic">
                            <img src="resources/assets/images/bestPackage2.png" alt="">
                        </div>
                        <p class="name">원규+누벨드블랑+알루</p>
                        <p class="cost">245만원</p>
                    </div>
                    <div class="grid-content">
                        <div class="grid-pic">
                            <img src="resources/assets/images/bestPackage3.png" alt="">
                        </div>
                        <p class="name">아키스튜디오+모니카블랑쉬+알루</p>
                        <p class="cost">275만원</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="pagination-placeholder"></div>
</body>
<div><%@ include file="/resources/components/footer/footerV2.jsp" %></div>
</html>