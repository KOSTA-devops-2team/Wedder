<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>reservationOption</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservation/sdm/reservationOption.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="hd__inner1100">
        <!-- 타이틀 -->
        <section class="title">
            <p class="title-sub">원하는 스튜디오, 드레스, 메이크업 업체를 예약해보세요.</p>
            <h2 class="title-main">Reservation</h2>
        </section>

        <!-- 안내 멘트 -->
        <section class="guide">
            <h2 class="guide-step">Step.1</h2>
            <p class="guide-explain">
                업체의 세부옵션을 선택해 주세요.
            </p>
        </section>

        <!-- 선택 업체 정보 -->
        <section class="company">
            <div class="company-title">
                <h1>[스튜디오] 비마이 스튜디오</h1>
            </div>
            <div class="company-container">
                <div class="img-container">
                    <img src="resources/images/reserve-studio-company.png" alt="업체 이미지">
                </div>
                <div class="company-info">
                    <h3>상품 기본 정보</h3>
                    <div class="basic-options">
                        <div class="basic-options-left">
                            <div class="basic-option">
                                <p>상품 구성</p>
                                <ul>
                                    <li>앨범 1권(20P) + 기본 액자 1개(16R)</li>
                                </ul>
                            </div>
                            <div class="basic-option">
                                <p>촬영 소요 시간</p>
                                <ul>
                                    <li>4시간</li>
                                </ul>
                            </div>
                            <div class="basic-option">
                                <p>촬영 스케줄</p>
                                <ul><li>10시, 12시, 14시, 1시</li></ul>
                            </div>
                        </div>
                        <div class="basic-options-right">
                            <div class="basic-option">
                                <p>보유 소품</p>
                                <ul><li>촬영용 부케, 웨딩 슈즈, 화관</li></ul>
                            </div>
                            <div class="basic-option">
                                <p>촬영 의상 벌 수</p>
                                <ul><li>총 4벌(드레스 3벌, 캐주얼 or 한복 1벌)</li></ul>
                            </div>
                            <div class="basic-option">
                                <p>헤어 변형 출장 업체</p>
                                <ul><li>이용 가능</li></ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- 옵션 리스트 -->
        <section class="option-list">
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option1">
                    <img src="resources/images/option1.png" alt="옵션 이미지1">
                </div>
                <div class="option-info">
                    <h2 class="option-name">야간 촬영</h2>
                    <p class="option-descript">17시 이후부터 촬영 가능</p>
                    <h6 class="option-price">220,000원</h6>
                </div>
            </div>
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option2">
                    <img src="resources/images/option2.png" alt="옵션 이미지2">
                </div>
                <div class="option-info">
                    <h2 class="option-name">옥상씬 촬영</h2>
                    <p class="option-descript">옥상씬 촬영 시 발생하는 비용</p>
                    <h6 class="option-price">110,000원</h6>
                </div>
            </div>
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option3">
                    <img src="resources/images/option3.png" alt="옵션 이미지3">
                </div>
                <div class="option-info">
                    <h2 class="option-name">애견동반 촬영</h2>
                    <p class="option-descript">애견동반 촬영 시 발생하는 비용</p>
                    <h6 class="option-price">100,000원</h6>
                </div>
            </div>
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option4">
                    <img src="resources/images/option4.png" alt="옵션 이미지4">
                </div>
                <div class="option-info">
                    <h2 class="option-name">로드씬 촬영</h2>
                    <p class="option-descript">로드씬 촬영 시 발생하는 비용</p>
                    <h6 class="option-price">110,000원</h6>
                </div>
            </div>
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option5">
                    <img src="resources/images/option5.png" alt="옵션 이미지5">
                </div>
                <div class="option-info">
                    <h2 class="option-name">들러리 촬영</h2>
                    <p class="option-descript">스튜디오 촬영 / 본식 동반(1인)</p>
                    <h6 class="option-price">110,000원</h6>
                </div>
            </div>
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option6">
                    <img src="resources/images/option6.png" alt="옵션 이미지6">
                </div>
                <div class="option-info">
                    <h2 class="option-name">의상 대여</h2>
                    <p class="option-descript">대여 의상 1벌당 추가 비용</p>
                    <h5 class="option-price">100,000원</h5>
                </div>
            </div>
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option7">
                    <img src="resources/images/option7.png" alt="옵션 이미지7">
                </div>
                <div class="option-info">
                    <h2 class="option-name">앨범 추가</h2>
                    <p class="option-descript">앨범 페이지 1장당 추가 비용</p>
                    <h6 class="option-price">33,000원(1장 당)</h6>
                </div>
            </div>
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option8">
                    <img src="resources/images/option8.png" alt="옵션 이미지8">
                </div>
                <div class="option-info">
                    <h2 class="option-name">촬영 수정본 컨펌</h2>
                    <p class="option-descript">촬영 후 수정본 1번 더 컨펌 이용 가능</p>
                    <h5 class="option-price">110,000원</h5>
                </div>
            </div>
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option9">
                    <img src="resources/images/option9.jpg" alt="옵션 이미지9">
                </div>
                <div class="option-info">
                    <h2 class="option-name">작가 지정</h2>
                    <p class="option-descript">촬영 작가 지정 시 발생하는 비용</p>
                    <h5 class="option-price">220,000원</h5>
                </div>
            </div>
            <div class="option-card">
                <div class="option-img">
                    <input type="checkbox" class="option-checkbox" id="option10">
                    <img src="resources/images/option10.png" alt="옵션 이미지10">
                </div>
                <div class="option-info">
                    <h2 class="option-name">촬영 시간 추가</h2>
                    <p class="option-descript">30분 추가당 발생하는 비용</p>
                    <h5 class="option-price">55,000원</h5>
                </div>
            </div>
        </section>


        <!-- 선택 목록 -->
        <section class="select-list">
            <div class="select-title">
                <h1>선택하신 목록</h1>
            </div>
            <div class="select-container">
                <div class="select-company">
                    <div>
                        <img id="company-images" src="resources/images/reserve-studio-company.png" alt="업체 이미지">
                    </div>
                    <div>
                        <h4 class="select-company-title">비마이 스튜디오</h4>
                        <p  class="select-purpose">[웨딩촬영]</p>
                    </div>
                </div>
                <div class="options">
                    <div class="option-container">
                        <div class="select-option">
                            <div>
                                <img src="resources/images/option1.png" alt="옵션 이미지1">
                            </div>
                            <div class="select-option-info">
                                <h6>야간 촬영</h6>
                                <p>17시 이후 부터 촬영 가능</p>
                            </div>
                            <div class="option-price-div">
                                <h5 class="select-options-price">220,000원</h5>
                            </div>
                        </div>
                    </div>
                    <div class="option-container">
                        <div class="select-option">
                            <div>
                                <img src="resources/images/option5.png" alt="옵션 이미지5">
                            </div>
                            <div class="select-option-info">
                                <h6>들러리 촬영</h6>
                                <p>스튜디오 촬영 / 본식 동반(1인)</p>
                            </div>
                            <div class="option-price-div">
                                <h5 class="select-options-price">110,000원</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 다음 단계 버튼 -->
        <section class="btn">
            <a href="studioDetail"><button class="btn-pre">이전</button></a>
            <a href="reservationDate"><button class="btn-nxt">다음 단계로</button></a>
        </section>
    </div>
    <div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
    <script src="resources/js/reservation/sdm/reservationOption.js"></script>
</body>
</html>
