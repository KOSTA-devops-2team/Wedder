package kr.co.wedder.payment.service;

import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.payment.dao.PaymentDao;
import kr.co.wedder.payment.domain.PaymentDto;
import kr.co.wedder.payment.domain.PaymentRequest;
import kr.co.wedder.reservation.sdm.dao.ReservationDao;
import kr.co.wedder.reservation.sdm.domain.ScheduleDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;


@Service
public class PaymentServiceImpl implements PaymentService {

    @Autowired
    PaymentDao paymentDao;
    @Autowired
    ReservationDao reservationDao;

    @Override
    public boolean verifyPayment(String impUid) {
        return true;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
    public void savePaymentAndReservationInfo(PaymentRequest paymentRequest) {
        try {
            // 1. 결제 정보 저장
            PaymentDto payment = new PaymentDto();
            payment.setImpUid(paymentRequest.getImpUid());
            payment.setMerchantUid(paymentRequest.getMerchantUid());
            payment.setPaidAmount(paymentRequest.getPaidAmount());
            payment.setPaymentTime(paymentRequest.getPaymentTime());
            payment.setCustomerEmail(paymentRequest.getCustomerEmail());
            payment.setCustomerName(paymentRequest.getCustomerName());
            payment.setCustomerTel(paymentRequest.getCustomerTel());
            payment.setOrderName(paymentRequest.getOrderName());
            payment.setCustomerId(paymentRequest.getCustomerId());

            System.out.println("결제 정보" + payment);
            paymentDao.insertPaymentInfo(payment);

            // 2. 예약 정보 저장 (3개 업체의 예약 정보 저장)
            for (ReservationDto reservation : paymentRequest.getReservations()) {
                System.out.println("예약 정보 리스트 reservation = " + reservation);
                reservationDao.insertReservationInfo(reservation);
            }

            // 3. 업체 스케줄 테이블에서 일정 삭제
            for (ReservationDto reservation : paymentRequest.getReservations()) {
                System.out.println("예약 날짜: " + reservation.getReservationDate());
                System.out.println("예약 시간: " + reservation.getReservationTime());
                ScheduleDto schedule = new ScheduleDto(reservation.getCompanyId(), reservation.getReservationDate(), reservation.getReservationTime());
                System.out.println("삭제 될 업체 일정 schedule = " + schedule);

                reservationDao.deleteReservedSchedule(schedule);
            }


        } catch (Exception e) {
            System.out.println("예외 발생: " + e.getMessage());
            e.printStackTrace();
            cancelPayment(paymentRequest.getImpUid());
            throw e;
        }
    }

    private void cancelPayment(String impUid) {
        // 아임포트 API를 통해 결제 취소
        //iamportApi.cancelPaymentByImpUid(impUid);
    }
}
