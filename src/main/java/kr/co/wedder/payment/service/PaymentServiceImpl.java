package kr.co.wedder.payment.service;

import kr.co.wedder.payment.dao.PaymentDao;
import kr.co.wedder.payment.domain.PaymentRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Autowired
    PaymentDao paymentDao;

    @Override
    public boolean verifyPayment(String impUid) {
        return true;
    }

    @Override
    @Transactional
    public void savePaymentInfo(PaymentRequest paymentRequest) {

        paymentDao.insertPaymentInfo(paymentRequest);
    }
}
