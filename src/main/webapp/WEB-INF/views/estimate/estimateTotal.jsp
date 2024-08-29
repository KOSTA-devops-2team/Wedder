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
    <link rel="stylesheet" href="<c:url value='resources/css/common/reset.css'/>" />
    <link rel="stylesheet" href="<c:url value='resources/css/estimate/estimateTotal.css'/>"/>
    <!-- 스크립트 -->
    <script defer src="<c:url value='resources/js/main/main.js'/>"></script>
    <script defer src="<c:url value='resources/js/estimate/estimateCompany.js'/>"></script>
</head>

<div> <%@ include file="/resources/components/header/headerV2.jsp" %></div>
<body>
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
                        <a href="#">스튜디오 업체명     /</a>
                        <a href="#">드레스 업체명     /   </a>
                        <a href="#">헤어메이크업 업체명</a>
                    </div>
                    <a href=""><span class="material-symbols-outlined">
                                replay
                                </span>업체 다시 선택</a>
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
                                    <img src="../../assets/images/weddingThumbnail.png" alt="스튜디오">
                                    <div class="company-detail">
                                        <div class="company-note">
                                            <p class="name">S 스튜디오</p>
                                            <p>[웨딩촬영]앨범 20p + 기본 액자 (20R)</p>
                                        </div>
                                        <div>330,000원</div>
                                    </div>
                                    <div>
                                        <div class="options">
                                            <p class="option-detail">세부옵션</p>
                                            <div class="option">
                                                <p>· 수정본데이터</p>
                                                <p>165,000원</p>
                                            </div>
                                            <div class="option">
                                                <p>· 들러리 촬영</p>
                                                <p>150,000원</p>
                                            </div>
                                            <div class="option-bot">
                                                <p>· 야간씬 촬영</p>
                                                <p>110,000원</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="company">
                                <div class="dress">
                                    <img src="../../assets/images/dressThumbnail.png" alt="스튜디오">
                                    <div class="company-detail">
                                        <div class="company-note">
                                            <p class="name">안나스포사</p>
                                            <p>[촬영] 드레스 3벌</p>
                                        </div>
                                        <p>1,120,000원</p>
                                    </div>
                                    <div>
                                        <div class="options">
                                            <p class="option-detail">세부옵션</p>
                                            <div class="option">
                                                <p>· 피팅비</p>
                                                <p>55,000원</p>
                                            </div>
                                            <div class="option">
                                                <p>· 헬퍼비</p>
                                                <p>250,000원</p>
                                            </div>
                                            <div class="option-bot">
                                                <p>· 드레스 추가</p>
                                                <p>330,000원</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="company">
                                <div class="makeup">
                                    <img src="../../assets/images/makeupThumbnail.png" alt="스튜디오">
                                    <div class="company-detail">
                                        <div class="company-note">
                                            <p class="name">제니하우스 청담힐</p>
                                            <p>[촬영+본식] 신부신랑 메이크업</p>
                                        </div>
                                        <p>1,120,000원</p>
                                    </div>
                                </div>
                                <div class="options">
                                    <p class="option-detail">세부옵션</p>
                                    <div class="option-bot">
                                        <p>· 직급 지정 (원장)</p>
                                        <p>55,000원</p>
                                    </div>
                                </div>
                            </div>
                            <div class="price">
                                <div class="price-detail">
                                    <div class="regular">
                                        <p>정상가</p>
                                        <p>3,260,000원</p>
                                    </div>
                                    <div class="discount">
                                        <p>쿠폰/옵션 할인가</p>
                                        <p class="discount-color">-206,000원</p>
                                    </div>
                                    <div class="final">
                                        <p>최종 금액</p>
                                        <p>3,000,000원</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="btn">
                            <button onclick="location.href='estimateDetail.html'" class="back">뒤로가기</button>
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
</body>
<div><%@ include file="/resources/components/footer/footerV2.jsp" %></div>
</html>