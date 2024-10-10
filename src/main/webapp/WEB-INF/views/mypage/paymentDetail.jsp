<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>paymentDetail</title>

      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage/paymentDetail.css" />
  	  <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/resources/css/common/sidebar/sidebarMypage.css"
      />
      <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
      <script defer src="${pageContext.request.contextPath}/resources/js/mypage/myPageMain.js"></script>
  </head>
  <div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
  <body>
    <div class="hd__inner1100">
      <div class="side-bar-flex">
        <section class="nav-bar" id="nav-bar">
          <aside class="payment-detail">
          	<div> <%@ include file="/WEB-INF/views/common/sidebarMyPage.jsp" %></div>
          </aside>
        </section>
      </div>

      <div class="hd__inner960">
        <section id="payment-detail-section1">
          <div class="payment-detail-header">
            <h1>결제 상세 내역</h1>
            <span class="section1-payment-num">[결제번호:]</span>
          </div>
        </section>
        <section class="payment-detail-body" id="payment-detail-section2">
          <div>
            <div class="payment-content">
              <div class="content-main">
                <div>
                  <img
                  	
                    src="${pageContext.request.contextPath}/resources/images/bestPackage2.png"
                    alt="결제한 상품"
                  />
                </div>
                <div class="content-body">
                  <div class="content-top">
                    <a>스프링 부트 -핵심 원리와 활용</a>
                    <div>
                      <del class="lined">\99,000</del>

                      <div class="price">\69,300</div>
                    </div>
                  </div>
                  <div class="content-btn">
                    <button type="button" class="refund-btn">환불하기</button>
                  </div>
                </div>
              </div>
              <div class="sale">
                <p>&#8593; 적용된 할인: 패키지 종합 할인</p>
              </div>
            </div>
            <div class="payment-content">
              <div class="content-main">
                <div>
                  <img
                    src="${pageContext.request.contextPath}/resources/images/bestPackage2.png"
                    alt="결제한 상품"
                  />
                </div>
                <div class="content-body">
                  <div class="content-top">
                    <a>스프링 부트 -핵심 원리와 활용</a>
                    <div>
                      <del class="lined">\99,000</del>

                      <div class="price">\69,300</div>
                    </div>
                  </div>
                  <div class="content-btn">
                    <button type="button" class="refund-btn">환불하기</button>
                  </div>
                </div>
              </div>
              <div class="sale">
                <p>&#8593; 적용된 할인: 패키지 종합 할인</p>
              </div>
            </div>
          </div>
          <div class="payment-content2">
            <div class="card">
              <div class="content2-top">
                <h2>총계</h2>
                <div class="content2-price">
                  <del class="lined">\99,000</del>
                  <div class="price">\69,300</div>
                </div>
              </div>
              <table class="content2-table">
                <tbody>
                  <tr>
                    <th>주문 상태</th>
                    <td>결제 완료</td>
                  </tr>
                  <tr>
                    <th>주문 시각</th>
                    <td>2024년 8월 1일 16시05분</td>
                  </tr>
                  <tr>
                    <th>결제 수단</th>
                    <td>네이버 페이</td>
                  </tr>
                  <tr>
                    <th class="link"><a href="">영수증 확인</a></th>
                    <td class="link"><a href="">거래명세서 확인</a></td>
                  </tr>
                </tbody>
              </table>
              <button type="button" class="all-delete">전체 취소</button>
            </div>
          </div>
        </section>
      </div>
    </div>
  </body>
   <div> <%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
  
</html>
