<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>calendarList</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/package/packageCalendar.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/korean-lunar-calendar/dist/korean-lunar-calendar.min.js"></script>
</head>
<section class="calendar-wrapper">
    <section class="calendar-container" id="calendar-section1">
        <div class="calendar-header">
            <button id="prevBtn"> <</button>
            <div id="yearMonth">
                <h2 id="currentYear"></h2>
                <h2>년</h2>
                <h2 id="currentMonth"></h2>
                <h2>월</h2>
                <h2 id="currentHour"></h2>
                <h2 id="currentMinute"></h2>
                <h2 id="currentSecond"></h2>
            </div>
            <button id="nextBtn"> ></button>
        </div>
        <div class="calendar-category">
            <c:forEach var="detail" items="${packageDetails}">
                <button class="company-name" data-companyName="${detail.companyName}" data-company-id="${detail.companyId}">${detail.companyName}</button>
            </c:forEach>
        </div>
        <div class="calendar-body">
            <div class="calendar-days">
                <div class="day sunday">일</div>
                <div class="day">월</div>
                <div class="day">화</div>
                <div class="day">수</div>
                <div class="day">목</div>
                <div class="day">금</div>
                <div class="day saturday">토</div>
            </div>
            <div class="calendar-dates" id="calendarDates"></div>
        </div>
    </section>

    <section class="calendar-list">
        <div class="time-list-container">
            <div id="timeListContainer" class="time-lists">
                <!-- 여기서 동적으로 시간대를 추가합니다 -->
            </div>
        </div>

    </section>
</section>
<section id="selectedInfo">
    <h4>✔️ 아래 내용이 맞는지 확인해 주세요.</h4>
    <ul id="infoList">
        <c:forEach var="detail" items="${packageDetails}">
            <div class="card">
                <div class="company-name">${detail.companyName}</div>
                <div class="schedule-info">
                    <span>일정</span>
                    <p id="selectedDateTime_${detail.companyName}">선택한 날짜 • 선택한 시간</p>
                </div>
            </div>
        </c:forEach>
    </ul>
</section>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/js/mypage/calendar.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/js/package/packageCalender.js"></script>
</body>
</html>