const togglePasswordIcon = document.querySelector(".password-invisible");

let isHidden = false;
togglePasswordIcon.addEventListener("click", () => {
    const password_text = document.querySelector(".password input");

    if (!isHidden) {
        password_text.type = "text";
        togglePasswordIcon.src = "../../assets/images/password-visible.png";
        isHidden = true;
    } else {
        password_text.type = "password";
        togglePasswordIcon.src = "../../assets/images/password-invisible.png";
        isHidden = false;
    }
});

//     function formCheck(frm) {
//     let msg =''
//
//     if(frm.id.value.length === 0) {
//     setMessage('id를 입력해주세요', frm.id);
//     return false;
//     }
//
//     if(frm.id.value.length !==0 || frm.password.value.length === 0) {
//     setMessage('password를 입력해주세요.', frm.password);
//     return false;
//     }
//     return true;
// }
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