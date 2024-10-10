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
        // JSP에서 날짜 문자열을 JavaScript 변수로 가져오기

/*el tag문으로 집어넣을 수 있는 forEach문을 javascript로 넣는 방법
*  향상된 for문처럼 data 를 받아와서 myPayment에 넣어주고 payment 는 Model attribute 에 있는 list를 불러옴
* <c:forEach var="payment" items="${myPayment}">
items에 있는 값 -> myPayment 를 data로 넣어주고 
* payment 에 있는 var값을 넣어 리스트를 넣어줌
* */
        myPayment.forEach(function (payment){
            /*Test Date Formatting*/
            const paymentDate = new Date(payment.payment_time);
            const formattedDate = paymentDate.getFullYear() + '-' +
                ('0' + (paymentDate.getMonth() + 1)).slice(-2) + '-' +
                ('0' + paymentDate.getDate()).slice(-2)
            /*slice : 끝에서 원하는 자리까지 잘라서 사용한다.*/
            /*split : 괄호안의 기호를 기준으로 나누어 배열로 나타낸다.*/
            const merchantIds =payment.merchant_uid.split('_');
            const merchantId =merchantIds[1];
            const number = payment.paid_amount;
            const formattedNumber = new Intl.NumberFormat('ko-KR').format(number);

            /**/
            orderHtml+=`
                    <div class="payment-body-top">
                      <dl>
                        
                        <div aria-label="주문 날짜" >결제 날짜 :${formattedDate} </div>
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
                             <span class="payment-number" id="merchantId">${merchantId}</span>
                          </div>
                        </div>
                        <div class="content1-brand">
                          <span>${payment.order_name} </span>
                        </div>
                      </div>
                      <div class="payment-content2">
                        <div class="content2-price">
                          <span >금액: ${formattedNumber}원</span>
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