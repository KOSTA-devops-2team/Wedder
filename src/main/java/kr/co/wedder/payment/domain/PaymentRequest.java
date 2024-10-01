package kr.co.wedder.payment.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaymentRequest {
    //private int customerId;
    private String impUid;
    private String merchantUid;
    private int paidAmount;
    //private String approvalCode;  // 승인 코드
    private String paymentTime;   // 결제 시간
    private String customerEmail;
    private String customerName;
    private String customerTel;
    private String orderName;
}

