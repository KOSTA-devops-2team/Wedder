<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>makeupDetail</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/company/makeup/makeupDetail.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/company/makeup/makeupDetail.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner1100">
    <c:forEach var="company" items="${makeupDetail}">
        <!-- 1. 업체 설명 + 이미지 캐러셀 -->
        <section class="description">
            <div class="main-title-container">
                <h1>[${company.location}] ${company.companyName}</h1>
                <div id="tags-container">
                    <!-- 태그 -->
                </div>
                <p>
                    ${company.introduce}
                </p>
            </div>
            <div class="carousel-container">
                <div class="carousel-inner">
                    <c:forEach var="img" items="${imgList}">
                        <div class="company-image-item">
                            <img
                                    src="${img.imgUrl}"
                                    alt="메이크업 메인 이미지${img.imgSeq}"
                            />
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <!-- 2. 업체 정보 + 지도-->
        <section class="information">
            <div class="title-container">
                <h2>${company.companyName} 정보</h2>
<%--                <a href="#" id="review-link">후기 보러가기 >>></a>--%>
            </div>

            <div class="info-container">
                <!-- 왼쪽 정보 -->
                <table class="info-table">
                    <tr>
                        <th>주소</th><td>${company.companyAddress}</td>
                    </tr>
                    <tr>
                        <th>연락처</th><td>${company.phoneNum}</td>
                    </tr>
                    <tr>
                        <th>운영 시간</th><td>${company.operationHours}</td>
                    </tr>
                    <tr>
                        <th>상품 유형</th><td>${company.makeupDto.makeupType}</td>
                    </tr>
                    <tr>
                        <th>시술 대상</th>
                        <td>${company.makeupDto.target}</td>
                    </tr>
                    <tr>
                        <th>시술자 직급</th>
                        <td>${company.makeupDto.position}</td>
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
        </section>

        <!-- 3. 일정 현황-->
        <section class="schedule">
            <div class="title-container">
                <h2>${company.companyName} 일정 현황</h2>
            </div>

            <div class="schedule-container">
                <div class="calendar">
                    <h4>
                        ✔️ 시술을 희망하는 날짜에 예약이 가능한지 확인해
                        보세요
                    </h4>
                    <div id="calendar">
                        <%@ include file="/WEB-INF/views/company/weddinghall/companyCalendar.jsp" %>
                    </div>
