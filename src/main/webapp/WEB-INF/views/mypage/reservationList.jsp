<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>reservationList</title>
    <link rel="stylesheet" href="<c:url value='resources/css/common/reset.css'/>" />
    <link rel="stylesheet" href="<c:url value='resources/css/myPage/reservationList.css'/>"/>
   	<link
                rel="stylesheet"
                href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"
     />
      <link
                rel="stylesheet"
                href="<c:url value='resources/css/common/sidebar/sidebarMyPage.css'/>"
        />
      <script defer src="<c:url value='resources/js/main/main.js'/>"></script>
      <script defer src="<c:url value='resources/js/myPage/myPageMain.js'/>"></script>
      <script defer src="<c:url value='resources/js/myPage/reservationList.js'/>"></script>
      
  </head>
  <div> <%@ include file="/resources/components/header/headerV2.jsp" %></div>
  <body>
    <div class="hd__inner1100">
      <div class="side-bar-flex">
        <!-- 2.5 사이드 바 -->
        <section class="nav-bar" id="nav-bar">
          <aside class="myPage-sidebar">
            <div><%@ include file="/resources/components/sidebar/sidebarMyPage.jsp" %></div>
          </aside>
        </section>
      </div>
      <div class="hd__inner880">
        <section class="summary">
          <h1>안녕하세요. 마리아쥬스퀘어 고객님</h1>
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
        <div class="reservationList">
          <h3 class="reservation-h3-1">예약 내역</h3>
          <div class="reservationList-visithall-top">
            <h4>웨딩홀 방문 예약 내역</h4>
          </div>
          <section
            class="reservationList-visithall-middle"
            id="reservation-section1"
          >
            <div class="reservationList-visithall-card">
              <div>
                <img src="../../assets/images/BestPackage1.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
            <div class="reservationList-visithall-card">
              <div>
                <img src="../../assets/images/BestPackage1.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
            <div class="reservationList-visithall-card">
              <div>
                <img src="../../assets/images/BestPackage1.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
            <div class="reservationList-visithall-card">
              <div>
                <img src="../../assets/images/BestPackage1.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
          </section>
          <div class="reservationList-top">
            <h4>웨딩홀 예약 내역</h4>
          </div>
          <section
            class="reservationList-hall-middle"
            id="reservation-section2"
          >
            <div class="reservationList-visit-card">
              <div>
                <img src="../../assets/images/BestPackage1.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
            <div class="reservationList-visit-card">
              <div>
                <img src="../../assets/images/BestPackage1.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
          </section>
          <div class="sudume-list">
            <a class="company studio">스튜디오</a>
            <div>&nbsp/&nbsp</div>
            <a class="company dress">드레스</a>
            <div>&nbsp/&nbsp</div>
            <a class="company makeUp">메이크업</a>
            <div>&nbsp예약 내역</div>
          </div>
          <section
            class="reservationList-sudume-middle"
            id="reservation-section3-1"
          >
            <div class="reservationList-visit-card">
              <div>
                <img src="../../assets/images/BestPackage1.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
            <div class="reservationList-visit-card">
              <div>
                <img src="../../assets/images/BestPackage1.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
          </section>
          <section
            class="reservationList-sudume-middle"
            id="reservation-section4"
          >
            <div class="reservationList-visit-card">
              <div>
                <img src="../../assets/images/bestPackage2.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
            <div class="reservationList-visit-card">
              <div>
                <img src="../../assets/images/bestPackage2.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
          </section>
          <section
            class="reservationList-sudume-middle"
            id="reservation-section3"
          >
            <div class="reservationList-visit-card">
              <div>
                <img src="../../assets/images/BestPackage3.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
            <div class="reservationList-visit-card">
              <div>
                <img src="../../assets/images/BestPackage3.png" alt="이미지" />
                <h3>마리아쥬 스퀘어</h3>
              </div>
              <div class="card-content">
                <div class="content-body">
                  <div>
                    <p>예약자명</p>
                    <p>날짜</p>
                    <p>시간</p>
                    <p>희망 예식일</p>
                    <p>인원 수</p>
                  </div>
                  <div class="inputs">
                    <p>박혜원</p>
                    <p>2024-07-06 수요일</p>
                    <p>오후 5시</p>
                    <p>2024-11-23 토요일</p>
                    <p>200~300명</p>
                  </div>
                </div>
                <div class="content-end">
                  <a href="reservation-detail"
                    >예약 상세 보러가기>></a
                  >
                </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  </body>
  <div><%@ include file="/resources/components/footer/footerV2.jsp" %></div>
</html>
