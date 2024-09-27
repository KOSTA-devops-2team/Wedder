package kr.co.wedder.payment.service;

import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Override
    public boolean verifyPayment(String impUid) {
        return false;
    }
}
