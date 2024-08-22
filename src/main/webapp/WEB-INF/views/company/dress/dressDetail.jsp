<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>selectDate</title>
    <link rel="stylesheet" href="resources/css/common/reset.css" />
    <link rel="stylesheet" href="resources/css/dress/dressDetail.css" />
    <script defer src="resources/js/main/main.js"></script>
    <script defer src="resources/js/dress/dressDetail.js"></script>
</head>
<body>
    <div> <%@ include file="/resources/components/header/headerV2.jsp" %></div>
    <div class="hd__inner1100">
        <!-- 1. 업체 설명 + 이미지 캐러셀 -->
        <section class="description">
            <div class="main-title-container">
                <h1>[강남] 셀린아뜰리에</h1>
                <div id="tags-container">
                    <!-- 태그 -->
                </div>
                <p>
                    세련된 클래식함이 모토입니다.
                    그 어느곳에서도 볼수 없는 고급스러운 모티브와 스타일로 다양한 라인의 드레스를 자체제작합니다.
                </p>
            </div>
            <div class="carousel-container">
                <div class="carousel-inner">
                    <div class="company-image-item">
                        <img
                                src="resources/assets/images/dress-1.jpg"
                                alt="드레스 메인 이미지1"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/assets/images/dress-8.jpg"
                                alt="드레스 메인 이미지2"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/assets/images/dress-9.jpg"
                                alt="드레스 메인 이미지3"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/assets/images/dress-10.jpg"
                                alt="드레스 메인 이미지4"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/assets/images/dress-11.jpg"
                                alt="드레스 메인 이미지5"
                        />
                    </div>
                    <div class="company-image-item">
                        <img
                                src="resources/assets/images/dress-12.jpg"
                                alt="드레스 메인 이미지6"
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
                        <td>리허설 3벌 + 본식 1벌</td>
                    </tr>
                    <tr>
                        <th>기본 피팅비</th>
                        <td>55,000원</td>
                    </tr>
                    <tr>
                        <th>홈페이지</th>
                        <td>www.instagram.com/celineatelier_wedding</td>
                    </tr>
                </table>
                <!-- 오른쪽 정보 -->
                <div>
                    <table class="info-table">
                        <tr>
                            <th>주소</th>
                            <td>서울 강남구 압구정로80길 30 </td>
                        </tr>
                        <tr>
                            <th>대중교통 </th>
                            <td>지하철 수인분당선 압구정로데오역 </td>
                        </tr>
                    </table>
                    <div class="info-map">
                        <img
                                src="resources/assets/images/dress-map.png"
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
                <h2>셀린아뜰리에 상품 정보</h2>
            </div>

            <div class="schedule-container">
                <div class="calendar">
                    <h4>
                        ✔️ 피팅을 희망하는 날짜에 예약이 가능한지 확인해
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
                                <span>[드레스] 셀린아뜰리에</span>
                            </div>
                            <div class="time-list">
                                <span>12:00</span>
                                <span>[드레스] 셀린아뜰리에</span>
                            </div>
                            <div class="time-list">
                                <span>14:00</span>
                                <span>[드레스] 셀린아뜰리에</span>
                            </div>
                            <div class="time-list">
                                <span>16:00</span>
                                <span>[드레스] 셀린아뜰리에</span>
                            </div>
                        </div>
                    </div>
                    <a href="">
                        <button class="schedule-button">예약하기</button>
                    </a>
                </div>
            </div>
        </section>

        <!-- 4. 세부 옵션 -->
        <section class="estimator">
            <div class="title-container">
                <h2>드레스 추가 옵션</h2>
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
                            <td>헬퍼비</td>
                            <td>리허설 / 본식 각각 필수 사항</td>
                            <td>250,000원</td>
                        </tr>
                        <tr>
                            <td>블랙라벨 업그레이드</td>
                            <td>프리미엄 드레스 업그레이드</td>
                            <td>330,000원~</td>
                        </tr>
                        <tr>
                            <td>2부 드레스</td>
                            <td>예식 애프터 드레스 (화이트 or 컬러)</td>
                            <td>220,000원~</td>
                        </tr>
                        <tr>
                            <td>재피팅비</td>
                            <td>피팅 추가 1회당 발생하는 비용</td>
                            <td>100,000원</td>
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
                                        src="resources/assets/images/dress-2.jpg"
                                        alt="드레스 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>하우스 오브 에이미</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/assets/images/dress-3.jpg"
                                        alt="드레스 이미지 2"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로즈로사</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/assets/images/dress-6.jpg"
                                        alt="드레스 이미지 3"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>시작바이 이명순</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/assets/images/dress-7.jpg"
                                        alt="드레스 이미지 4"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>더화이트엘리자베스</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/assets/images/dress-2.jpg"
                                        alt="드레스 이미지 1"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>하우스 오브 에이미</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="../../assets/images/dress-3.jpg"
                                        alt="드레스 이미지 2"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로즈로사</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/assets/images/dress-6.jpg"
                                        alt="드레스 이미지 3"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>시작바이 이명순</h2>
                            </div>
                        </div>
                        <div class="similar-item">
                            <div class="similar-item-img">
                                <img
                                        src="resources/assets/images/dress-7.jpg"
                                        alt="드레스 이미지 4"
                                />
                            </div>
                            <div class="similar-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>더화이트엘리자베스</h2>
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
                                        src="resources/assets/images/dress-2.jpg"
                                        alt="드레스 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>하우스 오브 에이미</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/assets/images/dress-3.jpg"
                                        alt="드레스 이미지 2"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로즈로사</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/assets/images/dress-6.jpg"
                                        alt="드레스 이미지 3"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>시작바이 이명순</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/assets/images/dress-7.jpg"
                                        alt="드레스 이미지 4"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>더화이트엘리자베스</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/assets/images/dress-2.jpg"
                                        alt="드레스 이미지 1"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>하우스 오브 에이미</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/assets/images/dress-3.jpg"
                                        alt="드레스 이미지 2"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>로즈로사</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/assets/images/dress-6.jpg"
                                        alt="드레스 이미지 3"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>시작바이 이명순</h2>
                            </div>
                        </div>
                        <div class="recommend-item">
                            <div class="recommend-item-img">
                                <img
                                        src="resources/assets/images/dress-7.jpg"
                                        alt="드레스 이미지 4"
                                />
                            </div>
                            <div class="recommend-item-title">
                                <p>서울특별시 강남구</p>
                                <h2>더화이트엘리자베스</h2>
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
    <div><%@ include file="/resources/components/footer/footerV2.jsp" %></div>
    <script src="resources/js/weddingHall/reviewSearchModal.js"></script>
</body>
</html>
