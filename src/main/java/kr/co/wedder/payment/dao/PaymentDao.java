package kr.co.wedder.payment.dao;

import kr.co.wedder.payment.domain.PaymentDto;
import kr.co.wedder.payment.domain.PaymentRequest;

import java.util.Map;
import java.util.Objects;

public interface PaymentDao {

    void insertPaymentInfo(PaymentDto paymentDto);
}
