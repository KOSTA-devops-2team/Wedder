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
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner1100">
        <!-- 1. 업체 설명 + 이미지 캐러셀 -->
        <section class="description">
            <div class="main-title-container">
                <h1>[강남] 비마이스튜디오</h1>
                <div id="tags-container">
                    <!-- 태그 -->
                </div>
                <p>
                    꾸미지 않은 이 순간의 자연스러움. 자연광 스튜디오로 층별
                    분리된 서로 다른 컨셉의 공간으로 야외씬, 테라스씬,
                    가든씬 등 다양한 배경으로 깨끗하고 자연스러운 인물+배경
                    중심의 촬영을 하는 스튜디오입니다.
                </p>
            </div>
            <div class="carousel-container">
                <div class="carousel-inner">
                    <div class="company-image-item">
                        <img
                                src="resources/images/studio-8.jpg"
                                alt="스튜디오 메인 이미지1"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/images/studio-3.jpg"
                                alt="스튜디오 메인 이미지2"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/images/studio-4.jpg"
                                alt="스튜디오 메인 이미지3"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/images/studio-12.jpg"
                                alt="스튜디오 메인 이미지4"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/images/studio-9.jpg"
                                alt="스튜디오 메인 이미지5"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/images/studio-11.jpg"
                                alt="스튜디오 메인 이미지6"
                        />
                    </div>
                </div>
            </div>
        </section>

        <!-- 2. 업체 정보 + 지도-->
        <section class="information">
            <div class="title-container">
                <h2>Information</h2>
                <a href="#" id="review-link">후기 보러가기 >>></a>
            </div>
            <!-- <div id="modal-container"></div> -->

            <div class="info-container">
                <!-- 왼쪽 정보 -->
                <table class="info-table">
                    <tr>
                        <th>지역</th>
                        <td>서울특별시 강남구</td>
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>02-111-1111</td>
                    </tr>
                    <tr>
                        <th>휴무일</th>
                        <td>월요일 휴무</td>
                    </tr>
                    <tr>
                        <th>영업 시간</th>
                        <td>10:00 ~ 19:00</td>
                    </tr>
                    <tr>
                        <th>기본 상품 구성</th>
                        <td>앨범 1권(20P) + 기본 액자 1개</td>
                    </tr>
                    <tr>
                        <th>촬영 소요 시간</th>
                        <td>4시간</td>
                    </tr>
                    <tr>
                        <th>보유 소품</th>
                        <td>조화부케, 웨딩슈즈</td>
                    </tr>
                    <tr>
                        <th>촬영 의상</th>
                        <td>총 4벌 (드레스 3벌, 캐주얼 1벌)</td>
                    </tr>
                    <tr>
                        <th>헤어 변형 출장 업체</th>
                        <td>가능</td>
                    </tr>
                    <tr>
                        <th>홈페이지</th>
                        <td>www.bemystudio.co.kr</td>
                    </tr>
                </table>
                <!-- 오른쪽 정보 -->
                <div>
                    <table class="info-table">
                        <tr>
                            <th>주소</th>
                            <td>서울 강남구 역삼로38길 6 </td>
                        </tr>
                        <tr>
                            <th>대중교통 </th>
                            <td>지하철 2호선 역삼역 </td>
                        </tr>
                    </table>
                    <div class="info-map">
                        <img
                                src="resources/images/studio-map.png"
                        />
                    </div>
                </div>
            </div>
            <div class="buttons">
                <button class="like-btn">찜하기</button>
                <button class="list-btn">목록</button>
                <button class="estimate-btn">견적함에 담기</button>
            </div>
        </section>

        <!-- 3. 일정 현황-->
        <section class="schedule">
            <div class="title-container">
                <h2>비마이스튜디오 상품 정보</h2>
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
                                <span>[스튜디오] 비마이스튜디오</span>
                            </div>
                            <div class="time-list">
                                <span>12:00</span>
                                <span>[스튜디오] 비마이스튜디오</span>
                            </div>
                            <div class="time-list">
                                <span>14:00</span>
                                <span>[스튜디오] 비마이스튜디오</span>
                            </div>
                            <div class="time-list">
                                <span>16:00</span>
                                <span>[스튜디오] 비마이스튜디오</span>
                            </div>
                        </div>
                    </div>
                    <a href="reservationOption">
                        <button class="schedule-button">예약하기</button>
                    </a>
                </div>
            </div>
        </section>

        <!-- 4. 세부 옵션 -->
        <section class="estimator">
            <div class="title-container">
                <h2>스튜디오 추가 옵션</h2>
            </div>
            <div class="grid-container">
                <div class="section">
                    <table class="option-table">
                        <tr>
                            <th>옵션명</th>
                            <th>상세 설명</th>
                            <th>금액</th>
                        </tr>
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
        </section>

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
                                        src="resources/images/studio-13.jpg"
                                        alt="스튜디오 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로브아 스튜디오</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/images/studio-14.jpg"
                                        alt="스튜디오 이미지 2"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로이 스튜디오</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/images/studio-2.jpg"
                                        alt="스튜디오 이미지 3"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>리저브 스튜디오</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/images/studio-5.jpg"
                                        alt="스튜디오 이미지 4"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>스튜디오 사이</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/images/studio-13.jpg"
                                        alt="스튜디오 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로브아 스튜디오</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/images/studio-14.jpg"
                                        alt="스튜디오 이미지 2"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로이 스튜디오</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/images/studio-2.jpg"
                                        alt="스튜디오 이미지 3"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>리저브 스튜디오</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/images/studio-5.jpg"
                                        alt="스튜디오 이미지 4"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>스튜디오 사이</h2>
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
                                        src="resources/images/studio-13.jpg"
                                        alt="스튜디오 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로브아 스튜디오</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/images/studio-14.jpg"
                                        alt="스튜디오 이미지 2"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로이 스튜디오</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/images/studio-2.jpg"
                                        alt="스튜디오 이미지 3"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>리저브 스튜디오</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/images/studio-5.jpg"
                                        alt="스튜디오 이미지 4"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>스튜디오 사이</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/images/studio-13.jpg"
                                        alt="스튜디오 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로브아 스튜디오</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/images/studio-14.jpg"
                                        alt="스튜디오 이미지 2"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로이 스튜디오</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/images/studio-2.jpg"
                                        alt="스튜디오 이미지 3"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>리저브 스튜디오</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/images/studio-5.jpg"
                                        alt="스튜디오 이미지 4"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>스튜디오 사이</h2>
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
    <script src="${pageContext.request.contextPath}/resources/js/company/studio/studioDetail.js"></script>
</body>
</html>
