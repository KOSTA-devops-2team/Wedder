package kr.co.wedder.payment.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaymentDto {
    private String orderId;
    private String orderName;
    private int amount;
    private String customerName;
}
