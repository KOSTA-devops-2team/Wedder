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
        <link rel="stylesheet" href="<c:url value='resources/css/myPage/mypage.css'/>"/>
        <link
                rel="stylesheet"
                href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"
        />
        <link
                rel="stylesheet"
                href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
        />
        <link
                rel="stylesheet"
                href="<c:url value='resources/css/common/sidebar/sidebarMyPage.css'/>"
        />
    <!-- 스크립트 -->
        <script defer src="<c:url value='resources/js/main/main.js'/>"></script>
        <script defer src="<c:url value='resources/js/myPage/mypage.js'/>"></script>
        <script defer src="<c:url value='resources/js/myPage/myPageMain.js'/>"></script>
</head>

<div> <%@ include file="/resources/components/header/headerV2.jsp" %></div>
<body>
<div class="myPage-container hd__inner1100">
    <!-- 0. 마이페이지 사이드 바 -->
    <aside class="myPage-sidebar">
    	<div><%@ include file="/resources/components/sidebar/sidebarMyPage.jsp" %></div>
    </aside>

    <!-- 1.마이페이지 메인페이지 -->
    <div class="myPage-content hd__inner880">
        <section class="summary">
            <h1>안녕하세요. 마리아쥬스퀘어 고객님 </h1>
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
        <main>
            <!-- 2.프로필 정보 -->
            <section class="profile" id="Mypage-section2">
                <div class="profile-main">
                    <div class="profile-main-image">
                        <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/person/woman1.png"
                                alt="프로필 사진"
                        />
                    </div>
                    <div>
                        <div class="profile-name">마타리</div>
                        <div>전화 번호</div>
                        <div class="profile-body">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/phone.png"
                                    alt="휴대폰 로고"
                            />
                            <p>010</p>
                            <p>-</p>
                            <p></p>
                            <p>-</p>
                            <p></p>
                        </div>
                        <div>메일</div>
                        <div class="profile-body">
                            <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/mail.png" alt="메일 로고" />
                            <p>matari 4593</p>
                            <p>@</p>
                            <p>naver.com</p>
                        </div>
                        <div>생일</div>
                        <div class="profile-body">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/cake.png"
                                    alt="생일 케이크 로고"
                            />
                            <p>1997</p>
                            <p>년</p>
                            <p>3</p>
                            <p>월</p>
                            <p>5</p>
                            <p>일</p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- 3.금일 방문 일정 -->
            <section class="visit-plan" id="Mypage-section3">
                <div class="sub-title-header">
                    <div class="sub-title">금일 방문 일정</div>

                    <div class="Reservation-mange-go">
                        <a href="#">방문 일정 상세보기>>></a>
                    </div>
                </div>
                <br>
                <table class="table-VSplan">
                    <thead>
                    <tr>
                        <th>스튜디오명</th>
                        <th>예약자</th>
                        <th>금일 예약 시간</th>
                        <th>상태</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>s스튜디오</td>
                        <td>박종원</td>
                        <td>2025-10-19 일요일</td>
                        <td>예약 중</td>
                    </tr>
                    <tr>
                        <td>t스튜디오</td>
                        <td>박종원</td>
                        <td>2025- 1-31 월요일</td>
                        <td>결제 완료</td>
                    </tr>
                    <tr>
                        <td>c스튜디오</td>
                        <td>박종원</td>
                        <td>2025- 2-04 월요일</td>
                        <td>예약 중</td>
                    </tr>
                    <tr>
                        <td>p스튜디오</td>
                        <td>박종원</td>
                        <td>2025- 3-05 월요일</td>
                        <td>결제 완료</td>
                    </tr>
                    </tbody>
                </table>
            </section>
            <BR></BR><BR></BR>
            <!-- 4.현재 예약 현황 -->
            <section class="recent-reservation" id="Mypage-section4">
                <div class="sub-title-header">
                    <div class="sub-title">현재 예약 현황</div>
                    <div class="Reservation-mange-go">
                        <a href="reservation-list">예약 현황 바로가기>>></a>
                    </div>
                </div>
                <div class="category">웨딩 홀</div>
                <div class="table-divide">
                    <div class="table">
                        <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                alt="프로필 이미지"
                        />
                        <div>
                            <div>비슈어 스튜디오</div>
                            <div>서울특별시 서초구 신반포로 41길 7</div>
                            <div class="button-list">
                                <button  class="mail" href="#"></button>
                                <button  class="heart liked"></button>
                            </div>
                        </div>
                    </div>
                    <div class="table">
                        <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                alt="프로필 이미지"
                        />
                        <div>
                            <div>비슈어 스튜디오</div>
                            <div>서울특별시 서초구 신반포로 41길 7</div>
                            <div class="button-list">
                                <button  class="mail" href="#"></button>
                                <button  class="heart liked"></button>
                            </div>
                        </div>
                    </div>
                    <div class="table">
                        <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/Reservation-CG-Studio.png"
                                alt="프로필 이미지"
                        />
                        <div>
                            <div>비슈어 스튜디오</div>
                            <div>서울특별시 서초구 신반포로 41길 7</div>
                            <div class="button-list">
                                <button  class="mail" href="#"></button>
                                <button  class="heart liked"></button>
                            </div>
                        </div>
                    </div>
                    <div class="table">
                        <img
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                alt="프로필 이미지"
                        />
                        <div>
                            <div>비슈어 스튜디오</div>
                            <div>서울특별시 서초구 신반포로 41길 7</div>
                            <div class="button-list">
                                <button  class="mail" href="#"></button>
                                <button  class="heart liked"></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tabs">
                    <div id="horizontal-underline"></div>
                    <div class="tab" id="studio"><a class="btn">스튜디오</a></div>
                    <div class="tab" id="dress"><a class="btn">드레스</a></div>
                    <div class="tab" id="makeUp"><a class="btn">메이크업</a></div>
                </div>
                <div class="content">
                    <div class="studio brand" >
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 스튜디오</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 스튜디오</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 스튜디오</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 스튜디오</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>

                    </div>

                    <br>
                    <div class="dress brand" >

                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 드레스</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 드레스</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 드레스</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 드레스</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="makeUp brand" >
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 메이크업</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 메이크업</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 메이크업</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                        <div class="table">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                                    alt="프로필 이미지"
                            />
                            <div>
                                <div>비슈어 메이크업</div>
                                <div>서울특별시 서초구 신반포로 41길 7</div>
                                <div class="button-list">
                                    <button  class="mail" href="#"></button>
                                    <button  class="heart liked"></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
</div>
</body>
<div><%@ include file="/resources/components/footer/footerV2.jsp" %></div>
</html>
