<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>myPayment</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage/myPayment.css" />
      <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/resources/css/common/sidebar/sidebarMypage.css"
      />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage/mypageNaviba.css" />

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script  src="${pageContext.request.contextPath}/resources/js/mypage/myPayment.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/mypage/myPageMain.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/mypage/navibar.js"></script>
  </head>
	<div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>

  <body>
    <div class="myPage-container hd__inner1100">
      <!-- 1.myPage-sidebar -->
      <section class="myPage-sidebar">
        <aside class="myPage-sidebar">
        	<div> <%@ include file="/WEB-INF/views/common/sidebarMyPage.jsp" %></div>
        </aside>
      </section>
      <div class="hd__inner880">
        <section class="summary">
          <h1>안녕하세요. ${myPageDTO.name} 손님</h1>
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
                <span class="number">${visitCriteriaCount}</span>
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
        <div> <%@ include file="/WEB-INF/views/common/navibar.jsp" %></div> 

        <!-- 4.결제 내역  -->
        <section id="myPayment-section4" class="list-all">
          <ul class="payment-total">
            <c:forEach var="payment" items="${myPayment}">
              <li>
                <div class="payment-body-top">
                  <dl>
                    <div aria-label="주문 날짜">결제 날짜 : ${payment.payment_time} </div>
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
                        <span class="payment-number">${fn:substringAfter(payment.merchant_uid,'_')}</span>
                      </div>
                    </div>
                    <div class="content1-brand">
                      <span>${payment.order_name} </span>
                    </div>
                  </div>
                  <div class="payment-content2">
                    <div class="content2-price">
                      <span>금액: ${payment.paid_amount}</span>
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
            </c:forEach>
          </ul>
        </section>
      </div>
    </div>
  </body>
  <div> <%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</html>
