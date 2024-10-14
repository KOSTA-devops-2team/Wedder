package kr.co.wedder.reservation.sdm.dao;

import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.reservation.sdm.domain.ScheduleDto;

public interface ReservationDao {
    void insertReservationInfo(ReservationDto reservationDto);
    void deleteReservedSchedule(ScheduleDto scheduleDto);
}
