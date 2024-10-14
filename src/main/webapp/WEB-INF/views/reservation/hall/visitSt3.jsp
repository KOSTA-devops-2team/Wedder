<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>visitSt3</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}resources/css/reservation/hall/visitSt3.css" />
    <script defer src="${pageContext.request.contextPath}resources/js/main/main.js"></script>
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
                <h1 class="banner-title">웨딩홀 방문 예약 (3/3)</h1>
                <p class="banner-text">웨딩홀 투어를 도와줄 상담원에게 전달 될 고객님의 정보와 전달사항을 작성해주세요.</p>
            </div>
        </section>

        <section class="container">
            <!-- 고객 정보 확인 -->
            <div class="customer-container">
                <div class="customer-info">
                    <h1>고객 정보 확인</h1>
                    <div class="myinfo">
                        <h3>나의 정보(필수)</h3>
                        <div class="inputs-container">
                            <div class="inputs">
                                <label for="name">이름(실명)</label>
                                <input type="text" id="name" placeholder="이름을 입력해 주세요">
                            </div>
                            <div class="inputs">
                                <label for="phone-num">연락처</label>
                                <input type="number" id="phone-num" placeholder="-없이 입력해 주세요">
                            </div>
                        </div>
                    </div>
                    <div class="spouse-info">
                        <h3>배우자(필수)</h3>
                        <div class="inputs">
                            <label for="partner-name">이름(실명)</label>
                            <input type="text" id="partner-name" placeholder="이름을 입력해 주세요">
                        </div>
                        <div class="inputs">
                            <label for="partner-phone">연락처</label>
                            <input type="number" id="partner-phone" placeholder="-없이 입력해 주세요">
                        </div>
                    </div>

                    <!-- 선택 정보 수집 동의 -->
                    <div class="consent-box">
                        <input type="checkbox" id="consent">
                        <label for="consent" class="consent">
                            선택 정보 수집 및 이용 동의
                        </label>
                        <p class="consent-description">
                            원활한 정보 제공을 위해 선택 정보 이용 동의를 해주세요.
                        </p>
                        <a href="#" class="consent-link">내용보기</a>
                    </div>

                    <div class="message">
                        <label for="message" class="message-title">전달사항</label>
                        <textarea id="message" placeholder="ex) 예약일 마감 시 참고사항을 알려주세요" maxlength="200"></textarea>
                        <span class="char-count" id="char-count">0/200자</span>
                    </div>
                </div>

                <!-- 버튼 -->
                <section class="btn">
                    <a href="${pageContext.request.contextPath}/visitSt2"><button class="btn-pre">이전</button></a>
                    <a href="${pageContext.request.contextPath}/admin/main"><button id="modal-btn" class="btn-nxt">예약 신청</button></a>

                </section>
            </div>
            <!-- 예약 확인 모달창 -->
            <section id="modal" class="modal">
                <div class="modal-content">
                    <h2 class="modal-q">예약신청 하시겠습니까?</h2>
                    <p>신청해주신 내용으로 업체 방문 상담이 예약되며,
                        <br>예약 확정은 24시간 이내 메일로 보내드립니다.</p>
                    <div class="modal-btn">
                        <a href="#"><button class="check-btn">확인</button></a>
                        <a href="#"><button class="cancel-btn">취소</button></a>
                    </div>
                </div>
            </section>

            <!-- 예약 완료 모달창 -->
            <section id="modal2" class="modal2">
                <div class="modal-content">
                    <h2 class="modal-complete">예약이 완료되었습니다!</h2>
                    <div class="modal-btn-suc">
                        <a href="${pageContext.request.contextPath}/weddinghall/detail/${card.companyId}"><button class="check-btn-suc">확인</button></a>
                    </div>
                </div>
            </section>

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
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <script src="${pageContext.request.contextPath}resources/js/reservation/hall/visitSt3.js"></script>
</body>
</html>
