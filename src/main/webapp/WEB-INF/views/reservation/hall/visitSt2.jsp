<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>visitSt2</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation/hall/visitSt2.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner1100">
        <!-- 배너 -->
        <section class="banner">
            <div>
                <div class="banner-background">
                    <img src="resources/images/visitReservation-banner1.png" alt="Banner">
                </div>
                <img src="resources/images/visitReservation-bannerImg.png" id="icon" alt="달력 icon">
                <h1 class="banner-title">웨딩홀 방문 예약 (2/3)</h1>
                <p class="banner-text">희망하는 예식일 후보 3가지와 예상되는 하객인원수를 선택해주세요.</p>
            </div>
        </section>

        <section class="container">
            <!-- 희망 예식일 선택 -->
            <div class="expect-date">
                <h1>희망 예식일 (필수)</h1>
                <div class="calendar">
                    <img src="resources/images/calendar-nov.png" alt="달력">
                </div>
                <div class="calendar-select">선택한 날짜가 표시됩니다.</div>
            </div>

            <div class="info-container">
                <!-- 예약 참고사항 -->
                <div class="reserve-guide">
                    <h2><input type="checkbox" checked /> 예약 신청 시 참고사항</h2>
                    <br>
                    <p class="guide">꼭 방문이 가능한 일정으로 신청해주세요.<br>
                        (예약 불가 시 별도 안내) <br>
                        평일보다는 주말 상담을 추천해요.<br>
                        예약된 스케줄 취소 시, 재예약이 어려울 수 있어요. </p>
                </div>

                <!-- 예약 정보 -->
                <div class="reserve-infobox">
                    <table class="info-table">
                        <caption><strong>롯데호텔월드(잠실)</strong> 방문 예약 정보</caption>
                        <tr>
                            <th>예약자명</th>
                            <td>박혜원</td>
                        </tr>
                        <tr>
                            <th>날짜</th>
                            <td>2024-07-23 토요일</td>
                        </tr>
                        <tr>
                            <th>시간</th>
                            <td>오후 5시</td>
                        </tr>
                        <tr>
                            <th>예식일</th>
                            <td>2024-11-23 토요일</td>
                        </tr>
                        <tr>
                            <th>인원수</th>
                            <td>200~300명</td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>

        <section class="container">
            <div class="audience-container">
                <!-- 예상 하객수 -->
                <section class="expect">
                    <h2>예상하객수</h2>
                    <div class="expect-audience">
                        <table class="expect-table">
                            <tr>
                                <td><input type="checkbox"> 50명 미만</td>
                                <td><input type="checkbox"> 50~100명</td>
                                <td><input type="checkbox"> 100~200명</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"> 200~300명</td>
                                <td><input type="checkbox"> 300~400명</td>
                                <td><input type="checkbox"> 400명 이상</td>
                            </tr>
                        </table>
                    </div>
                </section>

                <!-- 버튼 -->
                <section class="btn">
                    <a href="visitSt1"><button class="btn-pre">이전</button></a>
                    <a href="visitSt3"><button class="btn-nxt">다음 단계로</button></a>
                </section>
            </div>
        </section>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
