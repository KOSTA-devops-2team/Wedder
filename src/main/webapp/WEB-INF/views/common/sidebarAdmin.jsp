<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>관리자페이지 사이드바</title>
    </head>
    <body>
        <nav class="admin-menu">
            <ul>
                <li class="menu-section">
                    <span class="title">대시보드</span>
                    <ul class="list">
                        <li class="item">
                            <a href="../../html/admin/adminMain.html"
                                >대시보드 홈</a
                            >
                        </li>
                    </ul>
                </li>
                <li class="menu-section">
                    <span class="title">예약관리</span>
                    <ul class="list">
                        <li class="item">
                            <a href="../../html/admin/customerList.html"
                                >고객 예약 관리</a
                            >
                        </li>
                        <li class="item">
                            <a href="#">새 예약 승인/거부</a>
                        </li>
                        <li class="item"><a href="#">달력보기</a></li>
                    </ul>
                </li>
                <li class="menu-section">
                    <span class="title">상품 관리</span>
                    <ul class="list">
                        <li class="item">
                            <a href="#">상품페이지 관리</a>
                        </li>
                    </ul>
                </li>
                <li class="menu-section">
                    <span class="title">통계 및 리포트</span>
                    <ul class="list">
                        <li class="item"><a href="#">예약 통계</a></li>
                        <li class="item"><a href="#">고객 통계</a></li>
                        <li class="item"><a href="#">매출 리포트</a></li>
                    </ul>
                </li>
                <li class="menu-section">
                    <span class="title">설정</span>
                    <ul class="list">
                        <li class="item"><a href="#">계정 설정</a></li>
                        <li class="item"><a href="#">시스템 설정</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </body>
</html>
