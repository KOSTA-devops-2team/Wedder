<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>package detail</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/package/packageDetail.css"/>
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/package/packageDetail.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="hd__inner1100">
    <div class="container">
        <div class="header">
            <h1>${packageDetail.headerTitle}</h1>
            <h2>${packageDetail.packageName}</h2>
        </div>
        <div class="service">
            <img src="${packageDetail.packageImg}" alt="${packageDetail.packageName}">
            <div class="description">
                <h3>웨딩촬영</h3>
                <p>${packageDetail.weddingAlbum}</p>
                <p>${packageDetail.weddingTime}</p>
                <p>${packageDetail.weddingDress}</p>
                <p>${packageDetail.weddingSchedule}</p>
            </div>
            <div class="action">
                <button class="heart"></button>
                <a href="#">리뷰 보러가기</a>
            </div>
        </div>
        <div class="service">
            <img src="${packageDetail.packageImg}" alt="${packageDetail.packageName}">
            <div class="description">
                <h3>드레스</h3>
                <p>${packageDetail.dressOptions}</p>
                <p>${packageDetail.dressConsultTime}</p>
                <p>${packageDetail.dressFittingTime}</p>
            </div>
            <div class="action">
                <button class="heart"></button>
                <a href="#">리뷰 보러가기</a>
            </div>
        </div>
        <div class="service">
            <img src="${packageDetail.packageImg}" alt="${packageDetail.packageName}">
            <div class="description">
                <h3>헤어&메이크업</h3>
                <p>${packageDetail.makeupSessions}</p>
                <p>${packageDetail.makeupDetails}</p>
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
                <div class="price">${packageDetail.originalPrice}원</div>
            </div>
            <div class="total-discount">
                <div class="tag">패키지 추가 할인</div>
                <div class="price">${packageDetail.discountPrice}원</div>
            </div>
            <div class="total-final">
                <div class="tag">최종 혜택가</div>
                <div class="price">${packageDetail.finalPrice}원</div>
            </div>
            <div class="choice">
                <div class="choice-box">
                    <div class="saving">패키지 구매 시<br>총 ${packageDetail.savingPrice}원 절약</div>
                    <div class="notice">선택 옵션 변경 시 패키지 혜택이 달라질 수 있습니다.</div>
                </div>
            </div>
            <div class="btn">
                <a class="main-button" href="${pageContext.request.contextPath}/package/recommend">뒤로 가기</a>
                <button onclick="location.href='weddingHallPayment.html'" class="pay">패키지 결제하기</button>
            </div>
        </div>
    </div>

</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>