/* 비밀번호 on&off */
document.querySelectorAll(".password-invisible").forEach((toggleIcon) => {
    toggleIcon.addEventListener("click", () => {
        const passwordInput = toggleIcon.previousElementSibling;

        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            toggleIcon.src = "${pageContext.request.contextPath}/resources/images/password-visible.png";
        } else {
            passwordInput.type = "password";
            toggleIcon.src = "${pageContext.request.contextPath}/resources/images/password-invisible.png";
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

    // 입력값 중 하나라도 만족하지 못한다면 회원 가입 처리를 막기 위한 논리형 변수 선언
    let chk1 = false, chk2 = false, chk3 = false, chk4 = false;


    // 1. ID 입력값 검증
    $('#id').keyup(function() {
        // 키를 입력하고 땔 때 마다 이벤트 발생
        if($(event.target).val() === ''){
            // 이벤트가 발생된 곳의 값이 비어있으면 발생
            $(event.target).css('background', 'pink');
            $('#idChk').html('<b style="font-size: 14px; color:blue">[아이디는 필수 정보입니다.]</b>');
            // 아이디를 입력해주세요 옆에 표시됨

            chk1 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        // 아이디 입력값 유효성 검증 (영문과 숫자로만 4~14자 허용)
        else if(!getIdCheck.test($(event.target).val())){
            // test함수를 통해 검증하고 싶은 값을 넣어줌
            // getIdCheck는 정규표현식이므로 검증 값을 정규표현식에 적합한지 테스트 (boolean으로 return)

            // 정규표현식에 어긋난다면
            $(event.target).css('background', 'pink');
            $('#idChk').html('<b style="font-size: 14px; color:blue">[영문과 숫자 조합으로 4~14자 조합해주세요.]</b>');

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
                url : '/user/checkId', // 서버 요청 url
                // 요청을 받을 controller가 있어야함
                headers : {
                    // 객체 전달 (JSON형태로 보냄)
                    'Content-Type' : 'application/json'
                },
                dataType : 'text', // 서버로 부터 응답받을 데이터의 형태
                data : checkId, // 사용자가 입력한 id 데이터를 서버로 전송
                success : function(result) { // 매개변수에 통신 성공시 데이터가 저장
                    // 서버와 통신 성공 시 실행할 내용
                    // controller가 리턴한 값이 result에 저장됨
                    console.log('통신 성공 ' + result);
                    if (result === 'Available'){
                        $('#id').css('background', 'aqua');
                        $('#idChk').html('<b style="font-size: 14px; color:skyblue">[작성하신 아이디는 사용 가능합니다.]</b>');
                        chk1 = true;
                        // 입력값 검증 성공 표시
                    } else{
                        // result에 duplicated이므로
                        $('#id').css('background', 'pink');
                        $('#idChk').html('<b style="font-size: 14px; color:blue">[아이디가 중복되었습니다.]</b>');
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

    });
// ID 검증 끝

// 2. PW 입력값 검증
    $('#password').keyup(function() {

        // 비밀번호 공백 확인
        if ($(event.target).val() === ''){
            $(event.target).css('background', 'pink');
            $('#pwChk').html('<b style="font-size: 14px; color:blue">[비밀번호를 입력해주세요]</b>');
            chk2 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        // 비밀번호 유효성 검사
        else if (!getPwCheck.test($(event.target).val()) || $(event.target).val().length < 8){
            $(event.target).css('background', 'pink');
            $('#pwChk').html('<b style="font-size: 14px; color:blue">[비밀번호는 특수문자 포함 8자 이상입니다.]</b>');
            chk2 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        // 통과
        else{
            $(event.target).css('background', 'aqua');
            $('#pwChk').html('<b style="font-size: 14px; color:skyblue">[비밀번호 입력 확인 완료.]</b>');
            chk2 = true;
            // 입력값 검증 성공 표시
        }
    });
    // PW 검증 끝

    // 3. PW 확인란 검증
    $('#password_check').keyup(function() {

        // 비밀번호 확인 공백 검증
        if ($(event.target).val() === ''){
            $(event.target).css('background', 'pink');
            $('#pwChk2').html('<b style="font-size: 14px; color:blue">[비밀번호 확인은 필수 정보 입니다.]</b>');

            chk3 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함

            // 비밀번호 확인란 유효성 검증 (일치하는지)
        } else if($(event.target).val() !== $('#password').val()){
            // 값들이 같지 않다면
            $(event.target).css('background', 'pink');
            $('#pwChk2').html('<b style="font-size: 14px; color:blue">[입력한 비밀번호가 일치하지 않습니다.]</b>');

            chk3 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }else{
            $(event.target).css('background', 'aqua');
            $('#pwChk2').html('<b style="font-size: 14px; color:skyblue">[비밀번호 입력 확인 완료.]</b>');

            chk3 = true;
        }
    });
// PW 확인 검증 끝

// 4. 이름 입력값 검증
    $('#name').keyup(function() {

        // 이름 값 공백 확인
        if ($(event.target).val() === ''){
            $(event.target).css('background', 'pink');
            $('#nameChk').html('<b style="font-size: 14px; color:blue">[이름은 필수 입력값입니다.]</b>');

            chk4 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        // 이름값 유효성 검사
        else if(!getNameCheck.test($(event.target).val())){
            $(event.target).css('background', 'pink');
            $('#nameChk').html('<b style="font-size: 14px; color:blue">[이름은 한글만 작성가능합니다.]</b>');

            chk4 = false;
            // 입력했다가 다시 잘못입력할 수 있으므로 모든 조건식에 넣어야함
        }
        else {
            $(event.target).css('background', 'aqua');
            $('#nameChk').html('<b style="font-size: 14px; color:skyblue">[이름 입력 확인 완료.]</b>');

            chk4 = true;
        }
    })
// 이름 입력 검증 끝

// 사용자가 회원 가입 버튼을 눌렀을 때의 이벤트 처리
    // 사용자가 입력하는 4가지 데이터 중 단 하나라도 문제가 있으면 회원가입 처리하면 안됨
    $('#signup-btn').click(function() {

        if(chk1 && chk2 && chk3 && chk4){
            // 모두 true라면
            // 입력값이 모두 제약조건을 통과했다는 뜻

            const id = $('#id').val();
            // 아이디 정보

            const pw = $('#password').val();
            // 비밀번호 정보

            const name = $('#name').val();
            // 이름 정보

            // 여러개의 값을 보낼 때는 객체로 포장해서 전송해야함
            // 객체의 property이름은 VO 객체의 변수명과 동일하게 (커맨드 객체 사용하기 위해)
            const user = {
                'id' : id,
                'password' : password,
                'name' : name
            };
            // 아직은 js객체이므로 JSON으로 변환해서 ajax의 data에 넣어야함

            // 비동기 방식
            $.ajax({
                type:'POST',
                url:'/user/',
                headers : {
                    // 객체 전달
                    'Content-Type' : 'application/json'
                },
                dataType: 'text',

                data: JSON.stringify(user),
                // 여러개의 값을 보낼 때는 객체로 포장해서 전송해야함
                // user는 js의 객체이므로 해당 객체를 JSON의 문자열로 변환해야함 ================================

                success: function(result){
                    // ajax를 통해 서버에 값을 보내고
                    // 서버에서 다시 값을 보내면 result에 들어감
                    console.log('통신 성공 : ' + result);
                    alert("회원가입을 환영합니다.");
                    location.href = '/';
                    // 메인 페이지로 보냄
                },
                error : function(){
                    alert("회원가입 실패");
                }

            });
            // end ajax(회원가입 처리)

        } else{
            // 4가지 중 하나라도 false라면
            alert('입력 정보를 다시 확인하세요.');
        }

    }); // 회원 가입 처리 끝
// 로그인 검증

    //ID 입력값 검증(공백, 정규표현식)
    $('#signInId').keyup(function() {
        if($(this).val() === '') {
            $(this).css('background-color', 'pink');
            $('#idCheck').html('<b style="font-size: 14px; color: red">[아이디는 필수 정보입니다!]</b>');
            chk1 = false;
        } else if(!getIdCheck.test($(this).val())) {
            $(this).css('background-color', 'pink');
            $('#idCheck').html('<b style="font-size: 14px; color: red">[영문, 숫자로 4-14자로 작성!]</b>');
            chk1 = false;
        } else {
            $(this).css('background-color', 'aqua');
            $('#idCheck').html('<b style="font-size: 14px; color: green">[아이디 입력 완료!]</b>');
            chk1 = true;
        }
    }); //아이디 입력값 검증 끝!

    //비밀번호 입력값 검증(공백, 정규표현식)
    $('#signInPw').keyup(function() {
        if($(this).val() === '') {
            $(this).css('background-color', 'pink');
            $('#pwCheck').html('<b style="font-size: 14px; color: red">[비밀번호 쓰세요!]</b>');
            chk2 = false;
        } else if(!getPwCheck.test($(this).val())) {
            $(this).css('background-color', 'pink');
            $('#pwCheck').html('<b style="font-size: 14px; color: red">[특수문자 포함 8자 이상!]</b>');
            chk2 = false;
        } else {
            $(this).css('background-color', 'aqua');
            $('#pwCheck').html('<b style="font-size: 14px; color: green">[비밀번호 입력 완료!]</b>');
            chk2 = true;

        }
    }); //비밀번호 입력값 검증 끝!

    // 로그인 버튼 클릭 이벤트(ID, 비밀번호 둘 다 올바른 값이어야 이벤트 실행)
    // chk1, chk2를 재활용해서 사용
    // ajax를 이용한 비동기 방식으로 로그인을 처리할 예정
    // 비동기 처리를 안해도 되지만 엾으로 함
    // 비동기 처리는 피료없는 곳은 남용하지 않아도 됨

    $('#signIn-btn').click(function(){
        if (chk1 && chk2){
            // 로그인 처리 진행

            let id = $('#signInId').val();
            let pw = $('#signInPw').val();

            const IdPw = {
                'account' : id,
                'password' : pw
            }

            $.ajax({
                type : 'POST',
                url : 'user/loginCheck',
                headers : {
                    'Content-Type' : 'application/json'
                },
                dataType : 'text',
                data : JSON.stringify(IdPw),
                // js객체를 JSON으로 변경

                success : function(data){
                    console.log("통신 성공" + data);
                    if (data === 'loginSuccess'){
                        console.log("로그인 성공.");
                        alert("로그인 성공 ");
                        location.href ='/';

                    } else if(data === 'pwFail'){
                        console.log("비밀번호가 틀렸습니다.");
                        $('#signInpw').css('background-color', 'pink');
                        $('#pwCheck').html('<b style="font-size: 14px; color: red">[비밀번호가 틀렸습니다.]</b>');
                        $('#signInPw').val('');
                        $('#signInPw').focus();
                        chk2=false;

                    } else{
                        console.log("아이디가 틀렸습니다.");
                        $('#signInId').css('background-color', 'pink');
                        $('#idCheck').html('<b style="font-size: 14px; color: red">[존재하지 않는 아이디입니다.]</b>');
                        $('#signInId').val('');
                        // 기존에 사용자가 입력한 아이디는 존재하지 않으므로 지워줌
                        $('#signInId').focus();
                        // 커서를 이동시키고 스크롤도 해당 위치로 이동 시키는 함수
                        chk1=false, chk2=false;
                        // chk를 false로 변경해야 사용자가 다시 입력하여 로그인 시도할 수 있음
                    }
                },
                error : function(){
                    alert("통신 실패")
                }
            });
        } else{
            alert('입력값을 다시 확인하세요')
        }
    }); // 로그인 버튼 클릭 이벤트 처리 끝
});
// end jQuery