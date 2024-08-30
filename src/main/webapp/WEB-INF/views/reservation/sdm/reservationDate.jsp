<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>reservationDate</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation/sdm/reservationDate.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner1100">
        <!-- 타이틀 -->
        <section class="title">
            <p class="title-sub">원하는 스튜디오, 드레스, 메이크업 업체를 예약해보세요.</p>
            <h2 class="title-main">Reservation</h2>
        </section>

        <!-- 안내 멘트 -->
        <section class="guide">
            <h2 class="guide-step">Step.2</h2>
            <p class="guide-explain">
                예약을 원하는 날짜를 선택해 주세요.
            </p>
        </section>

        <!-- 방문 일자 선택 -->
        <div class="select">
            <div class="company-title">
                <h1>[스튜디오] 비마이 스튜디오</h1>
                <P>&#10004; 예약을 원하시는 날짜를 선택해주세요</P>
            </div>
        </div>
        <section class="container">
            <div class="reserve-date">
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
                    <p class="guide-contents">꼭 방문이 가능한 일정으로 신청해주세요.<br>
                        (예약 불가 시 별도 안내) <br>
                        예약된 스케줄 취소 시, 재예약이 어려울 수 있어요. </p>
                </div>

                <!-- 예약 시간대 -->
                <div class="reserve-time">
                    <h3>예약 시간</h3>
                    <div class="time-slot">
                        <h4>10:00</h4>
                        <p>[웨딩촬영] 비마이 스튜디오</p>
                    </div>
                    <div class="time-slot">
                        <h4>12:00</h4>
                        <p>[웨딩촬영] 비마이 스튜디오</p>
                    </div>
                    <div class="time-slot-none">
                        <h4>14:00</h4>
                        <p>[웨딩촬영] 비마이 스튜디오</p>
                    </div>
                    <div class="time-slot">
                        <h4>16:00</h4>
                        <p>[웨딩촬영] 비마이 스튜디오</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- 선택 목록 -->
        <section class="select-list">
            <div class="select-title">
                <h1>선택하신 목록</h1>
            </div>
            <div class="select-container">
                <div class="select-company">
                    <div>
                        <img id="company-images" src="resources/images/reserve-studio-company.png" alt="업체 이미지">
                    </div>
                    <div>
                        <h4 class="select-company-title">비마이 스튜디오</h4>
                        <p  class="select-purpose">[웨딩촬영]</p>
                    </div>
                </div>
                <div class="options">
                    <div class="select-option">
                        <div>
                            <img src="resources/images/option1.png" alt="옵션 이미지">
                        </div>
                        <div class="select-option-info">
                            <h6>야간 촬영</h6>
                            <p>17시 이후 부터 촬영 가능</p>
                        </div>
                        <div class="option-price-div">
                            <h5 class="select-options-price">220,000원</h5>
                        </div>
                    </div>
                    <div class="select-option">
                        <div>
                            <img src="resources/images/option5.png" alt="옵션 이미지5">
                        </div>
                        <div class="select-option-info">
                            <h6>들러리 촬영</h6>
                            <p>스튜디오 촬영 / 본식 동반(1인)</p>
                        </div>
                        <div class="option-price-div">
                            <h5 class="select-options-price">110,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="select-date">

                </div>
            </div>
        </section>

        <!-- 다음 단계 버튼 -->
        <section class="btn">
            <a href="reservationOption"><button class="btn-pre">이전</button></a>
            <a href="reservationPayment"><button class="btn-nxt">다음 단계로</button></a>
        </section>
    </div>
    <div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
    <script src="resources/js/reservation/sdm/reservationDate.js"></script>
</body>
</html>
