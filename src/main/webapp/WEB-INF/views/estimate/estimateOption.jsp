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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- 스크립트 -->
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/estimate/estimateOption.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
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
                        <div class="main" data-img-url="${studioData.imgUrl}">
                            <c:if test="${not empty studioData}">
                                <img src="${studioData.imgUrl}" alt="${studioData.companyName}">
                                <div class="selected">
                                    <div class="content-main">
                                        <p class="bold">${studioData.companyName}</p>
                                        <p class="address">${studioData.companyAddress}</p>
                                    </div>
                                    <div class="basic-option">
                                        <div class="basic-detail">
                                            <p><strong>기본 옵션</strong></p>
                                            <p>원본 데이터</p>
                                            <p>원본 파일(3장) + 기본 인화 1컷(20R)</p>
                                        </div>
                                        <div class="main-price">
                                            <p>${studioData.basicPrice}</p>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                            <!-- 스튜디오 옵션 출력 -->
                            <c:if test="${not empty companyOptions.studio}">
                                <div class="option">
                                    <c:forEach var="option" items="${companyOptions.studio}">
                                        <div class="option-item studio-option">
                                            <span class="option-name">${option.optionName}</span>
                                            <span class="option-price">${option.optionPrice}원</span>
                                        </div>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </section>

                <section class="body">
                    <div class="body-grid">
                        <div class="main" data-img-url="${dressData.imgUrl}">
                            <c:if test="${not empty dressData}">
                                <img src="${dressData.imgUrl}" alt="${dressData.companyName}">
                                <div class="selected">
                                    <div class="content-main">
                                        <p class="bold">${dressData.companyName}</p>
                                        <p class="address">${dressData.companyAddress}</p>
                                    </div>
                                    <div class="basic-option">
                                        <div class="basic-detail">
                                            <p><strong>기본 옵션</strong></p>
                                            <p>본식 드레스</p>
                                            <p>무료 피팅서비스</p>
                                        </div>
                                        <div class="main-price">
                                            <p>${dressData.basicPrice}</p>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                            <!-- 드레스 옵션 출력 -->
                            <c:if test="${not empty companyOptions.dress}">
                                <div class="option">
                                    <c:forEach var="option" items="${companyOptions.dress}">
                                        <div class="option-item dress-option">
                                            <span class="option-name">${option.optionName}</span>
                                            <span class="option-price">${option.optionPrice}원</span>
                                        </div>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </section>

                <section class="body">
                    <div class="body-grid">
                        <div class="main" data-img-url="${makeupData.imgUrl}">
                            <c:if test="${not empty makeupData}">
                                <img src="${makeupData.imgUrl}" alt="${makeupData.companyName}">
                                <div class="selected">
                                    <div class="content-main">
                                        <p class="bold">${makeupData.companyName}</p>
                                        <p class="address">${makeupData.companyAddress}</p>
                                    </div>
                                    <div class="basic-option">
                                        <div class="basic-detail">
                                            <p><strong>기본 옵션</strong></p>
                                            <p>신부 헤어메이크업</p>
                                            <p>부원장 or 원장 맞춤 스타일링</p>
                                        </div>
                                        <div class="main-price">
                                            <p>${makeupData.basicPrice}</p>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                            <!-- 메이크업 옵션 출력 -->
                            <c:if test="${not empty companyOptions.makeup}">
                                <div class="option">
                                    <c:forEach var="option" items="${companyOptions.makeup}">
                                        <div class="option-item makeup-option">
                                            <span class="option-name">${option.optionName}</span>
                                            <span class="option-price">${option.optionPrice}원</span>
                                        </div>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </section>

                <!-- 선택하신 목록 -->
                <div class="select-container">
                    <div class="select-list">
                        <div class="top">
                            <div class="select-title">선택하신 목록</div>
                            <div class="select-item">
                                <!-- 선택한 스튜디오 정보 -->
                                <div class="selected-studio" id="selected-studio">
                                    <span class="company-info" >${studioData.companyName}</span>
                                    <span class="company-price" data-price="${studioData.basicPrice}">${studioData.basicPrice}원</span>
                                </div>
                                <!-- 스튜디오 옵션 -->
                                <div id="selected-studio-options"></div>

                                <!-- 선택한 드레스 정보 -->
                                <div class="selected-dress" id="selected-dress">
                                    <span class="company-info">${dressData.companyName}</span>
                                    <span class="company-price" data-price="${dressData.basicPrice}">${dressData.basicPrice}원</span>
                                </div>
                                <!-- 드레스 옵션 -->
                                <div id="selected-dress-options"></div>

                                <!-- 선택한 메이크업 정보 -->
                                <div class="selected-makeup" id="selected-makeup">
                                    <span class="company-info">${makeupData.companyName}</span>
                                    <span class="company-price" data-price="${makeupData.basicPrice}">${makeupData.basicPrice}원</span>
                                </div>
                                <!-- 메이크업 옵션 -->
                                <div id="selected-makeup-options"></div>
                            </div>
                        </div>
                        <!-- 가격 표시-->
                        <div class="price">
                            <div class="price-total">
                                <span>최종 금액</span><span id="price-total">0원</span>
                            </div>
                            <div class="reselection">
                                <a href="javascript:void(0);" id="reset-button">
                                    <span class="material-symbols-outlined">replay</span>옵션 다시 선택
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="note">
                        <p class="note-bold">꼭 확인하세요!</p>
                        <p>이 견적서는 기본 가격 정보들을 담은 견적금 참고용 견적서입니다.</p>
                        <p>본 견적상 담의 금액이 실제 결제 금액은 아닙니다.</p>
                        <p>실제 결제할 금액을 확인할 수 있으며, Wedder에서는 이에 대해 책임을 지지 않습니다.</p>
                    </div>
                </div>
            </div>
            <!-- 이전, 다음 버튼 -->
            <div class="btn">
                <button onclick="history.back()" class="back">이전</button>
                <button class="next">다음으로</button>
            </div>
        </div>
    </div>
</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>