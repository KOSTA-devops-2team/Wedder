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

function createPaymentData() {
    var amount = $('.final-price').text();
    var orderId = createOrderNum();
    var orderName = $('.product-name').text();

    // Existing data
    let data = {
        amount: amount.replace(/,/g, ''),
        orderId: orderId,
        orderName: orderName,
        customerId: customerId,
        customerEmail: customerEmail,
        customerName: customerName,
        customerTel: customerTel
    };

    // Create reservation data
    const reservationData = [];
    for (const companyName in selectedData) {
        if (selectedData.hasOwnProperty(companyName)) {
            const reservation = selectedData[companyName];
            reservationData.push({
                companyId: reservation.companyId,
                companyName: companyName,
                customerId: data.customerId,
                reservationDate: reservation.date,
                reservationTime: reservation.time
            });
        }
    }

    // Add reservations to data
    data.reservations = reservationData;

    return data;
}

$('.kakao-pay').on('click', function (e) {
    e.preventDefault();
    IMP.init(kakaoPayKey);

    // 결제 데이터 생성
    var data = createPaymentData();

    // 예약정보가 없는 경우 결제 중단
    if (!data) {
        console.log("예약정보가 없음. 결제 중단")
        return;
    }

    // 결제 요청
    console.log("결제 요청 시작");
    IMP.request_pay({
        pg: 'kakaopay',
        pay_method: 'card',
        merchant_uid: 'merchant_' + new Date().getTime(),
        orderId: data.orderId,
        name: data.orderName,
        amount: data.amount,
        buyer_email: data.customerEmail,
        buyer_name: data.customerName,
        buyer_tel: data.customerTel
    }, function (rsp) {
        console.log("rsp: ", rsp);

        if (typeof rsp !== 'undefined' && rsp.success) {
            Swal.fire({
                title: "결제가 완료되었습니다.",
                icon: "success",
                confirmButtonText: "확인",
                closeOnClickOutside: false
            }).then(function () {
                var paymentTime = new Date(rsp.paid_at * 1000).toISOString().slice(0, 19).replace('T', ' ');

                // 결제 성공 데이터를 서버로 전송
                $.ajax({
                    type: "POST",
                    url: "/payment/complete",
                    contentType: "application/json",
                    data: JSON.stringify({
                        impUid: rsp.imp_uid,
                        merchantUid: rsp.merchant_uid,
                        paidAmount: rsp.paid_amount,
                        paymentTime: paymentTime,
                        customerId: data.customerId,
                        customerEmail: data.customerEmail,
                        customerName: data.customerName,
                        customerTel: data.customerTel,
                        orderName: data.orderName,
                        reservations: data.reservations  // 예약 정보 전송
                    }),
                    success: function (response) {
                        location.href = "/package/recommend";
                    },
                    error: function (error) {
                        console.error("서버로 결제 데이터 전송 중 오류 발생:", error);
                    }
                });
            });
        } else {
            var msg = '결제에 실패하였습니다.\n';
            if (rsp !== undefined) {
                msg += '에러내용 : ' + rsp.error_msg + '\n';
            } else {
                msg += '결제 응답을 받지 못했습니다.';
            }

            Swal.fire({
                title: '결제 실패',
                text: msg,
                icon: 'error',
                confirmButtonText: '확인'
            });
        }
    });
});
