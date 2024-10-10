<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>estimateTotal</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estimate/estimateTotal.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/estimate/estimateTotal.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="hd__inner1100">
    <div class="title">
        <div class="head">
            <p class="bold">Wedder 최종 할인가를 확인하세요</p>
            <p>스드메 견적을 간편하게 확인할 수 있어요.</p>
        </div>
        <div class="back">
            <p>클릭 시 업체 선택창으로 돌아가요.</p>
            <div class="back-content">
                <div class="back-btn">
                    <a href="#">${studioName}/</a>
                    <a href="#">${dressName}/</a>
                    <a href="#">${makeupName}</a>
                </div>
                <a href="${pageContext.request.contextPath}/estimate/"><span class="material-symbols-outlined">replay</span>업체 다시 선택</a>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="content-main">
            <div class="content-box">
                <div class="notice">
                    <div class="notice-title">꼭 확인해주세요!</div>
                    <p>· 이 견적은 기본 가격 정보를 단순 계산한 참고용 견적입니다.</p>
                    <p>· 옵션 변경 등에 따라 금액이 변경될 수 있습니다.</p>
                    <p>· 실제 견적과 상이할 수 있으며, Wedder에서는 이에 대한 귀책 사유가 따르지 않습니다.</p>
                </div>
                <div class="select">
                    <div class="select-list">
                        <h1>선택하신 목록</h1>
                        <div class="company">
                            <div class="studio">
                                <img src="${studioImgUrl}" alt="${studioName}">
                                <div class="company-detail">
                                    <div class="company-note">
                                        <p class="name">${studioName}</p>
                                        <p>[웨딩촬영]앨범 20p + 기본 액자 (20R)</p>
                                    </div>
                                    <div> ${studioPrice}원</div>
                                </div>
                                <div class="options">
                                    <p class="option-detail">세부옵션</p>
                                    <c:if test="${not empty selectedOptions.studio}">
                                        <c:forEach var="option" items="${selectedOptions.studio}">
                                            <div class="option">
                                                <p>${option.name}</p><p>${option.price}원</p>
                                            </div>
                                        </c:forEach>
                                    </c:if>
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
                        </div>
                        <div class="company">
                            <div class="dress">
                                <img src="${dressImgUrl}" alt="${dressName}">
                                <div class="company-detail">
                                    <div class="company-note">
                                        <p class="name">${dressName}</p>
                                        <p>[촬영] 드레스 3벌</p>
                                    </div>
                                    <p>${dressPrice}원</p>
                                </div>
                                <div>
                                    <div class="options">
                                        <p class="option-detail">세부옵션</p>
                                        <c:if test="${not empty selectedOptions.dress}">
                                            <c:forEach var="option" items="${selectedOptions.dress}">
                                                <div class="option">
                                                    <p>${option.name}</p><p>${option.price}원</p>
                                                </div>
                                            </c:forEach>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="company">
                            <div class="makeup">
                                <img src="${makeupImgUrl}" alt="${makeupName}">
                                <div class="company-detail">
                                    <div class="company-note">
                                        <p class="name">${makeupName}</p>
                                        <p>[촬영+본식] 신부신랑 메이크업</p>
                                    </div>
                                    <p>${makeupPrice}원</p>
                                </div>
                            </div>
                            <div class="options">
                                <p class="option-detail">세부옵션</p>
                                <c:if test="${not empty selectedOptions.makeup}">
                                    <c:forEach var="option" items="${selectedOptions.makeup}">
                                        <div class="option">
                                            <p>${option.name}</p><p>${option.price}원</p>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <div class="price">
                            <div class="price-detail">
                                <c:set var="totalPrice" value="${studioPrice + dressPrice + makeupPrice}" />
                                <c:forEach var="option" items="${selectedOptions.studio}">
                                    <c:set var="totalPrice" value="${totalPrice + option.price}" />
                                </c:forEach>
                                <c:forEach var="option" items="${selectedOptions.dress}">
                                    <c:set var="totalPrice" value="${totalPrice + option.price}" />
                                </c:forEach>
                                <c:forEach var="option" items="${selectedOptions.makeup}">
                                    <c:set var="totalPrice" value="${totalPrice + option.price}" />
                                </c:forEach>
                                <div class="final">
                                    <p>최종 금액</p>
                                    <p>${totalPrice}원</p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="btn">
                        <button onclick=history.back() class="back">뒤로가기</button>
                        <button class="add">견적함에 담기</button>
                    </div>
                </div>
            </div>
        </div>
        </section>
        <!-- 담기 확인 모달창 -->
        <section id="modal" class="modal">
            <div class="modal-content">
                <h2 class="modal-q">견적함에 담으시겠습니까?</h2>
                <div class="modal-btn">
                    <a href="#"><button class="check-btn">확인</button></a>
                    <a href="#"><button class="cancel-btn">취소</button></a>
                </div>
            </div>
        </section>

        <!-- 담기 완료 모달창 -->
        <section id="modal2" class="modal2">
            <div class="modal-content">
                <h2 class="modal-complete">My견적함에 담기 완료!</h2>
                <p>견적함으로 이동하시겠습니까?</p>
                <div class="modal-btn">
                    <a href="../../html/mypage/estimateStorage.html"><button class="check-btn">확인</button></a>
                    <a href="#"><button class="cancel-btn">취소</button></a>
                </div>
            </div>
        </section>
    </div>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>