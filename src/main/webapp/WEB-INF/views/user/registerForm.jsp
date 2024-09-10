<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>	<!-- 스프링이 제공하는 커스텀 태그 라이브러리 사용  -->
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/user/signUp.css" />
    <script defer src="${pageContext.request.contextPath}/resources/js/main/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
    <div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
    <div class="hd__inner400">
        
        <!-- 타이틀 -->
        <form method="post" action="${pageContext.request.contextPath}/user/register" class="sign-up">
            <div class="sign-title">
                <h1>회원가입</h1>
                <div class="required-block">
                    <p class="required-info">필수입력사항</p>
                </div>
            </div>

            <!-- 프로필 & 아이디 -->
            <div class="profile">
                <img class="profile-img" src="${pageContext.request.contextPath}/resources/images/profile.png" alt="프로필 이미지" />
                <div>
                    <button class="profile-put"><img class="camera-icon" src="${pageContext.request.contextPath}/resources/images/icon-camera.png" alt="카메라 아이콘"></button>
                </div>
            </div>


            <div class="input-block">
                <input type="text" id="id" name="id" class="inputs" placeholder="아이디" required="required" />
            </div>
            <div class="input-block">
                <input type="password" id="password" name="password" class="inputs" minlength="8" maxlength="20" placeholder="비밀번호" />
                <img
                    class="password-invisible"
                    src="${pageContext.request.contextPath}/resources/images/password-invisible.png"
                />
            </div>
            <div class="input-block">
                <input type="password" name="pass-check" id="pass-check" class="inputs" minlength="8" maxlength="20" placeholder="비밀번호 확인" />
                <img
                    class="password-invisible"
                    src="${pageContext.request.contextPath}/resources/images/password-invisible.png"
                />
            </div>


            <!-- 개인정보 입력 -->
            <div class="info-block">
                <div class="label-block">
                    <label for="name" class="required-input">이름</label>
                </div>
                <div class="input-block">
                    <input type="text" id="name" name="name" class="inputs" placeholder="이름을 입력해주세요" />
                </div>
            </div>

            <div class="info-block">
                <div class="label-block">
                    <label for="phone" class="required-input">연락처</label>
                </div>
                <div class="input-block">
                    <input type="text" id="phone" name="phone" class="inputs" placeholder="숫자만 입력해주세요" />
                </div>
            </div>

            <div class="info-block">
                <div class="label-block">
                    <label for="email" class="required-input">이메일</label>
                </div>
                <div class="input-block">
                    <input type="email" id="email" name="email" class="inputs" placeholder="이메일 주소" />
                </div>
            </div>

            <div class="info-block">
                <div class="label-block">
                    <div class="gender-label">성별</div>
                </div>

                 <div class="gender-block">
                    <input type="radio" id="male" name="sex" value="1">남자
                    <input type="radio" id="female" name="sex" value="2">여자
                 </div>
            </div>

            <div class="btn-block">
                <button class="sign-btn">가입하기</button>
            </div>
        </form>
    </div>

    <div> <%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
    <script src="${pageContext.request.contextPath}/resources/js/user/signUp.js"></script>
</body>
</html>