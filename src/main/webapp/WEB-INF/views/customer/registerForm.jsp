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
        <form method="POST" action="${pageContext.request.contextPath}/user/registerProceed" class="sign-up" id="register">
            <div class="sign-title">
                <h1>회원가입</h1>
                <div class="required-block">
                    <p class="required-info">필수입력사항</p>
                </div>
            </div>

            <!-- 프로필 & 아이디 -->
            <div class="profile">
                <img class="profile-img" src="${pageContext.request.contextPath}/resources/images/profile.png" alt="프로필 이미지" />
            </div>

            <div id="idChk"></div>
            <div class="input-block">
                <input type="text" id="id" name="id" class="inputs" placeholder="아이디" required="required" />
            </div>
            <div id="pwChk"></div>
            <div class="input-block">
                <input type="password" id="password" name="password" class="inputs" placeholder="비밀번호" />
                <img
                    class="password-invisible"
                    src="${pageContext.request.contextPath}/resources/images/password-invisible.png"
                />
            </div>

            <div id="pwChk2"></div>
            <div class="input-block">
                <input type="password" name="pass-check" id="passCheck" class="inputs" placeholder="비밀번호 확인" autocomplete="off"/>
                <img
                    class="password-invisible"
                    src="${pageContext.request.contextPath}/resources/images/password-invisible.png"
                />
            </div>

            <!-- 개인정보 입력 -->
            <div class="info-block">
                <div class="label-block">
                    <label for="name" class="required-input">이름</label>
                    <div id="nameChk"></div>
                </div>
                <div class="input-block">
                    <input type="text" id="name" name="name" class="inputs" placeholder="이름을 입력해주세요" autocomplete="off"/>
                </div>
            </div>

            <div class="info-block">
                <div class="label-block">
                    <label for="phone" class="required-input">연락처</label>
                    <div id="phoneChk"></div>
                </div>
                <div class="input-block">
                    <input type="text" id="phone" name="phone" class="inputs" placeholder="숫자만 입력해주세요" autocomplete="off"/>
                </div>
            </div>

            <div class="info-block">
                <div class="label-block">
                    <label for="email" class="required-input">이메일</label>
                    <div id="emailChk"></div>
                </div>
                <div class="input-block">
                    <input type="email" id="email" name="email" class="inputs" placeholder="이메일 주소" autocomplete="off"/>
                </div>
            </div>

            <div class="info-block">
                <div class="label-block">
                    <div class="gender-label">성별</div>
                </div>

                 <div class="gender-block">
                    <input type="radio" id="male" name="gender" value="1">남자
                    <input type="radio" id="female" name="gender" value="2">여자
                 </div>
            </div>
            <div class="btn-block">
                <button type="submit" id="sign-btn" class="sign-btn">가입하기</button>
            </div>
        </form>
    </div>

    <div> <%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
    <script>const contextPath = '${pageContext.request.contextPath}';</script>
    <script src="${pageContext.request.contextPath}/resources/js/user/signUp.js"></script>
</body>
</html>