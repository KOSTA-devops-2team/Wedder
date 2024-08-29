<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>estimateStorage</title>
    
    
    <link rel="stylesheet" href="<c:url value='resources/css/common/reset.css'/>" />
    <link rel="stylesheet" href="<c:url value='resources/css/myPage/estimateStorage.css'/>" />
    <link rel="stylesheet" href="<c:url value='resources/css/common/sidebar/sidebarMyPage.css'/>" />
    <script defer src="<c:url value='resources/js/main/main.js'/>"></script>
    <script defer src="<c:url value='resources/js/myPage/myPageMain.js'/>"></script>
  </head>
  <body>
    <header> <%@ include file="/resources/components/header/headerV2.jsp" %></header>

    <div class="myPage-container hd__inner1100">
      <!-- 0. 마이페이지 사이드 바 -->
      <aside class="myPage-sidebar">
        <%@ include file="/resources/components/sidebar/sidebarMyPage.jsp" %>
      </aside>

      <div class="mypage-content hd__inner880">
        <!-- 1.마이페이지 배너 -->
        <section class="summary">
          <h1>안녕하세요. 마리아쥬스퀘어 손님</h1>
          <div class="summary-lists">
            <div class="summary-item">
              <div class="summary-title">신규 방문 예약</div>
              <div class="summary-count">
                <span class="number">2</span>
                <span class="unit">건</span>
              </div>
            </div>
            <div class="summary-item">
              <div class="summary-title">오늘 방문 일정</div>
              <div class="summary-count">
                <span class="number">3</span>
                <span class="unit">건</span>
              </div>
            </div>
          </div>
        </section>

        <!-- 2. 견적함 제목 -->
        <section class="estimate">
          <div class="title-container">
            <!-- <p class="category">견적함</p> -->
            <div class="main-title">
              <h2 class="estimate-title">견적함</h2>
              <p class="total">총 6개</p>
            </div>
          </div>
          <!-- 3. 견적함 박스 -->
          <div class="estimate-storage">
            <div class="storage">
              <div class="title-box">
                <h4 class="storage-title">견적함 명</h4>
                <h5 class="storage-total-price">합계 금액 3,000,000원</h5>
                <p class="total-product">담긴 상품 3개</p>
              </div>
              <div>
                <a href="#"
                  ><img
                    id="icon"
                    class="arrow"
                    src="<c:url value='resources/assets/images/arrow-icon.png'/>"
                    alt="화살표 아이콘"
                /></a>
              </div>
              <div class="company-list">
                <div>
                
                  <a href="studio-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/estimateDetails1.png'/>"
                      alt="studio"
                  /></a>
                  <p>스튜디오</p>
                </div>
                <div>
                  <a href="dress-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/storage-dress.jpg'/>"
                      alt="dress"
                  /></a>
                  <p>드레스</p>
                </div>
                <div>
                  <a href="makeup-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/storage-makeup.png'/>"
                      alt="makeup"
                  /></a>
                  <p>메이크업</p>
                </div>
              </div>
              <div>
                <img
                  class="storage-delete"
                  src="<c:url value='resources/assets/images/trashcan.png'/>"
                  alt="삭제 아이콘"
                />
              </div>
            </div>
            <div class="storage">
              <div class="title-box">
                <h4 class="storage-title">견적함 명</h4>
                <h5 class="storage-total-price">합계 금액 2,000,000원</h5>
                <p class="total-product">담긴 상품 2개</p>
              </div>
              <div>
                <a href="#"
                  ><img
                    id="icon"
                    class="arrow"
                    src="<c:url value='resources/assets/images/arrow-icon.png'/>"
                    alt="화살표 아이콘"
                /></a>
              </div>
              <div class="company-list">
                <div>
                  <a href="studio-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/storage-studio.jpg'/>"
                      alt="studio"
                  /></a>
                  <p>스튜디오</p>
                </div>
                <div>
                  <a href="dress-detail"
                    ><img
                      class="company-img"
                      src=" <c:url value='resources/assets/images/dress-1.jpg'/>"
                      alt="dress"
                  /></a>
                  <p>드레스</p>
                </div>
              </div>
              <div>
                <img
                  class="storage-delete"
                  src="<c:url value='resources/assets/images/trashcan.png'/>"
                  alt="삭제 아이콘"
                />
              </div>
            </div>
            <div class="storage">
              <div class="title-box">
                <h4 class="storage-title">견적함 명</h4>
                <h5 class="storage-total-price">합계 금액 3,000,000원</h5>
                <p class="total-product">담긴 상품 3개</p>
              </div>
              <div>
                <a href="#"
                  ><img
                    id="icon"
                    class="arrow"
                    src="<c:url value='resources/assets/images/arrow-icon.png'/>"
                    alt="화살표 아이콘"
                /></a>
              </div>
              <div class="company-list">
                <div>
                  <a href="studio-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/studio-4.jpg'/>"
                      alt="studio"
                  /></a>
                  <p>스튜디오</p>
                </div>
                <div>
                  <a href="dress-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/dress-4.jpg'/>"
                      alt="dress"
                  /></a>
                  <p>드레스</p>
                </div>
                <div>
                  <a href="makeup-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/makeup-5.jpg'/>"
                      alt="makeup"
                  /></a>
                  <p>메이크업</p>
                </div>
              </div>
              <div>
                <img
                  class="storage-delete"
                  src="<c:url value='resources/assets/images/trashcan.png'/>"
                  alt="삭제 아이콘"
                />
              </div>
            </div>
            <div class="storage">
              <div class="title-box">
                <h4 class="storage-title">견적함 명</h4>
                <h5 class="storage-total-price">합계 금액 3,000,000원</h5>
                <p class="total-product">담긴 상품 3개</p>
              </div>
              <div>
                <a href="#"
                  ><img
                    id="icon"
                    class="arrow"
                    src="<c:url value='resources/assets/images/arrow-icon.png'/>"
                    alt="화살표 아이콘"
                /></a>
              </div>
              <div class="company-list">
                <div>
                  <a href="studio-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/studio-11.jpg'/>"
                      alt="studio"
                  /></a>
                  <p>스튜디오</p>
                </div>
                <div>
                  <a href="dress-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/dress-8.jpg'/>"
                      alt="dress"
                  /></a>
                  <p>드레스</p>
                </div>
                <div>
                  <a href="makeup-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/makeup-11.jpg'/>"
                      alt="makeup"
                  /></a>
                  <p>메이크업</p>
                </div>
              </div>
              <div>
                <img
                  class="storage-delete"
                  src="<c:url value='resources/assets/images/trashcan.png'/>"
                  alt="삭제 아이콘"
                />
              </div>
            </div>
            <div class="storage">
              <div class="title-box">
                <h4 class="storage-title">견적함 명</h4>
                <h5 class="storage-total-price">합계 금액 2,000,000원</h5>
                <p class="total-product">담긴 상품 2개</p>
              </div>
              <div>
                <a href="#"
                  ><img
                    id="icon"
                    class="arrow"
                    src="<c:url value='resources/assets/images/arrow-icon.png'/>"
                    alt="화살표 아이콘"
                /></a>
              </div>
              <div class="company-list">
                <div>
                  <a href="studio-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/studio-8.jpg'/>"
                      alt="studio"
                  /></a>
                  <p>스튜디오</p>
                </div>
                <div>
                  <a href="makeup-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/makeup-3.jpg'/>"
                      alt="makeup"
                  /></a>
                  <p>메이크업</p>
                </div>
              </div>
              <div>
                <img
                  class="storage-delete"
                  src="<c:url value='resources/assets/images/trashcan.png'/>"
                  alt="삭제 아이콘"
                />
              </div>
            </div>
            <div class="storage">
              <div class="title-box">
                <h4 class="storage-title">견적함 명</h4>
                <h5 class="storage-total-price">합계 금액 1,000,000원</h5>
                <p class="total-product">담긴 상품 1개</p>
              </div>
              <div>
                <a href="#"
                  ><img
                    id="icon"
                    class="arrow"
                    src="<c:url value='resources/assets/images/arrow-icon.png'/>"
                    alt="화살표 아이콘"
                /></a>
              </div>
              <div class="company-list">
                <div>
                  <a href="dress-detail"
                    ><img
                      class="company-img"
                      src="<c:url value='resources/assets/images/dress-6.jpg'/>"
                      alt="dress"
                  /></a>
                  <p>드레스</p>
                </div>
              </div>
              <div>
                <img
                  class="storage-delete"
                  src="<c:url value='resources/assets/images/trashcan.png'/>"
                  alt="삭제 아이콘"
                />
              </div>
            </div>
          </div>
        </section>

        <!-- 4. 견적서 모달창 -->
        <section id="modal" class="modal">
          <div class="modal-content">
            <div class="selected-list">
              <h1>선택하신 목록</h1>
              <div class="estimate-list">
                <div class="product-img">
                  <img
                    src="<c:url value='resources/assets/images/weddingThumbnail.png'/>"
                    alt="스튜디오"
                  />
                </div>
                <div class="company-content">
                  <div class="company-info">
                    <div class="company-title">
                      <p class="company-name">S 스튜디오</p>
                      <p class="del-list">삭제</p>
                    </div>

                    <div class="company-detail">
                      <p class="basic-option">
                        [웨딩촬영]앨범 20p + 기본 액자 (20R)
                      </p>
                      <h4 class="price-basic">330,000원</h4>
                    </div>
                  </div>
                  <div class="company-options">
                    <p class="detail-option">세부옵션</p>
                    <div class="options">
                      <div class="option">
                        <p>· 수정본데이터</p>
                        <p>165000원</p>
                      </div>
                      <div class="option">
                        <p>· 들러리 촬영</p>
                        <p>150,000원</p>
                      </div>
                      <div class="option">
                        <p>· 야간씬 촬영</p>
                        <p>110,000원</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="estimate-list">
                <div class="product-img">
                  <img
                    src="<c:url value='resources/assets/images/dressThumbnail.png'/>"
                    alt="드레스"
                  />
                </div>
                <div class="company-content">
                  <div class="company-info">
                    <div class="company-title">
                      <p class="company-name">안나스포사</p>
                      <p class="del-list">삭제</p>
                    </div>

                    <div class="company-detail">
                      <p class="basic-option">[촬영] 드레스 3벌</p>
                      <h4 class="price-basic">1,120,000원</h4>
                    </div>
                  </div>
                  <div class="company-options">
                    <p class="detail-option">세부옵션</p>
                    <div class="options">
                      <div class="option">
                        <p>· 피팅비</p>
                        <p>55,000원</p>
                      </div>
                      <div class="option">
                        <p>· 헬퍼비</p>
                        <p>250,000원</p>
                      </div>
                      <div class="option">
                        <p>· 드레스 추가</p>
                        <p>330,000원</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="estimate-list">
                <div class="product-img">
                  <img
                    src="<c:url value='resources/assets/images/makeupThumbnail.png'/>"
                    alt="메이크업"
                  />
                </div>
                <div class="company-content">
                  <div class="company-info">
                    <div class="company-title">
                      <p class="company-name">제니하우스 청담힐</p>
                      <p class="del-list">삭제</p>
                    </div>
                    <div class="company-detail">
                      <p class="basic-option">[촬영+본식] 신부신랑 메이크업</p>
                      <h4 class="price-basic">330,000원</h4>
                    </div>
                  </div>
                  <div class="company-options">
                    <p class="detail-option">세부옵션</p>
                    <div class="options">
                      <div class="option">
                        <p>· 직급 지정 (원장)</p>
                        <p>55,000원</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="price-container">
                <div class="price-regular">
                  <p>정상가</p>
                  <p>3,260,000원</p>
                </div>
                <div class="discount">
                  <p>쿠폰/옵션 할인가</p>
                  <p>-206,000원</p>
                </div>
                <div class="price-final">
                  <p>최종 금액</p>
                  <p>3,000,000원</p>
                </div>
              </div>

              <section class="btn">
                <button class="modal-close-btn">닫기</button>
                <a href=""><button class="payment-btn">결제하기</button></a>
              </section>
            </div>
          </div>
        </section>

        <!-- 견적함 삭제 모달창 -->
        <section id="modal" class="modal2">
          <div class="modal-content2">
            <h2 class="modal-q">견적함을 삭제 하시겠습니까?</h2>
            <p>견적서의 내용이 모두 삭제됩니다.</p>
            <div class="modal-btn">
              <a href="#"><button class="check-btn">확인</button></a>
              <button class="cancel-btn">취소</button>
            </div>
          </div>
        </section>

        <!-- 견적서 상품 삭제 모달창 -->
        <section id="modal" class="modal3">
          <div class="modal-content3">
            <h2 class="modal-q">상품을 삭제 하시겠습니까?</h2>
            <p>상품의 내용이 모두 삭제됩니다.</p>
            <div class="modal-btn">
              <a href=""><button class="check-btn">확인</button></a>
              <button class="cancel-btn2">취소</button>
            </div>
          </div>
        </section>
      </div>
    </div>
    <div><%@ include file="/resources/components/footer/footerV2.jsp" %></div>
    
    <script src="<c:url value='resources/js/myPage/estimateStorage.js'/>"></script>
  </body>
</html>