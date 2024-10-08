<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage/reservationDetail.css" />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/common/sidebar/sidebarMypage.css"
    />
      	<script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
      	<script defer src="${pageContext.request.contextPath}/resources/js/mypage/myPageMain.js"></script>
        <script src ="${pageContext.request.contextPath}/resources/js/mypage/reservationDetail.js"></script>
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

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
        <!-- 3.calandar -->
        <section class="calendar" id="payment-detail-section3">
            <div class="calendar-payment-list">
                <%@ include file="/WEB-INF/views/common/calendarList.jsp" %>

               <%-- &lt;%&ndash;get 정보로 예약된 날짜를 가져오는 중&ndash;%&gt;
                    <div id="getYear" style="display: none"> ${OnlyYear} </div>
                    <div id="getMonth"  style="display: none" > ${OnlyMonth} </div>
                    <div id="getDay"  style="display: none" > ${OnlyDay} </div>--%>

                <div class="calendar-Content">
                  <div class="calendarTopMiddle ">
                      <div class="calendar-top">상세 예약 내역</div>
                      <div class="calendar-middle">
                    <c:if test="${category eq'메이크업'}">
                        <c:forEach var="makeupCri" items="${ToCustomerMakeupInfo}" >
                          <div class="calendar-option-list">

                            <div class="calendar-option"> ${makeupCri.optionDto.optionName}</div>
                            <div class="calendar-option price"> ${makeupCri.optionDto.optionPrice}원</div>
                          </div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${category eq'스튜디오'}">
                        <c:forEach var="studioCri" items="${ToCustomerStudioInfo}" >
                          <div class="calendar-option-list">

                            <div class="calendar-option"> ${studioCri.optionDto.optionName}</div>
                            <div class="calendar-option price"> ${studioCri.optionDto.optionPrice}원</div>
                          </div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${category eq'드레스'}">
                      <c:forEach var="dressCri" items="${ToCustomerDressInfo}" >
                          <div class="calendar-option-list">

                              <div class="calendar-option"> ${dressCri.optionDto.optionName}</div>
                              <div class="calendar-option price"> ${dressCri.optionDto.optionPrice}원</div>
                          </div>
                      </c:forEach>
                    </c:if>
                      <c:if test="${category eq'웨딩홀'}">
                          <c:forEach var="hallCri" items="${ToCustomerHallInfo}" >
                              <div class="calendar-option-list">

                                  <div class="calendar-option"> ${hallCri.optionDto.optionName}</div>
                                  <div class="calendar-option price"> ${hallCri.optionDto.optionPrice}원</div>
                              </div>
                          </c:forEach>
                      </c:if>

                    <div class="calendar-total-price"></div>
                  </div>
                  </div>
                  <div class="calendar-bottom">
                    <div class="calendar-total-price">
                      <div>정상가 </div>
                      <div id="totalPrice"></div>
                    </div>
                    <div class="calendar-total-price">
                      <div>쿠폰/포인트 할인가</div>
                      <div id="salePrice"></div>
                    </div>
                    <div class="calendar-total-price">
                      <div>최종금액  </div>
                      <span id="lastPrice"></span>
                    </div>
                  </div>
                </div>
            </div>
        </section>
        <div class="v-line"></div>
        <!-- 옵션 상세내용 -->
        <section class="option-detail" id="payment-detail-section4">
          <div>
            <ul class="option-tabs ">
              <li class="option-tab ">옵션 상세</li>
              <li class="option-tab "> 환불 안내</li>
            </ul>
          </div >
            <div>
                <div class="option-information">옵션 정보</div>
                    <c:if test="${category eq'메이크업'}">
                        <c:forEach var="makeupCri" items="${ToCustomerMakeupInfo}">
                            <div>
                              <table class="option-table">
                                <tbody>
                                  <tr>
                                    <th>옵션명</th>
                                    <td>${makeupCri.optionDto.optionName}</td>
                                    <th>금액</th>
                                    <td>${makeupCri.optionDto.optionPrice}원</td>
                                  </tr>
                                  <tr>
                                    <th>장소</th>
                                    <td> ${makeupCri.companyDto.location} </td>
                                    <th>추가 옵션</th>
                                    <td></td>
                                  </tr>
                                </tbody>
                              </table>
                                <br/>
                            </div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${category eq'스튜디오'}">
                        <c:forEach var="studioCri" items="${ToCustomerStudioInfo}">
                            <div>
                                <table class="option-table">
                                    <tbody>
                                    <tr>
                                        <th>옵션명</th>
                                        <td>${studioCri.optionDto.optionName}</td>
                                        <th>금액</th>
                                        <td>${studioCri.optionDto.optionPrice}원</td>
                                    </tr>
                                    <tr>
                                        <th>장소</th>
                                        <td> ${studioCri.companyDto.location} </td>
                                        <th>추가 옵션</th>
                                        <td></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <br/>
                            </div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${category eq'드레스'}">
                        <c:forEach var="dressCri" items="${ToCustomerDressInfo}">
                            <div>
                                <table class="option-table">
                                    <tbody>
                                    <tr>
                                        <th>옵션명</th>
                                        <td>${dressCri.optionDto.optionName}</td>
                                        <th>금액</th>
                                        <td>${dressCri.optionDto.optionPrice}원</td>
                                    </tr>
                                    <tr>
                                        <th>장소</th>
                                        <td> ${dressCri.companyDto.location} </td>
                                        <th>추가 옵션</th>
                                        <td></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <br/>
                            </div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${category eq'웨딩홀'}">
                        <c:forEach var="hallCri" items="${ToCustomerHallInfo}">
                            <div>
                                <table class="option-table">
                                    <tbody>
                                    <tr>
                                        <th>옵션명</th>
                                        <td>${hallCri.optionDto.optionName}</td>
                                        <th>금액</th>
                                        <td>${hallCri.optionDto.optionPrice}원</td>
                                    </tr>
                                    <tr>
                                        <th>장소</th>
                                        <td> ${hallCri.companyDto.location} </td>
                                        <th>추가 옵션</th>
                                        <td></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <br/>
                            </div>
                        </c:forEach>
                    </c:if>
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
