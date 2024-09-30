<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>emailVertify</title>
    <link rel="stylesheet"  href="resources/css/login/emailVertify.css" />
    <script defer src="resources/js/login/emailVertify.js"></script>
</head>
<body>
    <div class="modal">
        <div class="modal-body">
            <h3>인증 이메일을 입력해주세요!</h3>
            <p>이 작업을 수행하려면 이메일 인증이 필요합니다. 
                <br>받은 편지함을 확인하시고 제공된 지시에 따라주십시오. 
                <br>이메일이 발송된 주소는 아래 칸에 입력해주세요.</p>
            <input type="email" id="email"/><br/>
            <button class="email-send">이메일 전송</button><br/>
            <button class="close">닫기</button><br/>
        </div>
    </div>
</body>
</html>