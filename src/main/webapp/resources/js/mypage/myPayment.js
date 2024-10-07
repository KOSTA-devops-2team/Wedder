$(document).ready(function(){
    $("#search-btn").on("click",function(e){
        e.preventDefault();//기본 동작 방지
        performSearch();
    })
    $("#keyword").on("keypress",function(e){
        if (e.which === 13){ //Enter 키 코드 13
            e.preventDefault(); //기본 동작 방지
            performSearch();
        }
    })
    function performSearch(){
        const keyword = $('#keyword').val()
        console.log("중간 확인"+keyword)
        $.ajax({
            type: 'POST',
            url: '/mypage/mypayment',
            dataType: 'json',
            data: {order_name: keyword},
            success: function (data, status, xhr) {
                console.log("상태:", status);  // 요청의 상태
                console.log("응답 데이터:", data);  // 서버에서 반환된 데이터
                console.log("응답 헤더:", xhr.getAllResponseHeaders());
                searchOrderList(data);
            },
            error: function () {
                console.log("검색 실패")
                alert("검색 중 오류가 발생했습니다.")
            }
        })
    }
    function searchOrderList(myPayment){
        let orderHtml='';
        let merchant_uid = myPayment.merchant_uid;
        let merchantId=merchant_uid.split('_')[1];
        myPayment.forEach(function (payment){
            orderHtml+=`
                    <div class="payment-body-top">
                      <dl>
                        <div aria-label="주문 날짜">결제 날짜 : ${payment.payment_time} </div>
                      </dl>
                      <a href="payment-detail" class="body-top-link">
                        <span>결제 상세</span>
                        <span> > </span>
                      </a>
                    </div>
                    <div class="payment-body-content">
                      <div class="payment-content1">
                        <div class="payment-content1-1">
                          <div class="payment-status">
                            <span class="status-text">결제 완료</span>
                          </div>
                          <div class="payment-num">
                            <span>결제 번호</span>
                            <span class="payment-number">${merchantId}</span>
                          </div>
                        </div>
                        <div class="content1-brand">
                          <span>${payment.order_name} </span>
                        </div>
                      </div>
                      <div class="payment-content2">
                        <div class="content2-price">
                          <span>금액: ${payment.paid_amount}</span>
                        </div>
    
                      </div>
                      <div class="payment-content3">
                        <div>
                          <a>영수증</a>
                        </div>
                        <div>
                          <a>거래명세서</a>
                        </div>
                      </div>
                    </div>
              `;
        })
        $('.list-all').html(orderHtml);
    }

})