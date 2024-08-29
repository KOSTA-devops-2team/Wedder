<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>visitSt1</title>
    <link rel="stylesheet" href="resources/css/common/reset.css" />
    <link rel="stylesheet" href="resources/css/reservation/hall/visitSt1.css" />
    <script defer src="resources/js/main/main.js"></script>
</head>
<body>
    <div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
    <div class="hd__inner1100">
        <!-- 배너 -->
        <section class="banner">
            <div>
                <div class="banner-background">
                    <img src="resources/images/visitReservation-banner1.png" alt="Banner">
                </div>
                <img src="resources/images/visitReservation-bannerImg.png" id="icon" alt="달력 icon">
                <h1 class="banner-title">웨딩홀 방문 예약 (1/3)</h1>
                <p class="banner-text">웨딩홀을 둘러보기 위한 방문 예약 일자와 시간을 선택해주세요.</p>
            </div>
        </section>

        <section class="container">
            <!-- 방문 일자 선택 -->
            <div class="reserve-date">
                <h1>방문 일자 선택</h1>
                <div class="calendar">
                    <img src="resources/images/calendar-july.png" alt="달력">
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
                    </table>
                </div>
            </div>
        </section>

        <div class="container">
            <div class="time-container">
                <!-- 방문 시간 -->
                <section class="reserve-time">
                    <h2>방문 시간 선택</h2>
                    <div class="reserve-timeAM">
                        <div class="time-title">오전</div>
                        <button class="time-btn-none">09:00</button>
                        <button class="time-btn-none">10:00</button>
                        <button class="time-btn">11:00</button>
                    </div>
                    <div class="reserve-timePM">
                        <div class="time-title">오후</div>
                        <button class="time-btn">12:00</button>
                        <button class="time-btn">13:00</button>
                        <button class="time-btn-none">14:00</button>
                        <button class="time-btn">15:00</button>
                        <button class="time-btn">16:00</button>
                        <button class="time-btn">17:00</button>
                        <button class="time-btn">18:00</button>
                        <button class="time-btn">19:00</button>
                        <button class="time-btn">20:00</button>
                        <button class="time-btn">21:00</button>
                    </div>
                </section>

                <!-- 버튼 -->
                <section class="btn">
                    <a href="weddinghallDetail"><button class="btn-pre">이전</button></a>
                    <a href="visitSt2"> <button class="btn-nxt">다음 단계로</button></a>
                </section>
            </div>
        </div>
    </div>
    <div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
    <script src="resources/js/reservation/hall/visitSt1.js"></script>
</body>
</html>
