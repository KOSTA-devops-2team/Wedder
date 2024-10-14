package kr.co.wedder.payment.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaymentDto {

        private String impUid;
        private String merchantUid;
        private int paidAmount;
        private String paymentTime;
        private String customerEmail;
        private String customerName;
        private String customerTel;
        private String orderName;
        private int customerId;
    }
