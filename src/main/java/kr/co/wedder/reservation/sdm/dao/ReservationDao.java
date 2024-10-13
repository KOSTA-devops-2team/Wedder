package kr.co.wedder.reservation.sdm.dao;

import kr.co.wedder.mypage.domain.ReservationDto;

public interface ReservationDao {
    void insertReservationInfo(ReservationDto reservationDto);
}