<%--                    <a href="">--%>
<%--                        <button class="schedule-button">예약하기</button>--%>
<%--                    </a>--%>
                </div>
            </div>
        </section>
    </c:forEach>

        <!-- 4. 세부 옵션 -->
        <section class="estimator">
            <div class="title-container">
                <h2>메이크업 추가 옵션</h2>
            </div>
            <div class="grid-container">
                <div class="section">
                    <div class="estimate-info">
                        <div class="section estimator-warning">
                            <h2>꼭 확인해주세요!</h2>
                            <p>
                                ✔️ 업체에 직접 결제하는 추가 비용이 있을 수 있어요.
                            </p>
                            <p>
                                ✔️ 실제 비용과 다를 수 있으니, 상품 이용 전 업체를 통해 꼭 확인하세요.
                            </p>
                        </div>
                    </div>

                    <table class="option-table">
                        <tr>
                            <th>옵션명</th>
                            <th>상세 설명</th>
                            <th>금액</th>
                        </tr>
                        <tr>
                            <td>새벽 시술</td>
                            <td>7:00 이전 시술 시작 시</td>
                            <td>55,000원</td>
                        </tr>
                        <tr>
                            <td>저녁 시술</td>
                            <td>19:30 이후 시술 시작 시</td>
                            <td>100,000원</td>
                        </tr>
                        <tr>
                            <td>헤어피스</td>
                            <td>헤어에 길이를 더하거나 장식 효과 연출 시 발생하는 비용</td>
                            <td>210,000원</td>
                        </tr>
                        <tr>
                            <td>직급 지정</td>
                            <td>시술자 지정 시 발생하는 비용</td>
                            <td>55,000원</td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>
        <div class="buttons">
            <button class="like-btn">찜하기</button>
            <a href="${pageContext.request.contextPath}/studio"><button class="list-btn">목록</button></a>
            <a href="${pageContext.request.contextPath}/estimate"><button class="estimate-btn">견적내러가기</button></a>
        </div>


        <!-- 5. 비슷한 가격대 업체 -->
        <section class="similar">
            <div class="hd__inner1100">
                <div class="title-container noline">
                    <h2>비슷한 가격대 메이크업샵</h2>
                </div>
                <div class="similar-container">
                    <div class="similar-inner">
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="${pageContext.request.contextPath}/resources/assets/images/makeup-2.jpg"
                                        alt="메이크업 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>뷰티진동희</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="${pageContext.request.contextPath}/resources/assets/images/makeup-3.jpg"
                                        alt="메이크업 이미지 2"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>얄루</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="${pageContext.request.contextPath}/resources/assets/images/makeup-12.jpg"
                                        alt="메이크업 이미지 3"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>바이엘린</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="${pageContext.request.contextPath}/resources/assets/images/makeup-5.jpg"
                                        alt="메이크업 이미지 4"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>우현증메르시</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="${pageContext.request.contextPath}/resources/assets/images/makeup-2.jpg"
                                        alt="메이크업 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>뷰티진동희</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="${pageContext.request.contextPath}/resources/assets/images/makeup-3.jpg"
                                        alt="메이크업 이미지 2"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>얄루</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="${pageContext.request.contextPath}/resources/assets/images/makeup-12.jpg"
                                        alt="메이크업 이미지 3"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>바이엘린</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="${pageContext.request.contextPath}/resources/assets/images/makeup-5.jpg"
                                        alt="메이크업 이미지 4"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>우현증메르시</h2>
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
<%--        <section class="recommend">--%>
<%--            <div class="hd__inner1100">--%>
<%--                <div class="title-container noline">--%>
<%--                    <h2>다른 고객이 함께 본 상품</h2>--%>
<%--                </div>--%>
<%--                <div class="recommend-container">--%>
<%--                    <div class="recommend-inner">--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="resources/assets/images/makeup-2.jpg"--%>
<%--                                        alt="메이크업 이미지 1"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>뷰티진동희</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="resources/assets/images/makeup-3.jpg"--%>
<%--                                        alt="메이크업 이미지 2"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>얄루</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="resources/assets/images/makeup-12.jpg"--%>
<%--                                        alt="메이크업 이미지 3"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>바이엘린</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="resources/assets/images/makeup-5.jpg"--%>
<%--                                        alt="메이크업 이미지 4"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>우현증메르시</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="resources/assets/images/makeup-2.jpg"--%>
<%--                                        alt="메이크업 이미지 1"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>뷰티진동희</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="resources/assets/images/makeup-3.jpg"--%>
<%--                                        alt="메이크업 이미지 2"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>얄루</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="resources/assets/images/makeup-12.jpg"--%>
<%--                                        alt="메이크업 이미지 3"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>바이엘린</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="resources/assets/images/makeup-5.jpg"--%>
<%--                                        alt="메이크업 이미지 4"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>우현증메르시</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="recommend-buttons">--%>
<%--                    <button class="recommend-button left" id="prevButton">--%>
<%--                        <img--%>
<%--                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/left-arrow.png"--%>
<%--                        />--%>
<%--                    </button>--%>
<%--                    <div class="currentPage" id="currentPage"></div>--%>
<%--                    <div class="slice">/</div>--%>
<%--                    <div class="totalPages" id="totalPages"></div>--%>
<%--                    <button class="recommend-button right" id="nextButton">--%>
<%--                        <img--%>
<%--                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/right-arrow.png"--%>
<%--                        />--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>
    </div>
    <div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</body>
</html>
