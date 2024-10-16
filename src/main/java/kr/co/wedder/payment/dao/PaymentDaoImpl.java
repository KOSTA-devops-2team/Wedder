package kr.co.wedder.payment.dao;

import kr.co.wedder.payment.domain.PaymentDto;
import kr.co.wedder.payment.domain.PaymentRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Map;
import java.util.Objects;

@Repository
public class PaymentDaoImpl implements PaymentDao {

    @Autowired
    private SqlSession sqlSession;
    private static String namespace = "kr.co.wedder.dao.PaymentMapper.";

    @Override
    public void insertPaymentInfo(PaymentDto paymentDto) {

        System.out.println("PaymentDaoImpl.insertPaymentInfo" + paymentDto);
        sqlSession.insert(namespace + "insertPaymentInfo", paymentDto);
    }
}

