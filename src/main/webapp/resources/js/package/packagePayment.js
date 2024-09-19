// 결제 주문 번호 생성 함수
function createOrderNum() {
    const date = new Date();
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, "0");
    const day = String(date.getDate()).padStart(2, "0");

    let orderNum = year + month + day;
    for (let i = 0; i < 10; i++) {
        orderNum += Math.floor(Math.random() * 8);
    }
    return orderNum;
}

// 결제 데이터 생성 함수
// function createPaymentData() {
//     var amount = $('#final-price').text();  // 최종 결제 금액을 동적으로 가져옴
//     var orderId = createOrderNum();         // 주문 번호 생성
//     var orderName = $('#product-name').text(); // 제품명 가져오기
//
//     data = {
//         amount: amount,
//         orderId: orderId,
//         orderName: orderName}
//     return data;
// }




// 결제 데이터 생성 함수 (테스트용)
function createPaymentData() {
    // 테스트 데이터 설정
    var amount = 10000;  // 결제 금액을 임의로 설정
    var orderId = createOrderNum();  // 결제 주문 번호 생성
    var orderName = "패키지 결제 테스트";  // 임의의 상품 이름

    // 테스트 데이터 반환
    return {
        amount: amount,
        orderId: orderId,
        orderName: orderName
    };
}


$('.pay').on('click', function (e) {
    e.preventDefault();
    // 가맹점 식별코드
    IMP.init(kakaoPayKey);

    // 결제 데이터 생성
    var data = createPaymentData();

    // 결제 요청
    IMP.request_pay({
        pg: 'kakaopay',
        pay_method: 'card',
        merchant_uid: 'merchant_' + new Date().getTime(),  // 임의의 거래 ID 생성
        name: data.orderName,  // 임의의 상품 이름
        amount: data.amount,  // 임의의 결제 금액
        buyer_email: 'test@example.com',  // 임의의 이메일
        buyer_name: '테스트 구매자',  // 임의의 구매자 이름
        buyer_tel: '010-1234-5678',  // 임의의 전화번호
        buyer_addr: '서울 강남구 도곡동',  // 임의의 주소
        buyer_postcode: '123-456'  // 임의의 우편번호
    }, function (rsp) {
        console.log(rsp);  // 응답 데이터 확인
        if (rsp.success) {
            var msg = '결제가 완료되었습니다.\n';
            msg += '고유ID : ' + rsp.imp_uid + '\n';
            msg += '상점 거래ID : ' + rsp.merchant_uid + '\n';
            msg += '결제 금액 : ' + rsp.paid_amount + '\n';
            msg += '카드 승인번호 : ' + rsp.apply_num + '\n';

            // 결제 완료 후 폼 데이터 전송
            var actionForm = $("#pay_form");
            const a_completed = $("<input type='hidden' value='T' name='a_completed'>");
            actionForm.append(a_completed);

            // p_id 값을 동적으로 설정
            actionForm.find("input[name='p_id']").val(e.target.getAttribute("href"));
            actionForm.submit();  // 폼 제출

        } else {
            var msg = '결제에 실패하였습니다.\n';
            msg += '에러내용 : ' + rsp.error_msg + '\n';
        }
        alert(msg);  // 결제 결과 메시지 출력
    });
});