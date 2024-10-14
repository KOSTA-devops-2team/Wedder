<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>weddinghallDetail</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/company/weddinghall/weddinghallDetail.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/company/weddinghall/reviewSearchModal.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/company/weddinghall/weddinghallDetail.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner1100">
    <c:forEach var="hall" items="${hallDetail}">
        <!-- 1. 업체 설명 + 이미지 캐러셀 -->
        <section class="description">
            <div class="main-title-container">
                <h1>[${hall.location}] ${hall.companyName}</h1>
                <div id="tags-container">
                    <!-- 태그 -->
                </div>
                <p>
                    ${hall.introduce}
                </p>
            </div>
            <div class="carousel-container">
                <div class="carousel-inner">
                    <c:forEach var="img" items="${imgList}">
                        <div class="company-image-item">
                            <img
                                    src="${img.imgUrl}"
                                    alt="웨딩홀 메인 이미지${img.imgSeq}"
                            />
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        </c:forEach>

        <!-- 2. 업체 정보 + 지도-->
        <section class="information">
            <div class="title-container">
                <h2>Information</h2>
<%--                <a href="reviewModal" id="review-link">후기 보러가기 >>></a>--%>
            </div>
<%--            <div id="modal-container"></div>--%>

            <c:forEach var="hall" items="${hallDetail}">
            <div class="info-container">
                <!-- 왼쪽 정보 -->
                <table class="info-table">
                    <tr>
                        <th>주소</th><td>${hall.companyAddress}</td>
                    </tr>
                    <tr>
                        <th>연락처</th><td>${hall.phoneNum}</td>
                    </tr>
                    <tr>
                        <th>운영 시간</th><td>${hall.operationHours}</td>
                    </tr>
                    <tr>
                        <th>예식 유형</th><td>${hall.hallDto.hallType}</td>
                    </tr>
                    <tr>
                        <th>식사비</th><td>${hall.hallDto.mealPrice}</td>
                    </tr>
                    <tr>
                        <th>보증인원</th><td>${hall.hallDto.minPeople}</td>
                    </tr>
                    <tr>
                        <th>주차</th><td>${hall.hallDto.parking}</td>
                    </tr>
                </table>
                <!-- 오른쪽 정보 -->
                <div>
                    <table class="info-table">
                        <tr>
                            <th>지도</th>
                        </tr>
                    </table>
                    <div class="info-map">
                        <%@ include file="/WEB-INF/views/common/mapApi.jsp" %>
                    </div>
                </div>
            </div>
            <div class="buttons">
                <button class="like-btn">찜하기</button>
                <a href="${pageContext.request.contextPath}/weddinghall"><button class="list-btn">목록</button></a>
            </div>
        </section>
        </c:forEach>

        <!-- 3. 예식일정 현황-->
        <section class="schedule">
            <div class="title-container">
                <h2>마리아쥬스퀘어 예식 현황</h2>
            </div>

            <div class="schedule-container">
                <div class="calendar">
                    <h4>
                        ✔️ 예식을 희망하는 날짜에 예약이 가능한지 확인해
                        보세요
                    </h4>
                    <div id="calendar">
                        <%@ include file="/WEB-INF/views/company/weddinghall/weddinghallCalendar.jsp" %>
                    </div>
                </div>
