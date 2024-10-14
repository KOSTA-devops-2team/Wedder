<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/customer/login.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="hd__inner400 login-container">
    <!-- 로그인 타이틀 -->
    <section class="login-title">
        <h1>로그인</h1>
    </section>

    <!-- 로그인 입력 받기 -->
    <section class="login-input">
        <form action="${pageContext.request.contextPath}/log/login" method="post" onsubmit="return formCheck(this)">
            <div class="id">
                <input type="text" name="id" placeholder="아이디" value="${param.id != null ? param.id : cookie.id.value}" />
            </div>
            <div class="password">
                <input type="password" name="password" placeholder="비밀번호"/>
                <img
                        class="password-invisible"
                        src="${pageContext.request.contextPath}/resources/images/password-invisible.png"
                />
            </div>
<%--            <input type="hidden" name="toURL" value="${param.toURL }" />--%>
            <input type="hidden" name="toURL" value="${param.redirect != null ? param.redirect : ''}" />
            <div id="msg">
                <c:if test="${not empty param.msg }">
                    <i fa fa-exclamation-circle>${URLDecoder.decode(param.msg) }</i>
                </c:if>
            </div>
            <button class="login-btn">로그인하기</button>
        </form>
<%--        <label><input type="checkbox" name="rememberId" value="on" ${empty cookie.id.value ? "" : "checked" } />아이디 기억</label>--%>

    </section>

    <!-- 소셜 로그인 -->
    <section class="social-login">
        <h2>SNS 계정으로 로그인하기</h2>
        <div class="social-icon">
            <button class="kakao">
                <a href="javascript:kakaoLogin()">
                    <img
                        src="https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1611574965/noticon/iqg1rfbdbeaufcptuqgf.png"
                /></a>

            </button>
            <button class="naver">
                <img
                        src="https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1644169460/noticon/frvhykszxhjz4asz77oi.png"
                />
            </button>
            <button class="google">
                <img src="${pageContext.request.contextPath}/resources/images/google-logo.png"/>
            </button>
            <button class="apple">
                <img src="${pageContext.request.contextPath}/resources/images/apple-logo.png"/>
            </button>
        </div>
        <a href=<c:url value="/customer/register" />>
            <button class="signup-btn">간편 회원가입하기</button>
        </a>
        <div class="user-support">
            <a href="#">계정 찾기</a>
            <a href="#">비밀번호 찾기</a>
            <a href="#">문의하기</a>
        </div>
    </section>
</div>
<script> const contextPath = '${pageContext.request.contextPath}';</script>
<script src="${pageContext.request.contextPath}/resources/js/customer/login.js"></script>
</body>
</html>
