<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>mypage</title>
    <!-- 링크 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estimate/estimateCompany.css"/>
    <!-- 스크립트 -->
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/estimate/estimateCompany.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="hd__inner1100">
    <div class="container">
        <div class="container-title">
            <p>Estimate</p>
            <p class="description">원하는 조건의 스튜디오, 드레스 메이크업 업체를 조합해 가격을 알아봐요</p>
        </div>
        <!-- 스드메-->
        <div class="tabs">
            <div class="tab">스튜디오</div>
            <div class="tab">드레스</div>
            <div class="tab">헤어메이크업</div>
        </div>
        <!-- 필터 -->
        <div class="filter">
            <button id="modal-btn" class="region-btn">지역</button>
            <button>날짜</button>
            <button id="modal-btn" class="budget-btn">예산</button>
            <div class="search-box">
                <input type="text" placeholder="업체명으로 검색">
                <button class="search-btn">검색하기</button>
            </div>
        </div>
        <div class="divide">
            <!-- 스튜디오 그리드 -->
            <section class="body">
                <div class="body-studio">
                    <div class="body-grid">
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                    </div>
                    <div class="similar-buttons">
                        <button class="similar-button left" id="similar-prevButton">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/left-arrow.png"
                            />
                        </button>
                        <div class="current-page" id="similar-currentPage">1</div>
                        <div class="slice">/</div>
                        <div class="total-pages" id="similar-totalPages">3</div>
                        <button class="similar-button right" id="similar-nextButton">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/right-arrow.png"
                            />
                        </button>
                    </div>
                </div>
            </section>
            <!--드레스 그리드-->
            <section class="body">
                <div class="body-dress">
                    <div class="body-grid">
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                     alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                    </div>
                    <div class="similar-buttons">
                        <button class="similar-button left" id="similar-prevButton">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/left-arrow.png"
                            />
                        </button>
                        <div class="current-page" id="similar-currentPage">1</div>
                        <div class="slice">/</div>
                        <div class="total-pages" id="similar-totalPages">3</div>
                        <button class="similar-button right" id="similar-nextButton">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/right-arrow.png"
                            />
                        </button>
                    </div>
                </div>
            </section>
            <!-- 드레스 메이크업-->
            <section class="body">
                <div class="body-makeup">
                    <div class="body-grid">
                        <div class="item">
                            <div class="image">
                                <img src="../../assets/images/storage-makeup.png" alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="../../assets/images/storage-makeup.png" alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="../../assets/images/storage-makeup.png" alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="../../assets/images/storage-makeup.png" alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="../../assets/images/storage-makeup.png" alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image">
                                <img src="../../assets/images/storage-makeup.png" alt="Wedding Photo" width="100">
                            </div>
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                                <div class="address">서울특별시 서초구 신반포로 41길 7</div>
                                <a href="#" class="link">업체 보러가기 >></a>
                            </div>
                        </div>
                    </div>
                    <div class="similar-buttons">
                        <button class="similar-button left" id="similar-prevButton">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/left-arrow.png"
                            />
                        </button>
                        <div class="current-page" id="similar-currentPage">1</div>
                        <div class="slice">/</div>
                        <div class="total-pages" id="similar-totalPages">3</div>
                        <button class="similar-button right" id="similar-nextButton">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/right-arrow.png"
                            />
                        </button>
                    </div>
                </div>
            </section>
            <div class="select-container">
                <div class="select-list">
                    <div class="top">
                        <div class="select-title">선택하신 목록</div>
                        <div class="select-item">
                            <div class="detail">
                                <div class="title">S 스튜디오</div>
                            </div>
                        </div>
                    </div>
                    <div class="price">
                        <div class="price-regular">
                            <span>정상가</span><span>330,000원</span>
                        </div>
                        <div class="price-discount">
                            <span>쿠폰/포인트 할인가</span><span class="color">-0원</span>
                        </div>
                        <div class="price-total">
                            <span>최종 금액</span><span>330,000원</span>
                        </div>
                        <div class="reselection">
                            <a href=""><span class="material-symbols-outlined">
                                            replay
                                            </span>업체 다시 선택</a>
                        </div>
                    </div>
                </div>
                <div class="note">
                    <p class="note-bold">꼭 확인하세요!</p>
                    <p>- 예약 및 결제는 업체별로 진행됩니다.</p>
                    <p>- 선택한 날짜에 따라 업체의 예약 가능 여부가 달라질 수 있습니다.</p>
                    <p>- 최종 금액은 실제 결제 시 변동될 수 있습니다.</p>
                </div>
            </div>
        </div>
        <div class="btn">
            <button class="back">이전</button>
            <button onclick="location.href='estimateDetail.html'" class="next">다음으로</button>
        </div>
    </div>
    <!-- 모달창 -->
    <section id="modal" class="modal-region">
        <div class="modal-content">
            <h2 class="modal-q">지역</h2>
            <p>위치 조건을 통해 웨딩홀을 알아보세요</p>
            <div class="dropdown">
                <select id="options" class="options">
                    <option value="option1">서울</option>
                    <option value="option2">경기</option>
                    <option value="option3">강원</option>
                    <option value="option4">충북</option>
                    <option value="option5">충남</option>
                    <option value="option6">전북</option>
                    <option value="option7">전남</option>
                    <option value="option8">경북</option>
                    <option value="option9">경남</option>
                    <option value="option10">제주</option>
                </select>
                <select id="options" class="options">
                    <option value="option1">Option 1</option>
                    <option value="option2">Option 2</option>
                    <option value="option3">Option 3</option>
                </select>
            </div>
            <div class="modal-btn">
                <a href="#">
                    <button class="apply-btn">Apply</button>
                </a>
                <a href="#">
                    <button class="cancel-btn">취소</button>
                </a>
            </div>
        </div>
    </section>
    <section id="modal" class="modal-budget">
        <div class="modal-content">
            <h2 class="modal-q">예산</h2>
            <p>위치 조건을 통해 웨딩홀을 알아보세요</p>
            <div class="dropdown">
                <select id="options" class="options">
                    <option value="option1">100만원</option>
                    <option value="option2">200만원</option>
                    <option value="option3">300만원</option>
                </select>
                <select id="options" class="options">
                    <option value="option1">400만원</option>
                    <option value="option2">500만원</option>
                    <option value="option3">600만원</option>
                </select>
            </div>
            <div class="modal-btn">
                <a href="#">
                    <button class="apply-btn">Apply</button>
                </a>
                <a href="#">
                    <button class="cancel-btn">취소</button>
                </a>
            </div>
        </div>
    </section>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