<%--                <div class="schedule-choose">--%>
<%--                    <div class="schedule-choose-container">--%>
<%--                        <div>--%>
<%--                            <span></span>--%>
<%--                            <h3>가능한 일정만 보기</h3>--%>
<%--                        </div>--%>
<%--                        <div class="time-lists">--%>
<%--                            <div class="time-list">--%>
<%--                                <span>10:00</span>--%>
<%--                                <span>[웨딩홀] 마리아쥬스퀘어</span>--%>
<%--                            </div>--%>
<%--                            <div class="time-list">--%>
<%--                                <span>12:00</span>--%>
<%--                                <span>[웨딩홀] 마리아쥬스퀘어</span>--%>
<%--                            </div>--%>
<%--                            <div class="time-list">--%>
<%--                                <span>14:00</span>--%>
<%--                                <span>[웨딩홀] 마리아쥬스퀘어</span>--%>
<%--                            </div>--%>
<%--                            <div class="time-list">--%>
<%--                                <span>16:00</span>--%>
<%--                                <span>[웨딩홀] 마리아쥬스퀘어</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <a href="visitSt1">--%>
<%--                        <button class="schedule-button">--%>
<%--                            방문 상담 신청 하러가기--%>
<%--                        </button>--%>
<%--                    </a>--%>
<%--                </div>--%>
            </div>
        </section>

        <!-- 4. 웨딩홀 견적 계산기-->
        <section class="estimator">
            <div class="title-container">
                <h2>웨딩홀 견적 계산기</h2>
            </div>
            <div class="grid-container">
                <div class="section">
                    <h2>기본 사용료</h2>
                    <table>
                        <tr>
                            <th>선택</th>
                            <th>홀 명칭</th>
                            <th>음식사용료(대관비)</th>
                            <th>최소보증인원</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox" checked /></td>
                            <td>에드토홀</td>
                            <td>7,000,000원</td>
                            <td>200명</td>
                        </tr>
                    </table>
                </div>
                <div class="section">
                    <h2>예식 희망월</h2>
                    <div class="month-grids">
                        <button class="month-grid">1월</button>
                        <button class="month-grid">2월</button>
                        <button class="month-grid">3월</button>
                        <button class="month-grid">4월</button>
                        <button class="month-grid">5월</button>
                        <button class="month-grid">6월</button>
                        <button class="month-grid">7월</button>
                        <button class="month-grid">8월</button>
                        <button class="month-grid">9월</button>
                        <button class="month-grid">10월</button>
                        <button class="month-grid">11월</button>
                        <button class="month-grid">12월</button>
                    </div>
                </div>
                <div class="section">
                    <h2>식사가격</h2>
                    <table>
                        <tr>
                            <th>선택</th>
                            <th>식사 유형</th>
                            <th>가격</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>양식(A코스)</td>
                            <td>70,000원</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>한식(B코스)</td>
                            <td>70,000원</td>
                        </tr>
                    </table>
                </div>
                <div class="section">
                    <h2>예식 시간</h2>
                    <table>
                        <tr>
                            <th>선택</th>
                            <th>시간</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>오전(~12:00)</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>점심(12:00~14:30)</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>오후(14:30~17:00)</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>저녁(17:00~)</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>시간 무관</td>
                        </tr>
                    </table>
                </div>
                <div class="section">
                    <h2>옵션</h2>
                    <table>
                        <tr>
                            <th>선택</th>
                            <th>구분</th>
                            <th>가격</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>웨딩 디렉팅</td>
                            <td>600,000원</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>연주 피아노 3중주</td>
                            <td>330,000원</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>사회자</td>
                            <td>350,000원</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" /></td>
                            <td>꽃장식</td>
                            <td>4,500,000원</td>
                        </tr>
                    </table>
                </div>

                <div class="section result">
                    <h2>예상 하객수</h2>
                    <p class="result-sub-title">
                        최소보증인원 이상으로 계산이 가능합니다. 100단위로
                        작성해주세요
                    </p>
                    <div class="guest-num">
                        <span>예상 하객수 </span>
                        <input type="number" value="100" /> 명
                    </div>
                </div>

                <div class="section estimator-warning">
                    <h2>꼭 확인해주세요!</h2>
                    <p>
                        ✔️ 이 견적은 웨딩홀 기본 가격 정보를 단순 계산한
                        참고용 견적입니다.
                    </p>
                    <p>
                        ✔️ 실제견적과 상이할 수 있으며, 웨딩플래너는 이에
                        대한 귀책 사유가 따르지 않습니다.
                    </p>
                </div>

                <div class="section result-calc">
                    <button class="calculate-button" onclick="calculate()">
                        견적 계산하기
                    </button>
                    <span>정상가 기준 견적(부가세 포함) : </span>
                    <span>276,000,000원</span>
                </div>
            </div>
        </section>

        <!-- 5. 비슷한 가격대 웨딩홀 -->
        <section class="similar">
            <div class="hd__inner1100">
                <div class="title-container noline">
                    <h2>비슷한 가격대 웨딩홀</h2>
                </div>
                <div class="similar-container">
                    <div class="similar-inner">
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="similar-buttons">
                    <button
                            class="similar-button left"
                            id="similar-prevButton"
                    >
                        <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/left-arrow.png"
                        />
                    </button>
                    <div class="currentPage" id="similar-currentPage"></div>
                    <div class="slice">/</div>
                    <div class="totalPages" id="similar-totalPages"></div>
                    <button
                            class="similar-button right"
                            id="similar-nextButton"
                    >
                        <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/right-arrow.png"
                        />
                    </button>
                </div>
            </div>
        </section>

        <!-- 6. 다른 고객이 함께 본 상품 -->
        <section class="recommend">
            <div class="hd__inner1100">
                <div class="title-container noline">
                    <h2>다른 고객이 함께 본 상품</h2>
                </div>
                <div class="recommend-container">
                    <div class="recommend-inner">
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                                        alt="웨딩홀 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강동구</p>
                                <h2>더베네치아</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="recommend-buttons">
                    <button class="recommend-button left" id="prevButton">
                        <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/left-arrow.png"
                        />
                    </button>
                    <div class="currentPage" id="currentPage"></div>
                    <div class="slice">/</div>
                    <div class="totalPages" id="totalPages"></div>
                    <button class="recommend-button right" id="nextButton">
                        <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/right-arrow.png"
                        />
                    </button>
                </div>
            </div>
        </section>
    </div>
    <div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</body>
</html>
