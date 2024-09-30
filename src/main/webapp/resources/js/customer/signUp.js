/* 비밀번호 on&off */
document.querySelectorAll(".password-invisible").forEach((toggleIcon) => {
    toggleIcon.addEventListener("click", () => {
        const passwordInput = toggleIcon.previousElementSibling;

        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            toggleIcon.src = contextPath + "/resources/images/password-visible.png";
        } else {
            passwordInput.type = "password";
            toggleIcon.src = contextPath + "/resources/images/password-invisible.png";
        }
    });
});

// Start jQuery
$(function() {
    // 회원 가입 시 사용자 입력값들 검증

    // 정규표현식 활용
    //각 입력값들의 유효성 검증을 위한 정규표현식을 변수로 선언.
    const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,14}$/);
    // [허용문자], {최소문자길이, 최대 문자길이}
    const getPwCheck = RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
    // 숫자가 먼저오고 뒤에 특수문자가 옴 or 특수문자가 먼저오고 숫자가 옴 2가지 방법으로 제약 사항 설정
    const getNameCheck = RegExp(/^[가-힣]+$/);
    // 한글만 허용
    const getPhoneCheck = RegExp(/^010-?\d{4}-?\d{4}$/);
    // 010으로 시작하는 숫자만 허용
    const getEmailCheck = RegExp(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$/)
    // 이메일 형식만 허용

    // 입력값 중 하나라도 만족하지 못한다면 회원 가입 처리를 막기 위한 논리형 변수 선언
    let chk1 = false, chk2 = false, chk3 = false, chk4 = false, chk5 = false, chk6 = false;

    // 1. ID 입력값 검증
    $('#id').keyup(function(event) {
        // 키를 입력하고 땔 때 마다 이벤트 발생
        if($(event.target).val() === ''){
            // 이벤트가 발생된 곳의 값이 비어있으면 발생
            $('#idChk').html('<b style="font-size: 14px; color:red">[아이디는 필수 정보입니다]</b>');
            chk1 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        // 아이디 입력값 유효성 검증 (영문과 숫자로만 4~14자 허용)
        else if(!getIdCheck.test($(event.target).val())){
            // test함수를 통해 검증하고 싶은 값을 넣어줌
            // getIdCheck는 정규표현식이므로 검증 값을 정규표현식에 적합한지 테스트 (boolean으로 return)

            // 정규표현식에 어긋난다면
            $('#idChk').html('<b style="font-size: 14px; color:red">[영문과 숫자 조합으로 4~14자 조합해주세요]</b>');
            chk1 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
            // ID 중복 확인(비동기 처리)
        // 특정 로직의 실행이 끝날 때까지 기다리지 않고 먼저 코드 실행(페이지 전화 없이 통신)
        else{
            // 중복 검사 확인하기 위해 사용자가 입력한 id값 가져와서 저장
            const checkId = $(event.target).val();

            // ajax 호출
            // ajax는 client에서 서버와 비동기 통신을 진행하게 도와주는 ajax함수
            // $.ajax()를 통해서 수행할 수 있으며 매개값으로 객체형식으로 진행
            $.ajax({
                type : 'POST', // 서버에 전송하는 HTTP 방식
                url : '/customer/checkId', // 서버 요청 url
                contentType: 'application/json',
                // dataType : 'json', // 서버로 부터 응답받을 데이터의 형태
                // data : checkId, // 사용자가 입력한 id 데이터를 서버로 전송
                data: JSON.stringify({ id: checkId }),
                success : function(result) { // 매개변수에 통신 성공시 데이터가 저장
                    // 서버와 통신 성공 시 실행할 내용
                    // controller가 리턴한 값이 result에 저장됨
                    console.log('통신 성공 ' + result);
                    if (result === 'Available'){
                        $('#idChk').html('<b style="font-size: 14px; color:blue">[작성하신 아이디는 사용 가능합니다]</b>');
                        chk1 = true;
                        // 입력값 검증 성공 표시
                    } else{
                        // result에 duplicated이므로
                        $('#idChk').html('<b style="font-size: 14px; color:red">[아이디가 중복되었습니다]</b>');
                        chk1 = false;
                    }
                },
                error : function(status, error){
                    console.log('통신 실패');
                    console.log(status, error);
                }
            });
            // end ajax (아이디 중복 확인)
        }
    }); // ID 검증 끝

// 2. PW 입력값 검증
    $('#password').keyup(function() {

        // 비밀번호 공백 확인
        if ($(event.target).val() === ''){
            $('#pwChk').html('<b style="font-size: 14px; color:red">[비밀번호를 입력해주세요]</b>');
            chk2 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        // 비밀번호 유효성 검사
        else if (!getPwCheck.test($(event.target).val()) || $(event.target).val().length < 8){
            $('#pwChk').html('<b style="font-size: 14px; color:red">[비밀번호는 특수문자 포함 8자 이상입니다]</b>');
            chk2 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        // 통과
        else{
            $('#pwChk').html('<b style="font-size: 14px; color:blue">[비밀번호 입력 확인 완료]</b>');
            chk2 = true;
            // 입력값 검증 성공 표시
        }
    });
    // PW 검증 끝

    // 3. PW 확인란 검증
    $('#passCheck').keyup(function() {

        // 비밀번호 확인 공백 검증
        if ($(event.target).val() === ''){
            $('#pwChk2').html('<b style="font-size: 14px; color:red">[비밀번호 확인은 필수 정보 입니다]</b>');
            chk3 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함

            // 비밀번호 확인란 유효성 검증 (일치하는지)
        } else if($(event.target).val() !== $('#password').val()){
            // 값들이 같지 않다면
            $('#pwChk2').html('<b style="font-size: 14px; color:red">[입력한 비밀번호가 일치하지 않습니다]</b>');
            chk3 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }else{
            $('#pwChk2').html('<b style="font-size: 14px; color:blue">[비밀번호 입력 확인 완료]</b>');
            chk3 = true;
        }
    });
// PW 확인 검증 끝

// 4. 이름 입력값 검증
    $('#name').keyup(function() {

        // 이름 값 공백 확인
        if ($(event.target).val() === ''){
            $('#nameChk').html('<b style="font-size: 14px; color:red">[이름은 필수 입력값입니다]</b>');
            chk4 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        // 이름값 유효성 검사
        else if(!getNameCheck.test($(event.target).val())){
            $('#nameChk').html('<b style="font-size: 14px; color:red">[이름은 한글만 작성가능합니다]</b>');
            chk4 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        else {
            $('#nameChk').html('<b style="font-size: 14px; color:blue">[이름 입력 확인 완료]</b>');
            chk4 = true;
        }
    })
// 이름 입력 검증 끝

// 5. 전화번호 검증
    $('#phone').keyup(function()   {

        // 전화번호 공백 확인
        if($(event.target).val() === ''){
            $('#phoneChk').html('<b style="font-size: 14px; color:red">[전화번호는 필수 입력값입니다]</b>');
            chk5 = false;

        }
        //전화번호 유효성 검사
        else if (!getPhoneCheck.test($(event.target).val())) {
            $(`#phoneChk`).html('<b style="font-size: 14px; color:red">[전화번호 형식이 아닙니다]</b>')
            chk5 = false;
        }
        else {
            $('#phoneChk').html('<b style="font-size: 14px; color:blue">[전화번호 입력 확인 완료]</b>');
            chk5 = true;
        }
    })

// 6. 이메일 검증
    $('#email').keyup(function()   {

        // 전화번호 공백 확인
        if($(event.target).val() === ''){
            $('#emailChk').html('<b style="font-size: 14px; color:red">[이메일은 필수 입력값입니다]</b>');

            chk6 = false;

        }
        //전화번호 유효성 검사
        else if (!getEmailCheck.test($(event.target).val())) {
            $(`#emailChk`).html('<b style="font-size: 14px; color:red">[이메일 형식이 아닙니다]</b>')
            chk6 = false;
        }
        else {
            $('#emailChk').html('<b style="font-size: 14px; color:blue">[이메일 입력 확인 완료]</b>');

            chk6 = true;
        }
    })

// 사용자가 회원 가입 버튼을 눌렀을 때의 이벤트 처리
    // 사용자가 입력하는 4가지 데이터 중 단 하나라도 문제가 있으면 회원가입 처리하면 안됨
    $('#sign-btn').click(function(event) {
        event.preventDefault();
        if(chk1 && chk2 && chk3 && chk4 && chk5 && chk6){
            // 모두 true라면 입력값이 모두 제약조건을 통과했다는 뜻

            const id = $('#id').val();
            const password = $('#password').val();
            const name = $('#name').val();
            const phone = $('#phone').val();
            const email = $('#email').val();
            const gender = parseInt($('input[name="gender"]:checked').val(), 10);
            // 성별 데이터를 정수형으로 변환

            const customerDto = {
                'id' : id,
                'password' : password,
                'name' : name,
                'phone' : phone,
                'email' : email,
                'gender' : gender
            };
            // 아직은 js객체이므로 JSON으로 변환해서 ajax의 data에 넣어야함

            // 비동기 방식
            $.ajax({
                type:'post',
                url:'/customer/registerProceed',
                contentType: 'application/json',
                dataType: 'text',
                data: JSON.stringify(customerDto),
                // 여러개의 값을 보낼 때는 객체로 포장해서 전송해야함

                success: function(result){
                    // ajax를 통해 서버에 값을 보내고
                    // 서버에서 다시 값을 보내면 result에 들어감
                    console.log('통신 성공 : ' + result);
                    alert("회원가입을 환영합니다! 홈페이지로 돌아갑니다.");
                    location.href = '/';
                    // 메인 페이지로 보냄
                },
                error : function(xhr, status, error) {
                    console.log("서버 응답 실패: " + error);
                    alert("회원가입 실패");
                }
            });
            // end ajax(회원가입 처리)
        } else{
            // 6가지 중 하나라도 false라면
            alert('입력 정보를 다시 확인하세요.');
        }
    }); // 회원 가입 처리 끝
});