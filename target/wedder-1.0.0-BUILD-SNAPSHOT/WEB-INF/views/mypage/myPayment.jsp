<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>myPayment</title>
    	
      <link rel="stylesheet" href="<c:url value='resources/css/common/reset.css'/>" />
      <link rel="stylesheet" href="<c:url value='resources/css/myPage/myPayment.css'/>" />
      <link
        rel="stylesheet"
        href="<c:url value='resources/css/common/sidebar/sidebarMyPage.css'/>"
      />
      <link rel="stylesheet" href="<c:url value='resources/css/myPage/mypageNaviba.css'/>" />
      
      <script defer src="<c:url value='resources/js/myPage/myPayment.js'/>"></script>
      <script defer src="<c:url value='resources/js/main/main.js'/>"></script>
      <script defer src="<c:url value='resources/js/myPage/myPageMain.js'/>"></script>
      <script defer src="<c:url value='resources/js/myPage/navibar.js'/>"></script>
  </head>

  <div> <%@ include file="/resources/components/header/headerV2.jsp" %></div>

  <body>
    <div class="myPage-container hd__inner1100">
      <!-- 1.myPage-sidebar -->
      <section class="myPage-sidebar">
        <aside class="myPage-sidebar">
          <div><%@ include file="/resources/components/sidebar/sidebarMyPage.jsp" %></div>
        </aside>
      </section>
      <div class="hd__inner880">
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
        <!-- 2.헤더 설명 -->
        <section class="myPayment-header" id="myPayment-section2">
          <h3>결제 내역</h3>
        </section>
        <!-- 3.서치 바 -->
        <div><%@ include file="/resources/components/sidebar/navibar.jsp" %></div>

        <!-- 4.결제 내역  -->
        <section id="myPayment-section4">
          <ul class="payment-total">
            <li>
              <div class="payment-body-top">
                <dl>
                  <dt awria-label="주문 날짜">결제 날짜</dt>
                  <dd><span class=""> 2024.08.01</span></dd>
                </dl>
                <a href="payment-detail" class="body-top-link">
                  <span>결제 상세</span>
                  <span> > </span>
                </a>
              </div>
              <div class="payment-body-content">
                <div class="payment-content1">
                  <div class="payment-content1-1">
                    <div class="payment-status">
                      <span class="status-text">결제 완료</span>
                    </div>
                    <div class="payment-num">
                      <span>결제 번호</span>
                      <span class="payment-number">2818101</span>
                    </div>
                  </div>
                  <div class="content1-brand">
                    <span>로이 스튜디오 </span>
                  </div>
                </div>
                <div class="payment-content2">
                  <div class="content2-price">
                    <span>금액</span>
                    <span>\99,000</span>
                  </div>
                  <div class="content2-minus">-\29,700</div>
                  <div class="content2-total">
                    <span>합계</span>
                    <div>\69,300</div>
                  </div>
                </div>
                <div class="payment-content3">
                  <div>
                    <a>영수증</a>
                  </div>
                  <div>
                    <a>거래명세서</a>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="payment-body-top">
                <dl>
                  <dt awria-label="주문 날짜">결제 날짜</dt>
                  <dd><span class=""> 2024.07.31</span></dd>
                </dl>

                <a href="payment-detail" class="body-top-link">
                  <span>결제 상세</span>
                  <span> > </span>
                </a>
              </div>
              <div class="payment-body-content">
                <div class="payment-content1">
                  <div class="payment-content1-1">
                    <div class="payment-status-cancle">
                      <span class="status-text">결제 취소</span>
                    </div>
                    <div class="payment-num">
                      <span>결제 번호</span>
                      <span class="payment-number">2818101</span>
                    </div>
                  </div>
                  <div class="content1-brand">
                    <span>로사 스튜디오 </span>
                  </div>
                </div>
                <div class="payment-content2">
                  <div class="content2-price">
                    <span>금액</span>
                    <span>\99,000</span>
                  </div>
                  <div class="content2-minus">-\29,700</div>
                  <div class="content2-total">
                    <span>합계</span>
                    <div>\69,300</div>
                  </div>
                </div>
                <div class="payment-content3">
                  <a>영수증</a>
                  <a>거래명세서</a>
                </div>
              </div>
            </li>
          </ul>
        </section>
      </div>
    </div>
  </body>
  <div><%@ include file="/resources/components/footer/footerV2.jsp" %></div>
</html>
