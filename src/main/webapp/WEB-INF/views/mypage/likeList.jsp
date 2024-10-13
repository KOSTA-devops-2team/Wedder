<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>likelist</title>
    <!-- 링크 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage/LikeList.css"/>
      <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/resources/css/common/sidebar/sidebarMypage.css"
      />
    
    <!-- 스크립트 -->
    
      <script defer src="${pageContext.request.contextPath}/resources/js/mypage/LikeList.js"></script>
      <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
      <script defer src="${pageContext.request.contextPath}/resources/js/mypage/myPageMain.js"></script>
    
  </head>
  <div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
  <body>
    <div class="hd__inner1100">
      <div class="side-bar-flex">
        <!-- 2.5 사이드 바 -->
        <section class="nav-bar" id="nav-bar">
          <aside class="myPage-sidebar">
          <div> <%@ include file="/WEB-INF/views/common/sidebarMyPage.jsp" %></div>
          </aside>
        </section>
      </div>
      <div>
        <section class="summary">
          <h1>안녕하세요. 마리아쥬스퀘어님</h1>
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
        <div class="test">
          <!-- 1.헤더 설명 -->
          <section class="List" id="LikeList-section1">
            <div class="List-content">
              <h2>MY LIKE</h2>
              <div></div>
            </div>
          </section>

          <!-- 2.서치, nav 바 기능 -->
        </div>
        <section class="search-bar" id="LikeList-section2">
          <div class="company-kind">
            <div class="kind-box">
              <div class="company studio">스튜디오</div>
              <div class="company dress">드레스</div>
              <div class="company makeUp">메이크업</div>
            </div>
            <div class="List-search-bar">
              <input type="search" id="List-search-box" />
              <button id="List-searh-button">Search</button>
            </div>
          </div>
        </section>
        <!-- 3. 카드 리스트 -->
        <section class="Card-List" id="LikeList-section3">
          <div class="LikeList-Card-List">
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
          </div>
          <div class="LikeList-Card-List">
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                alt="업체 이미지"
              />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
          </div>
          <div class="LikeList-Card-List">
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
            <div class="LikeList-Card">
              <img src="resources/assets/images/makeup-10.jpg" alt="업체 이미지" />
              <ul>
                <h3>로이 스튜디오</h3>
                <h5>Roi Studio</h5>
                <li>서울 특별시 강남구</li>
                <li>촬영비:679,000원</li>
                <li>최소보증: 150명</li>
                <li>전화번호: 010-xxxx-xxxx</li>
              </ul>
            </div>
          </div>
        </section>
      </div>
    </div>
  </body>
  <div> <%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</html>
