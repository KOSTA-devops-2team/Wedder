<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>admin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/adminMain.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/sidebar/sidebarAdmin.css"/>
    <script defer src="${pageContext.request.contextPath}/resources/js/admin/adminMain.js"></script>
</head>
<body>

<div class="admin-container hd__inner1100">
    <aside class="admin-sidebar">
        <div id="admin-sidebar-placeholder"></div>
    </aside>

    <main class="admin-content">
        <!-- 1. 상단 요약 섹션 -->
        <section class="summary">
            <h1>안녕하세요. 마리아쥬스퀘어 관리자님 🙌</h1>
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

        <!-- 2. 신규 방문 예약 -->
        <section class="new-visit-reservation">
            <h2>신규 방문 예약</h2>
            <div class="new-visit-header">
                <p>
                    💡 웨딩홀 신규 방문 예약 <span>2</span
                ><span>건</span>있습니다.
                </p>
                <a href="${pageContext.request.contextPath}/admin/customerList.jsp"
                >예약관리 바로가기 >>></a
                >
            </div>
            <table>
                <thead>
                <tr>
                    <th>예약일</th>
                    <th>예약시간</th>
                    <th>예약자</th>
                    <th>희망 예식일</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>2024-07-01 월요일</td>
                    <td>10:00</td>
                    <td>정정화, 정정화(남편)</td>
                    <td>2025-10-19 일요일</td>
                </tr>
                <tr>
                    <td>2024-06-21 금요일</td>
                    <td>17:00</td>
                    <td>이순신, 이순신(아내)</td>
                    <td>2025-05-05 토요일</td>
                </tr>
                </tbody>
            </table>
        </section>

        <!-- 3. 고객 방문 일정 -->
        <section class="today-visit">
            <h2>고객 방문 일정</h2>
            <div class="today-visit-header">
                <p>
                    ✅ 오늘 웨딩홀 방문 일정 <span>3</span>건 있습니다.
                </p>
                <a href="${pageContext.request.contextPath}/admin/customerList.jsp"
                >예약관리 바로가기 >>></a
                >
            </div>
            <div class="visit-detail-container">
                <div class="visit-details">
                    <div class="visit-time">
                        <div>12:00</div>
                    </div>
                    <div class="visit-customer-info">
                        <div class="customer-1">
                            👰🏻‍♀️ <span class="name">박혜원</span>
                            <span class="phone">010-9917-5026</span>
                        </div>
                        <div class="customer-2">
                            🤵🏻 <span class="name">이정원</span>
                            <span class="phone">010-5454-9395</span>
                        </div>
                    </div>
                    <div class="wedding-info">
                        <div>
                            <span>예상 하객수</span>
                            <span>200명 ~ 300명</span>
                        </div>
                        <div>
                            <span>희망 예식일</span>
                            <span>2024-11-23 토요일</span>
                        </div>
                        <!-- 3-1. 전달사항 더보기 & 닫기-->
                        <div class="announcement">
                            <span>전달 사항</span>
                            <div class="text-wrapper">
                                <p class="text">
                                    2024년 10월 15일 오후 2시에 예식을
                                    진행하고자 합니다. 예상 인원은 250명
                                    정도이며, 예산은 300만원 내외로
                                    생각하고 있습니다. 특별히 꽃장식과
                                    사진 촬영을 부탁드리고 싶습니다.
                                    예약 가능 여부와 세부사항, 추가 비용
                                    등에 대해 상담하고 싶습니다.
                                <div class="more-text">더보기</div>
                                <div class="less-text">닫기</div>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</div>
</body>
</html>
