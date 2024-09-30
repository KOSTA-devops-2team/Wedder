<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>mypage</title>
    <!-- 링크 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estimate/estimateOption.css"/>
    <!-- 스크립트 -->
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/estimate/estimateOption.js"></script>

</head>

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="container">
        <div class="hd__inner1100">
            <div class="container-title">
                <p>Estimate</p>
                <p class="description">원하는 조건의 스튜디오, 드레스 메이크업 업체를 조합해 가격을 알아봐요</p>
            </div>
            <!-- 스드메 상단 탭 -->
            <div class="tabs">
                <div class="tab">스튜디오</div>
                <div class="tab">드레스</div>
                <div class="tab">헤어메이크업</div>
            </div>
            <div class="divide">

                <section class="body">
                    <div class="body-grid">
                        <div class="main">
                            <c:forEach var="studio" items="${studioSelected}">
                                <img src="${studio.imgUrl}" alt="${studio.companyName}">
                                <div class="selected">
                                    <div class="content-main">
                                        <p class="bold">${studio.companyName}</p>
                                        <p class="address">${studio.companyAddress}</p>
                                    </div>
                                    <div class="basic-option">
                                        <div class="basic-detail">
                                            <p><strong>기본 옵션</strong></p>
                                            <p>원본 데이터</p>
                                            <p>원본 파일(3장) + 기본 인화 1컷(20R)</p>
                                        </div>
                                        <div class="main-price">
                                            <p>330,000원</p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- 세부 옵션 -->
                        <div class="option">
                            <div class="option-item">
                                <span class="title">추가 비용 옵션</span>
                                <span>업체에 직접 결제하는 추가 비용이 있을 수 있어요.</span>
                                <span>실제 비용과 다를 수 있으니, 상품 이용 전 업체를 통해 꼭 확인하세요.</span>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="body">
                    <div class="body-grid">
                        <div class="main">
                            <c:forEach var="dress" items="${dressSelected}">
                                <img src="${dress.imgUrl}" alt="${dress.companyName}">
                                <div class="selected">
                                    <div class="content-main">
                                        <p class="bold">${dress.companyName}</p>
                                        <p class="address">${dress.companyAddress}</p>
                                    </div>
                                    <div class="basic-option">
                                        <div class="basic-detail">
                                            <p><strong>기본 옵션</strong></p>
                                            <p>원본 데이터</p>
                                            <p>원본 파일(3장) + 기본 인화 1컷(20R)</p>
                                        </div>
                                        <div class="main-price">
                                            <p>330,000원</p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- 세부 옵션 -->
                        <div class="option">
                            <div class="option-item">
                                <span class="title">추가 비용 옵션</span>
                                <span>업체에 직접 결제하는 추가 비용이 있을 수 있어요.</span>
                                <span>실제 비용과 다를 수 있으니, 상품 이용 전 업체를 통해 꼭 확인하세요.</span>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="body">
                    <div class="body-grid">
                        <div class="main">
                            <c:forEach var="makeup" items="${makeupSelected}">
                                <img src="${makeup.imgUrl}" alt="${makeup.companyName}">
                                <div class="selected">
                                    <div class="content-main">
                                        <p class="bold">${makeup.companyName}</p>
                                        <p class="address">${makeup.companyAddress}</p>
                                    </div>
                                    <div class="basic-option">
                                        <div class="basic-detail">
                                            <p><strong>기본 옵션</strong></p>
                                            <p>원본 데이터</p>
                                            <p>원본 파일(3장) + 기본 인화 1컷(20R)</p>
                                        </div>
                                        <div class="main-price">
                                            <p>330,000원</p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- 세부 옵션 -->
                        <div class="option">
                            <div class="option-item">
                                <span class="title">추가 비용 옵션</span>
                                <span>업체에 직접 결제하는 추가 비용이 있을 수 있어요.</span>
                                <span>실제 비용과 다를 수 있으니, 상품 이용 전 업체를 통해 꼭 확인하세요.</span>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- 선택하신 목록 -->
                <div class="select-container">
                    <div class="selected-list">
                        <h2>선택하신 목록</h2>
                        <div class="list">
                            <div class="item-title">
                                <span>S 스튜디오</span>
                                <span>330,000원</span>
                            </div>
                            <div class="items">
                                <div class="item">
                                    <p><img src="../../assets/images/icon-minus.png" alt="">수정 데이터</p>
                                    <p>165,000원</p>
                                </div>
                                <div class="item">
                                    <p><img src="../../assets/images/icon-minus.png" alt="">플라리 촬영</p>
                                    <p>155,000원</p>
                                </div>
                                <div class="item">
                                    <p><img src="../../assets/images/icon-minus.png" alt="">야간 촬영</p>
                                    <p>110,000원</p>
                                </div>
                            </div>
                        </div>
                        <!-- 가격 표시-->
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
                        <p>꼭 확인해주세요!</p>
                        <p>이 견적서는 기본 가격 정보들을 담은 견적금 참고용 견적서입니다.</p>
                        <p>본 견적상 담의 금액이 실제 결제 금액은 아닙니다.</p>
                        <p>실제 결제할 금액을 확인할 수 있으며, Wedder에서는 이에 대해 책임을 지지 않습니다.</p>
                    </div>
                </div>
            </div>
            <!-- 이전, 다음 버튼 -->
            <div class="btn">
                <button onclick="location.href='estimate-calculator.html'" class="back">이전</button>
                <button onclick="location.href='estimate-final.html'" class="next">다음으로</button>
            </div>
        </div>
    </div>
</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>