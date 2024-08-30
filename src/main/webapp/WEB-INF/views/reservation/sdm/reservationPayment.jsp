<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>reservationPayment</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation/sdm/reservationPayment.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner960">
        <!-- 타이틀 -->
        <section class="title">
            <div class="title-sub">원하는 스튜디오, 드레스, 메이크업 업체를 예약해보세요.</div>
            <div class="title-main">Reservation</div>
        </section>

        <!-- 1. 이용자 정보 -->
        <section class="user-info">
            <h1>1. 이용자 정보</h1>
            <h3>원활한 서비스 이용을 위해 꼭 필요한 정보입니다.</h3>

            <div class="self">
                <h2>본인</h2>
                <div class="choose">
                    <div>
                        <input type="radio" id="self-bride" name="self" />
                        <label for="self-bride">신부</label>
                    </div>
                    <div>
                        <input type="radio" id="self-groom" name="self" />
                        <label for="self-groom">신랑</label>
                    </div>
                    <div>
                        <input type="radio" id="self-family" name="self" />
                        <label for="self-family">가족</label>
                    </div>
                </div>
                <table class="user-table">
                    <tr>
                        <th><label for="myname">성함</label></th>
                        <td>
                            <input type="text" name="myname" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label for="myphone">연락처</label>
                        </th>
                        <td>
                            <div class="phone-container">
                                <select name="myphone">
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="019">019</option>
                                </select>
                                <input
                                        type="text"
                                        name="partner-phone2"
                                        maxlength="4"
                                />
                                <input
                                        type="text"
                                        name="partner-phone3"
                                        maxlength="4"
                                />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="partner">
                <h2>배우자</h2>
                <div class="choose">
                    <div>
                        <input
                                type="radio"
                                id="partner-bride"
                                name="partner"
                        />
                        <label for="partner-bride">신부</label>
                    </div>
                    <div>
                        <input
                                type="radio"
                                id="partner-groom"
                                name="partner"
                        />
                        <label for="partner-groom">신랑</label>
                    </div>
                    <div>
                        <input
                                type="radio"
                                id="partner-family"
                                name="partner"
                        />
                        <label for="partner-family">가족</label>
                    </div>
                </div>
                <table class="user-table">
                    <tr>
                        <th><label for="partner-name">성함</label></th>
                        <td>
                            <input type="text" name="partner-name" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label for="partner-phone">연락처</label>
                        </th>
                        <td>
                            <div class="phone-container">
                                <select name="partner-phone">
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="019">019</option>
                                </select>
                                <input
                                        type="text"
                                        name="partner-phone2"
                                        maxlength="4"
                                />
                                <input
                                        type="text"
                                        name="partner-phone3"
                                        maxlength="4"
                                />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="dotLine"></div>

            <div class="request">
                <textarea
                        type="text"
                        placeholder="업체에 요청하실 내용을 적어주세요"
                ></textarea>
                <p>
                    예) 혼주 헤어 메이크업 구매 시, 메이크업을 받으실
                    가족분들의 관계 (어머니 2분, 언니, 남동생 등) 와
                    <br>대표로 연락이 가능하신 한 분의 이름과 연락처를 남겨주세요.
                </p>
            </div>
        </section>

        <!-- 2. 행사일 정보 -->
        <section class="event-info">
            <h1>2. 행사일 정보</h1>
            <div class="date-container">
                <label for="hope-date1" class="event-title">본식(희망) 일시</label>
                <div class="select-box">
                    <div>
                        <input type="text" class="hope-date" id="hope-date1" size="20" placeholder="0000-00-00, 00:00">
                    </div>
                    <div>
                        <a href=""><img class="icon-img" src="resources/images/calendar-icon.png" alt="달력 아이콘"></a>
                    </div>
                    <button class="non-select"><input type="checkbox">미정</button>
                </div>
            </div>
            <div class="date-container">
                <label for="hope-date2" class="event-title">본식(희망) 일시</label>
                <div class="select-box">
                    <div>
                        <input type="text" class="hope-date" id="hope-date2" placeholder="0000-00-00, 00:00">
                    </div>
                    <div>
                        <a href=""><img class="icon-img" src="resources/images/calendar-icon.png" alt="달력 아이콘"></a>
                    </div>
                    <button class="non-select"><input id="non-select" type="checkbox">미정</button>
                </div>
            </div>
            <div class="weddinghall-info">
                <label class="search-title" for="weddinghall-search">웨딩홀 정보</label>
                <div class="select-box">
                    <div>
                        <input type="search" class="weddinghall-search" id="weddinghall-search" placeholder="웨딩홀을 선택하세요.">
                    </div>
                    <div class="search-icon">
                        <img class="icon2-img" src="resources/images/search-icon2.png" alt="검색 아이콘">
                    </div>
                </div>
            </div>
        </section>


        <!-- 3. 주문상품 -->
        <section class="order-product">
            <div class="order-title">
                <h3>3. 주문상품</h3>
            </div>
            <div class="sub-title">
                <div class="order-sub-title">
                    <h4>카테고리</h4>
                </div>
                <div class="order-sub-title">
                    <h4>상품 정보</h4>
                </div>
                <div class="order-sub-title">
                    <h4>금액</h4>
                </div>
            </div>
            <div class="order-list">
                <div class="select-company">
                    <div class="select-category">
                        <p>스튜디오</p>
                    </div>
                    <div class="company-img">
                        <img src="resources/images/reserve-studio-company.png" alt="업체 이미지">
                    </div>
                    <div class="option-list">
                        <h5>비마이 스튜디오</h5>
                        <h6>[웨딩촬영] 베이직</h6>
                        <p>앨범 1권(20P) + 기본 액자 1개</p>
                    </div>
                    <div class="option-price">
                        <h4>810,000원</h4>
                    </div>
                </div>
                <div class="select-suboption">
                    <div class="select-category">
                        <p>옵션</p>
                    </div>
                    <div class="option-img">
                        <img src="resources/images/option1.png" alt="옵션 이미지1">
                    </div>
                    <div class="option-list">
                        <h5>야간 촬영</h5>
                        <p>17시 이후 부터 촬영 가능</p>
                    </div>
                    <div class="option-price">
                        <h4>220,000원</h4>
                    </div>
                </div>
                <div class="select-suboption">
                    <div class="select-category">
                        <p>옵션</p>
                    </div>
                    <div class="option-img">
                        <img src="resources/images/option5.png" alt="옵션 이미지5">
                    </div>
                    <div class="option-list">
                        <h5>들러리 촬영</h5>
                        <p>스튜디오 촬영 / 본식 동반(1인)</p>
                    </div>
                    <div class="option-price">
                        <h4>110,000원</h4>
                    </div>
                </div>
            </div>
            <div class="price-container">
                <div class="price-regular">
                    <p>정상가</p>
                    <p>1,140,000원</p>
                </div>
                <div class="discount">
                    <p>쿠폰/옵션 할인가</p>
                    <p>0원</p>
                </div>
                <div class="price-final">
                    <p>최종 금액</p>
                    <p>1,140,000원</p>
                </div>
            </div>
        </section>

        <!-- 4. 결제 -->
        <section class="payment">
            <div class="payment-method">
                <div class="payment-title">4. 결제수단선택</div>
                <div class="option1">
                    <button>신용카드</button>
                    <button>실시간 계좌이체</button>
                    <button>가상계좌</button>
                </div>
                <div class="option2">
                    <button>
                        <img
                                src="resources/images/naver.png"
                                alt="N Pay"
                        />
                    </button>
                    <button>
                        <img
                                src="resources/images/samsung.png"
                                alt="Samsung Pay"
                        />
                    </button>
                    <button>
                        <img
                                src="resources/images/kakao.png"
                                alt="Kakao Pay"
                        />
                    </button>
                    <button>
                        <img
                                src="resources/images/toss.png"
                                alt="Toss Pay"
                        />
                    </button>
                    <button>
                        <img
                                src="resources/images/payco.png"
                                alt="Payco"
                        />
                    </button>
                </div>

                <div class="promotion">
                    <h3>결제 프로모션</h3>
                    <div class="promotion-summary">
                        <span>하나카드</span>
                        <span>무이자할부</span>
                    </div>
                    <div class="promotion-details">
                        <h4>하나카드 최대 10만원 즉시할인</h4>
                        <p>
                            • 50만원/100만원/300만원/500만원 이상 구매시
                            1/2/6/10만원 즉시할인
                        </p>
                        <p>• 기간: 8/1~8/31</p>
                        <p>• 1QPAY 결제시에만 가능합니다.</p>
                        <p>• 간편결제는 즉시할인 대상에서 제외됩니다.</p>
                    </div>
                </div>
                <!-- 신용카드이용안내 -->
                <div class="card-use">
                    <h4>신용카드 이용안내</h4>
                    <p>
                        • KB국민, BC, 우리카드는 ISP 어플리케이션이
                        필요합니다.
                    </p>
                    <p>
                        • 30만원 이상, 사용가든 결제 시 공인인증서를 반드시
                        사용하도록 정하고 있습니다.
                    </p>
                </div>
            </div>
            <!-- 최종결제금액 부분 -->
            <div class="final-cost">
                <div class="final-cost-title">최종결제금액</div>
                <div class="final-cost-details">
                    <div class="cost-item">
                        <span>총 금액</span>
                        <div class="amount">
                            <span class="cost-amount">1,140,000</span>
                            <span class="currency">원</span>
                        </div>
                    </div>
                    <div class="cost-item">
                        <span>쿠폰 할인</span>
                        <div class="amount">
                            <span class="cost-amount">0</span>
                            <span class="currency">원</span>
                        </div>
                    </div>
                </div>
                <div class="final-cost-total">
                    <h3>최종결제금액</h3>
                    <div class="total-amount">
                        <span class="total-amount-num">1,140,000</span>
                        <span class="currency">원</span>
                    </div>
                </div>
                <div class="agree-terms">
                    <div class="term-item">
                        <input type="checkbox" id="terms1" />
                        <label for="terms1"
                        >주문 내용을 확인했으며, 아래 내용에 모두
                            동의합니다.</label
                        >
                    </div>
                    <div class="term-item">
                        <input type="checkbox" id="terms2" />
                        <label for="terms2"
                        >[필수] 개인정보 수집/이용 동의</label
                        >
                        <a href="#">보기</a>
                    </div>
                    <div class="term-item">
                        <input type="checkbox" id="terms3" />
                        <label for="terms3"
                        >[필수] 전자금융거래 이용 약관 동의</label
                        >
                        <a href="#">보기</a>
                    </div>
                </div>
                <div class="payment-button">
                    <button>결제하기</button>
                </div>
            </div>
        </section>
    </div>
    <div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
    <script src="resources/js/reservation/sdm/weddinghallPayment.js"></script>
</body>
</html>
