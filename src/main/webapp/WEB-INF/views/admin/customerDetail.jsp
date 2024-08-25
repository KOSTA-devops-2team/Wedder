<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>customerDetail</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/customerDetail.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/sidebar/sidebarAdmin.css"/>
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/admin/customerDetail.js"></script>
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

        <!-- 2. 고객 정보 + step 섹션 -->
        <section class="user-info">
            <div class="user-info-container">
                <div class="user-info-inner">
                    <div class="self-name">박혜원</div>
                    <span>님</span>
                    <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png" alt="하트이미지"/>
                    <div class="partner-name">이정원</div>
                    <span>님</span>
                </div>
                <p>
                    웨딩홀 투어 일정, 결제 현황, 본식 예약일정까지
                    확인할 수 있습니다.
                </p>
            </div>
            <div class="steps">
                <div class="step" id="step1">
                    <h2>Step 1</h2>
                    <div>방문 예약</div>
                </div>
                <div class="step selected" id="step2">
                    <h2>Step 2</h2>
                    <div>방문 완료</div>
                </div>
                <div class="step" id="step3">
                    <h2>Step 3</h2>
                    <div>메일 전송</div>
                </div>
                <div class="step" id="step4">
                    <h2>Step 4</h2>
                    <div>결제 완료</div>
                </div>
            </div>
        </section>

        <!-- 3. 웨딩홀 방문 일정 -->
        <section class="visit-schedule">
            <h2>방문 예약 일정</h2>
            <div class="visit-detail-container">
                <div class="visit-details">
                    <div class="visit-time">
                        <div>2024-07-17</div>
                        <div class="visit-true">12:00</div>
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
                        <div class="payment-email-true">결제 안내 메일 발송 완료</div>
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

        <!-- 4. 결제 현황 -->
        <section class="payment-status">
            <div class="payment-header">
                <div>
                    <h2>결제 현황</h2>
                    <p>
                        '식사비'는 당일 결제 가능하며 이외 모든 잔금은
                        본식 2주전까지 결제가 완료되어야 합니다.
                    </p>
                </div>

                <div class="btns">
                    <button class="quote-button" id="quote-link">견적서 보기</button>
                    <div id="modal-container"></div>
                    <button class="email-button">결제 안내 이메일 발송</button>
                </div>
            </div>
            <div class="payment-body">
                <div class="payment-status">
                    <div class="payment-date">결제 날짜</div>
                    <div class="payment-status-not">결제 대기</div>
                </div>
                <table class="payment-table">
                    <thead>
                    <tr>
                        <th>구분</th>
                        <th>금액</th>
                        <th>결제수단</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>서비스 총액</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>선결제 총액</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>식비외 잔금</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>식비 잔금</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>전체 잔금</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </section>

        <!-- 5. 예식(본식) 정보 -->
        <section class="wedding">
            <h2>예식(본식) 정보</h2>
            <div class="wedding-container">
                <div class="status-not">미확정</div>
                <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"/>
                <div class="wedding-info">
                    <div>예도홀</div>
                    <div class="date">
                        <div>본식날짜</div>
                        <span>2025 - 11 - 17 (일)</span>
                    </div>
                    <div class="time">
                        <div>본식시간</div>
                        <span>14:00</span>
                    </div>
                </div>
            </div>
        </section>
    </main>
</div>
</body>
</html>
