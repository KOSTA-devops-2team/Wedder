package kr.co.wedder.payment.domain;

import kr.co.wedder.mypage.domain.ReservationDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaymentRequest {
    private String impUid;
    private String merchantUid;
    private int paidAmount;
    private String paymentTime;
    private String customerEmail;
    private String customerName;
    private String customerTel;
    private String orderName;
    private int customerId;

    // 예약 정보 필드 추가
    private List<ReservationDto> reservations; // 여러 업체의 예약 정보를 포함
}

