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
    <script defer type="text/javascript"
            src="${pageContext.request.contextPath}/resources/js/mypage/calendar.js"></script>
    <script defer type="text/javascript"
            src="${pageContext.request.contextPath}/resources/js/package/packageCalender.js"></script>

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
                <button class="company-name" data-companyName="${detail.companyName}">${detail.companyName}</button>
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
        <div id="timeSlotsContainer">
            <!-- 여기서 동적으로 시간대를 추가합니다 -->
        </div>

    </section>
</section>
<section id="selectedInfo">
    <h3>선택된 정보</h3>
    <ul id="infoList">
        <!-- 여기서 동적으로 선택한 일정 추가합니다 -->
    </ul>
</section>

</body>
</html>