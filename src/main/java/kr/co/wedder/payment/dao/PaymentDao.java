package kr.co.wedder.payment.dao;

import kr.co.wedder.payment.domain.PaymentRequest;

public interface PaymentDao {

    void insertPaymentInfo(PaymentRequest paymentRequest);
}
