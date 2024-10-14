package kr.co.wedder.payment.service;

import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.payment.domain.PaymentRequest;

public interface PaymentService {

    boolean verifyPayment(String impUid);
    void savePaymentAndReservationInfo(PaymentRequest paymentRequest);
}
