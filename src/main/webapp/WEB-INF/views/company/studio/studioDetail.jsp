<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>studioDetail</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/company/studio/studioDetail.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/company/studio/studioDetail.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner1100">
    <c:forEach var="studio" items="${studioDetail}">
        <!-- 1. 업체 설명 + 이미지 캐러셀 -->
        <section class="description">
            <div class="main-title-container">
                <h1>[${studio.location}] ${studio.companyName}</h1>
                <div id="tags-container">
                    <!-- 태그 -->
                </div>
                <p>
                    ${studio.introduce}
                </p>
            </div>
            <div class="carousel-container">
                <div class="carousel-inner">
                    <c:forEach var="img" items="${imgList}">
                        <div class="company-image-item">
                            <img
                                    src="${img.imgUrl}"
                                    alt="스튜디오 메인 이미지${img.imgSeq}"
                            />
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <!-- 2. 업체 정보 + 지도-->
        <section class="information">
            <div class="title-container">
                <h2>${studio.companyName} 정보</h2>
            </div>

            <div class="info-container">
                <!-- 왼쪽 정보 -->
                <table class="info-table">
                    <tr>
                        <th>주소</th><td>${studio.companyAddress}</td>
                    </tr>
                    <tr>
                        <th>연락처</th><td>${studio.phoneNum}</td>
                    </tr>
                    <tr>
                        <th>운영 시간</th><td>${studio.operationHours}</td>
                    </tr>
                    <tr>
                        <th>촬영 유형</th>
                        <td>${studio.studioDto.shootType}</td>
                    </tr>
                    <tr>
                        <th>상품 구성</th>
                        <td>${studio.studioDto.product}</td>
                    </tr>
                    <tr>
                        <th>촬영 소요 시간</th>
                        <td>${studio.studioDto.shootDuration}</td>
                    </tr>
                    <tr>
                        <th>보유 소품</th>
                        <td>${studio.studioDto.props}</td>
                    </tr>
                    <tr>
                        <th>촬영 의상</th>
                        <td>${studio.studioDto.rentalClothing}</td>
                    </tr>
                    <tr>
                        <th>헤어 변형 출장 업체</th>
                        <td>${studio.studioDto.hairChangeAvailability}</td>
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
                <h2>${studio.companyName} 일정 현황</h2>
            </div>

            <div class="schedule-container">
                <div class="calendar">
                    <h4>
                        ✔️ 촬영을 희망하는 날짜에 예약이 가능한지 확인해
                        보세요
                    </h4>
                    <div id="calendar"></div>
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/calendar.png"
                    />
                </div>
                <div class="schedule-choose">
                    <div class="schedule-choose-container">
                        <div>
                            <span></span>
                            <h3>가능한 일정만 보기</h3>
                        </div>
                        <div class="time-lists">
                            <div class="time-list">
                                <span>10:00</span>
                                <span>[${studio.category}] ${studio.companyName}</span>
                            </div>
                            <div class="time-list">
                                <span>12:00</span>
                                <span>[${studio.category}] ${studio.companyName}</span>
                            </div>
                            <div class="time-list">
                                <span>14:00</span>
                                <span>[${studio.category}] ${studio.companyName}</span>
                            </div>
                            <div class="time-list">
                                <span>16:00</span>
                                <span>[${studio.category}] ${studio.companyName}</span>
                            </div>
                        </div>
                    </div>
                <%--<a href="reservationOption">--%>
                    <button class="schedule-button">예약하기</button>
                    <%--</a>--%>
                </div>
            </div>
        </section>
    </c:forEach>
        <!-- 4. 세부 옵션 -->
        <section class="estimator">
            <div class="title-container">
                <h2>스튜디오 추가 옵션</h2>
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
<%--                        <c:forEach var="option" items="${optionList}">--%>
<%--                            <tr>--%>
<%--                                <td>${option.optioName}</td>--%>
<%--                                <td>${option.optionDescription}</td>--%>
<%--                                <td>${option.optionPrice}</td>--%>
<%--                            </tr>--%>
<%--                        </c:forEach>--%>
                        <tr>
                            <td>야간 촬영</td>
                            <td>17시 이후부터 촬영 가능</td>
                            <td>220,000원</td>
                        </tr>
                        <tr>
                            <td>들러리촬영</td>
                            <td>스튜디오촬영 / 본식 동반 (1인)</td>
                            <td>110,000원</td>
                        </tr>
                        <tr>
                            <td>애견동반 촬영</td>
                            <td>애견동반 촬영 시 발생하는 비용</td>
                            <td>100,000원</td>
                        </tr>
                        <tr>
                            <td>로드씬 추가</td>
                            <td>로드씬 촬영 시 발생하는 비용</td>
                            <td>110,000원</td>
                        </tr>
                        <tr>
                            <td>옥상씬 촬영</td>
                            <td>옥상씬 촬영 시 발생하는 비용</td>
                            <td>110,000원</td>
                        </tr>
                        <tr>
                            <td>앨범 추가</td>
                            <td>앨범 페이지 1장당 추가 비용</td>
                            <td>33,000원</td>
                        </tr>
                        <tr>
                            <td>의상 대여</td>
                            <td>대여 의상 1벌당 추가 비용</td>
                            <td>100,000원</td>
                        </tr>
                        <tr>
                            <td>촬영수정본 컨펌</td>
                            <td>촬영후 수정본 1번 더 컨펌</td>
                            <td>220,000원</td>
                        </tr>
                        <tr>
                            <td>작가 지정</td>
                            <td>촬영 작가 지정시 발생하는 비용</td>
                            <td>220,000원</td>
                        </tr>
                        <tr>
                            <td>촬영 시간 추가</td>
                            <td>5시간 이상 촬영 시, 30분 추가당 발생하는 비용</td>
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
                    <h2>비슷한 가격대 스튜디오</h2>
                </div>
                <div class="similar-container">
                    <div class="similar-inner">
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/studio/studio8_1.webp"
                                        alt="스튜디오 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <h2>이포토에세이</h2>
                                <p>경기도 광주시</p>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/studio/studio14_1.jpg"
                                        alt="스튜디오 이미지 2"
                                />
                            </div>
                            <div class="similar-item-title">
                                <h2>슈가제이</h2>
                                <p>서울시 강남구</p>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/studio/studio10_1.webp"
                                        alt="스튜디오 이미지 3"
                                />
                            </div>
                            <div class="similar-item-title">
                                <h2>어바웃제인</h2>
                                <p>서울시 서초구</p>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/studio/studio16_1.webp"
                                        alt="스튜디오 이미지 4"
                                />
                            </div>
                            <div class="similar-item-title">
                                <h2>아테소스튜디오</h2>
                                <p>서울시 강남구</p>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/studio/studio20_1.webp"
                                        alt="스튜디오 이미지 5"
                                />
                            </div>
                            <div class="similar-item-title">
                                <h2>준유스튜디오</h2>
                                <p>서울시 강남구</p>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/studio/studio15_1.webp"
                                        alt="스튜디오 이미지 6"
                                />
                            </div>
                            <div class="similar-item-title">
                                <h2>느와르블랑 하우스</h2>
                                <p>서울시 강남구</p>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/studio/studio6_2.jpg"
                                        alt="스튜디오 이미지 7"
                                />
                            </div>
                            <div class="similar-item-title">
                                <h2>포에버마인스튜디오</h2>
                                <p>서울시 강남구</p>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/studio/studio4_1.jpg"
                                        alt="스튜디오 이미지 8"
                                />
                            </div>
                            <div class="similar-item-title">
                                <h2>가을스튜디오</h2>
                                <p>서울시 송파구</p>
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
<%--                                        src="${pageContext.request.contextPath}/resources/images/studio-13.jpg"--%>
<%--                                        alt="스튜디오 이미지 1"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>로브아 스튜디오</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="${pageContext.request.contextPath}/resources/images/studio-14.jpg"--%>
<%--                                        alt="스튜디오 이미지 2"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>로이 스튜디오</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="${pageContext.request.contextPath}/resources/images/studio-2.jpg"--%>
<%--                                        alt="스튜디오 이미지 3"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>리저브 스튜디오</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="${pageContext.request.contextPath}/resources/images/studio-5.jpg"--%>
<%--                                        alt="스튜디오 이미지 4"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>스튜디오 사이</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="${pageContext.request.contextPath}/resources/images/studio-13.jpg"--%>
<%--                                        alt="스튜디오 이미지 1"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>로브아 스튜디오</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="${pageContext.request.contextPath}/resources/images/studio-14.jpg"--%>
<%--                                        alt="스튜디오 이미지 2"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>로이 스튜디오</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="${pageContext.request.contextPath}/resources/images/studio-2.jpg"--%>
<%--                                        alt="스튜디오 이미지 3"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>리저브 스튜디오</h2>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="recommend-item">--%>
<%--                            <div class="recommend-item-img">--%>
<%--                                <img--%>
<%--                                        src="${pageContext.request.contextPath}/resources/images/studio-5.jpg"--%>
<%--                                        alt="스튜디오 이미지 4"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                            <div class="recommend-item-title">--%>
<%--                                <p>서울특별시 강남구</p>--%>
<%--                                <h2>스튜디오 사이</h2>--%>
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