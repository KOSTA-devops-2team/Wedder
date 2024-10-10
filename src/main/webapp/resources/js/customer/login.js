const togglePasswordIcon = document.querySelector(".password-invisible");

let isHidden = false;
togglePasswordIcon.addEventListener("click", () => {
    const password_text = document.querySelector(".password input");

    if (!isHidden) {
        password_text.type = "text";
        togglePasswordIcon.src = contextPath + "/resources/images/password-visible.png";
        isHidden = true;
    } else {
        password_text.type = "password";
        togglePasswordIcon.src = contextPath + "/resources/images/password-invisible.png";
        isHidden = false;
    }
});

    /* 서버가 먼저 해석함. ${msg}이 부분을 EL로 해석함. 그 결과를 브라우저에 보내줌
    ES6는 템플릿 리터럴이라는 새로문 문자열 표기법으로 해석함.
    */
    function setMessage(msg, element
    ) {
    document.getElementById("msg").innerHTML = `<i class="fa fa-exclamation-circle" >${msg}</i> `;
    if (element) {
    element.select();			// 값을 잘못 입력되었을 때 그 요소를 선택되게하는 것임
    }
}

// 카카오 로그인 구현
// Kakao.init('앱키js');
// function kakaoLogin() {
//     Kakao.Auth.login({
//         success: function (response) {
//             Kakao.API.request({
//                 url: '/v2/user/me',
//                 success: function (response) {
//                     alert(JSON.stringify(response))
//                 },
//                 fail: function (error) {
//                     alert(JSON.stringify(error))
//                 },
//             })
//         },
//         fail: function (error) {
//             alert(JSON.stringify(error))
//         },
//     })
// }