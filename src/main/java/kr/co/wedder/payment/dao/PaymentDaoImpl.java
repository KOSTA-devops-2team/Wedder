package kr.co.wedder.payment.dao;

import kr.co.wedder.payment.domain.PaymentRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDaoImpl implements PaymentDao {

    @Autowired
    private SqlSession sqlSession;
    private static String namespace = "kr.co.wedder.dao.PaymentMapper.";

    @Override
    public void insertPaymentInfo(PaymentRequest paymentRequest) {

        sqlSession.insert(namespace + "insertPaymentInfo", paymentRequest);
    }
}

