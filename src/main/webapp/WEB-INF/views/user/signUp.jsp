<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="<c:url value='resources/css/common/reset.css'/>" />
    <link rel="stylesheet" href="resources/css/login/signUp.css" />
    <script defer src="<c:url value='resources/js/main/main.js'/>"></script>

</head>
<body>
    <div> <%@ include file="/resources/components/header/headerV2.jsp" %></div>
    <div class="hd__inner400">
        
        <!-- 타이틀 -->
        <section class="sign-up">
            <div class="sign-title">
                <h1>회원가입</h1>
                <div class="required-block">
                    <p class="required-info">필수입력사항</p>
                </div>
            </div>
                       
        
            <!-- 프로필 & 아이디 -->
            <div class="profile">
                <img class="profile-img" src="resources/assets/images/profile.png" alt="프로필 이미지" />
                <div>
                    <button class="profile-put"><img class="camera-icon" src="resources/assets/images/icon-camera.png" alt="카메라 아이콘"></button>
                </div>
            </div> 
            <div class="input-block">
                <input type="text" name="id" class="inputs" placeholder="아이디" required="required" />
            </div>
            <div class="input-block">
                <input type="password" name="pass" id="pass" class="inputs" minlength="8" maxlength="20" placeholder="비밀번호" />
                <img
                    class="password-invisible"
                    src="resources/assets/images/password-invisible.png"
                />
            </div>
            <div class="input-block">
                <input type="password" name="pass-check" id="pass-check" class="inputs" minlength="8" maxlength="20" placeholder="비밀번호 확인" />
                <img
                    class="password-invisible"
                    src="resources/assets/images/password-invisible.png"
                />
            </div>


            <!-- 개인정보 입력 -->     
            <div class="info-block">
                <div class="label-block">
                    <label for="user-name" class="required-input">이름</label> 
                </div>
                <div class="input-block">
                    <input type="text" id="user-name" name="user-name" class="inputs" placeholder="이름을 입력해주세요" />
                </div>
            </div>
            <div class="info-block">
                <div class="label-block">
                    <label for="user-birth" class="required-input" pattern=".{4, 8}" required title="생년월일 8글자를 입력해주세요.">생년월일</label>
                </div>
                <div class="input-block">
                    <input type="number" id="user-birth" name="user-birth" class="inputs" placeholder="생년월일 8자리를 입력해주세요" />
                </div>
            </div>
            <div class="info-block">
                <div class="label-block">
                    <label for="user-phone" class="required-input">연락처</label>
                </div>
                <div class="input-block">
                    <input type="tell" id="user-phone" name="user-phone" class="inputs" placeholder="숫자만 입력해주세요" />
                </div>
            </div>
            <div class="info-block">
                <div class="label-block">
                    <label for="user-email" class="required-input">이메일</label>
                </div>
                <div class="input-block">
                    <input type="email" id="user-email" name="user-email" class="inputs" placeholder="이메일 주소" />
                </div>
            </div>
            <div class="info-block">
                <div class="label-block">
                    <label for="gender" class="gender-label">성별</label>
                </div>
                <!-- <label for="gender-man" class=""> 
                    <input type="radio" name="gender" id="gender-man" value="M">
                    <span>남자</span>
                </label>
                <label for="gender-woman">
                    <input type="radio" name="gender" id="gender-woman" value="W">
                    <span>여자</span>
                </label> -->
                 <div class="gender-block">
                    <input type="radio" id="gender" name="gender" value="M">남자
                    <input type="radio" id="gender" name="gender" value="F">여자
                </div>           
            </div>

            <div class="btn-block">
                <button class="sign-btn">가입하기</button>
            </div>
        </section>
    </div>
    <div><%@ include file="/resources/components/footer/footerV2.jsp" %></div>
    <script src="resources/js/login/signUp.js"></script>
</body>
</html>