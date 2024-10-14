package kr.co.wedder.reservation.sdm.dao;

import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.payment.domain.PaymentRequest;
import kr.co.wedder.reservation.sdm.domain.ScheduleDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDaoImpl implements ReservationDao{

    @Autowired
    private SqlSession sqlSession;
    private static String namespace = "kr.co.wedder.dao.ReservationMapper.";

    @Override
    public void insertReservationInfo(ReservationDto reservationDto) {

        sqlSession.insert(namespace + "insertReservationInfo", reservationDto);
    }

    @Override
    public void deleteReservedSchedule(ScheduleDto scheduleDto) {

        System.out.println("deleteReservedSchedule" + scheduleDto);

        sqlSession.delete(namespace + "deleteReservedSchedule", scheduleDto);

    }
}
