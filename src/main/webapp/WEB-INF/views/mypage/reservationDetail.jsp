<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<c:url value='resources/css/common/reset.css'/>" />
    <link rel="stylesheet" href="<c:url value='resources/css/mypage/reservationDetail.css'/>" />
    <link
      rel="stylesheet"
      href="<c:url value='resources/css/common/sidebar/sidebarMypage.css'/>"
    />
      <script defer src="<c:url value='resources/js/main/main.js'/>"></script>
      <script defer src="<c:url value='resources/js/mypage/myPageMain.js'/>"></script>

    <title>reservationDetail</title>
  </head>
	<div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
  <body>
    <div class="hd__inner1100">
      <!-- 사이드 바 -->
      <div class="side-bar-flex">
        <section class="nav-bar" id="nav-bar">
          <aside class="reservation-detail">
          	<div> <%@ include file="/WEB-INF/views/common/sidebarMyPage.jsp" %></div>
          </aside>
        </section>
      </div>

      <div class="hd__inner900">
        <!-- 1. body header-->
        <section class="body-header" id="reservation-detail-section1">
        <h3>Reservation Details</h3>
        </section>
        <!-- 2. brand-filter -->
        <section class="tabs" id="reservation-detail-section2">
            <div class="brand-filter">
                <h3>[스튜디오] 스튜디오</h3>
                <h3>[드레스] 드레스</h3>
                <h3>[메이크업] 메이크업</h3>
            </div>
        </section>
        <!-- 3.calandar -->
        <section class="calandars" id="payment-detail-section3">
            <div class="calandars-payment-list">
                <%@ include file="/WEB-INF/views/common/calendar.jsp" %>
                <div class="calandar-Content">
                  <div class="calandar-top">상세 예약 내역</div>
                  <div class="calandar-middle">
                    <div class="calendar-option-list">
                      <div class="calandar-option"> 야간촬영</div>
                      <div class="calandar-option"> 가격 : 220,000원</div>
                    </div>
                    <div class="calendar-option-list">
                      <div class="calandar-option">들러리 </div>
                      <div class="calandar-option"> 가격 :110,000원</div>
                    </div>
                    <div class="calendar-option-list">
                      <div class="calandar-option">애견동반 
                      </div>
                      <div class="calandar-option"> 가격 :100,000원</div>
                    </div>
                    <div class="calendar-total-price"></div>
                  </div>
                  <div class="calendar-bottom">
                    <div class="calendar-total-price">
                      <div>정상가 </div>
                      <div>430,000원</div>
                    </div>
                    <div class="calendar-total-price">
                      <div>쿠폰/포인트 할인가</div>
                      <div>-86,000원</div>
                    </div>
                    <div class="calendar-total-price">
                      <div>최종금액  </div>
                      <span>344,000원</span>
                    </div>
                  </div>
                </div>
            </div>
        </section>
        <div class="v-line"></div>
        <!-- 옵션 상세내용 -->
        <section class="option-detail" id="payment-detail-section4">
          <div>
            <ul class="option-tabs">
              <li class="option-tab">옵션 상세</li>
              <li class="option-tab"> 환불 안내</li>
            </ul>
          </div >
            <div class="option-information">옵션 정보</div>
            <div>
              <table class="option-table">
                <tbody>
                  <tr>
                    <th>옵션명</th>
                    <td>야간촬영</td>
                    <th>금액</th>
                    <td>220,000원</td>
                  </tr>
                  <tr>
                    <th>장소</th>
                    <td> 서울숲 </td>
                    <th>추가 옵션</th>
                    <td></td>
                  </tr>
                </tbody>
              </table>
              <br>
              <table class="option-table">
                <tbody>
                  <tr>
                    <th>옵션명</th>
                    <td>들러리</td>
                    <th>금액</th>
                    <td>110,000원</td>
                  </tr>
                  <tr>
                    <th>장소</th>
                    <td> 서울숲 </td>
                    <th>추가 옵션</th>
                    <td></td>
                  </tr>
                </tbody>
              </table>
              <br>
              <table class="option-table">
                <tbody>
                  <tr>
                    <th>옵션명</th>
                    <td>애견동반</td>
                    <th>금액</th>
                    <td>100,000원</td>
                  </tr>
                  <tr>
                    <th>장소</th>
                    <td> 서울숲 </td>
                    <th>추가 옵션</th>
                    <td></td>
                  </tr>
                </tbody>
              </table>
            </div>
        </section>
        <div class="v-line"></div>
        <section class="refund-information" id="payment-detail-section5">
          <div>
            <h2>환불 안내</h2>
            <ul>
              <h3>환불 요청 기간</h3>
              <li>예약일 기준 14일 이전: 전액 환불</li>
              <li>예약일 기준 7일 이전: 50프로 환불</li>
              <li>예약일 기준 3일 이내: 환불 불가</li>
              <h3>환불 절차</h3>
              <li>환불을 원하시는 경우, 결제 내역에서 환불하기 기능을 이용해 주시기 바랍니다.</li>
              <h3>환불 처리 기간</h3>
              <li>환불 요청 접수 후 7일 이내에 환불 절차가 진행됩니다. 환불 금액은 결제 시 사용하신 결제 수단으로 환불됩니다.</li>
            </ul>
          </div>
        </section>
      </div>
    </div>
  </body>
  <div> <%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</html>
