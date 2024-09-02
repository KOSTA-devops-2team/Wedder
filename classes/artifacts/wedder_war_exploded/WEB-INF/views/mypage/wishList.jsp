<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wish List</title>
    
      <link rel="stylesheet" href="<c:url value='resources/css/mypage/wishList.css'/>" />
  		<link
                rel="stylesheet"
                href="<c:url value='resources/css/common/sidebar/sidebarMypage.css'/>"
        />
      <script defer src="resources/js/main/main.js"></script>
      <script defer src="resources/js/mypage/wishList.js"></script>
      <script defer src="resources/js/mypage/myPageMain.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.3.1/swiper-bundle.min.js"></script>
  </head>
  <div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
  <body>
    <!-- 1.헤더 설명 -->
    <section class="Wish_List-header" id="Wish_List-section1">
      <h3>우리가 원하는 우리만의 목록</h3>
      <h1>너와 나의 Like List</h1>
    </section>
    <div class="hd__inner1100">
      <!-- 0. 마이페이지 사이드 바 -->
      <div>
        <aside class="myPage-sidebar">
       		<div> <%@ include file="/WEB-INF/views/common/sidebarMyPage.jsp" %></div>
        </aside>
      </div>

      <div class="hd__inner960">
        <!-- 2.  팔로우 리스트  -->
        <section class="Wish_List-followList" id="Wish_List-section2">
          <div class="recent">
            <img src="resources/assets/images/bestPackage4.png" alt="이미지" />
            <h2>Recent Studio</h2>
            <ul>
              <li>Num: <span class="bold">4</span></li>
              <li>
                팔로우한 사람:
                <span class="male bold"> 오강철</span>
              </li>
              <li>
                옵션:
                <ul class="option">
                  <li>옵션1</li>
                  <li>옵션1</li>
                  <li>옵션1</li>
                  <li>옵션1</li>
                  <li>옵션1</li>
                </ul>
              </li>
              <li>날짜: <span class="bold">2024-07-20</span></li>
              <li class="menu">메뉴(hide)</li>
            </ul>
          </div>
          <div class="followListCover">
            <h2>Couple Follow List</h2>
            <div class="followList">
              <ul>
                <li class="ListIndex">1.</li>
                <img
                  src="resources/assets/images/bestPackage3.png"
                  alt="우측 리스트-이미지"
                />
                <div class="followList-content">
                  <a href=""
                    ><li><h4>Studio1</h4></li></a
                  >
                  <li>날짜</li>
                  <li class="female">헤이즈</li>
                </div>
                <a
                  ><img src="resources/assets/images/menu.png" alt="메뉴 아이콘"
                /></a>
              </ul>
            </div>
            <div class="followList">
              <ul>
                <li class="ListIndex">2.</li>
                <img
                  src="resources/assets/images/bestPackage2.png"
                  alt="우측 리스트-이미지"
                />
                <div class="followList-content">
                  <a href=""
                    ><li><h4>Studio2</h4></li></a
                  >
                  <li>2024-07-16</li>
                  <li class="male">박종원(남)</li>
                </div>
                <a><img src="resources/assets/images/menu.png" alt="메뉴 아이콘"/></a>
              </ul>
            </div>
            <div class="followList">
              <ul>
                <li class="ListIndex">3.</li>
                <img
                  src=" resources/assets/images/bestPackage1.png"
                  alt="우측 리스트-이미지"
                />
                <div class="followList-content">
                  <a href=""
                    ><li><h4>Studio3</h4></li></a
                  >
                  <li>2024-07-26</li>
                  <li class="female">아이유(여)</li>
                </div>
                <a><img src="resources/assets/images/menu.png" alt="메뉴 아이콘"
                /></a>
              </ul>
            </div>
          </div>
        </section>
        <!-- 3. 추천 리스트(슬라이드) -->
        <section class="Wish_List-slide" id="Wish_List-section3">
          <h3>추천 팔로우 리스트</h3>
          <div class="slider-box-1">
            <!-- 슬라이더 메인 컨테이너 -->
            <div class="swiper">
              <div class="swiper-wrapper">
                <!-- 슬라이드 -->
                <div class="swiper-slide">
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                  <div>
                    <img
                      src="resources/assets/images/bestPackage1.png"
                      alt="테스트 이미지"
                    />
                    <ul>
                      <li>설명1</li>
                      <li>설명2</li>
                    </ul>
                  </div>
                </div>
              </div>
              <!-- 슬라이드 페이지 -->
              <div class="swiper-pagination"></div>

              <!-- 화살표 -->
              <div class="swiper-button-prev"></div>
              <div class="swiper-button-next"></div>
            </div>
          </div>
        </section>
      </div>
    </div>
  </body>
  <div> <%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</html>
