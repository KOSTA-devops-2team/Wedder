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
    <link rel="stylesheet" href="<c:url value='resources/css/package/packageDetail.css'/>"/>
    <!-- 스크립트 -->
    <script defer src="<c:url value='resources/js/main/main.js'/>"></script>
    <script defer src="<c:url value='resources/js/package/packageDetail.js'/>"></script>
</head>

<div> <%@ include file="/resources/components/header/headerV2.jsp" %></div>
<body>
    <div class="hd__inner1100">
        <div class="container">
            <div class="header">
                <h1>간단하고 소박한 결혼식을 위한 최소한의 서비스</h1>
                <h2>Simple Basic</h2>
            </div>
            <div class="service">
                <img src="resources/assets/images/weddingThumbnail.png" alt="웨딩촬영">
                <div class="description">
                    <h3>웨딩촬영</h3>
                    <p>앨범 1권 (20P) + 기본 액자 (20R)</p>
                    <P>3시간 촬영</P>
                    <p>총 4벌(드레스 3벌, 캐주얼 1벌)</p>
                    <p>오전/오후 각 1팀씩 촬영</p>
                </div>
                <div class="action">
                    <button class="heart"></button>
                    <a href="#">리뷰 보러가기</a>
                </div>
            </div>
            <div class="service">
                <img src="resources/assets/images/dressThumbnail.png" alt="드레스">
                <div class="description">
                    <h3>드레스</h3>
                    <p>촬영 드레스 3벌 + 본식 드레스 1벌</p>
                    <p>방문 상담 60분</p>
                    <p>가봉 60분 소요</p>
                </div>
                <div class="action">
                    <button class="heart"></button>
                    <a href="#">리뷰 보러가기</a>
                </div>
            </div>
            <div class="service">
                <img src="resources/assets/images/makeupThumbnail.png" alt="헤어&메이크업">
                <div class="description">
                    <h3>헤어&메이크업</h3>
                    <p>촬영 1회 + 본식 1회 헤어 메이크업</p>
                    <p>메이크업 : 실장/헤어:상담 후 결정</p>
                </div>
                <div class="action">
                    <button class="heart"></button>
                    <a href="#">리뷰 보러가기</a>
                </div>
            </div>
            <div class="total">
                <div class="total-title">패키지 특전</div>
                <div class="total-cost">
                    <div class="tag">정상가</div>
                    <div class="price">4,180,000원</div>
                </div>
                <div class="total-discount">
                    <div class="tag">패키지 추가 할인</div>
                    <div class="price">2,665,000원</div>
                </div>
                <div class="total-final">
                    <div class="tag">최종 혜택가</div>
                    <div class="price">1,515,000원</div>
                </div>
                <div class="choice">
                    <div class="choice-box">
                        <div class="saving">패키지 구매 시<br>총 2,665,000원 절약</div>
                        <div class="notice">선택 옵션 병경 시 패키지 혜택이 달라질 수 있습니다.</div>
                    </div>
                </div>
                <div class="btn">
                    <button onclick="location.href='packageRecommend.html'" class="back">뒤로 가기</button>
                    <button onclick="location.href='weddingHallPayment.html'" class="pay">패키지 결제하기</button>
                </div>
            </div>
        </div>
    </div>
</body>
<div><%@ include file="/resources/components/footer/footerV2.jsp" %></div>
</html>