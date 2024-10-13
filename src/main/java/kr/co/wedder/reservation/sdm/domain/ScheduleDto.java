package kr.co.wedder.reservation.sdm.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
public class ScheduleDto {

    private Integer companyId;
    private Date reservationDate;   // java.sql.Date 사용
    private String reservationTime; // String 그대로 사용

    public ScheduleDto(Integer companyId, java.util.Date reservationDate, String reservationTime) {
        this.companyId = companyId;

        // java.util.Date를 java.sql.Date로 변환하여 시간 정보를 제거하고 날짜만 넘김
        this.reservationDate = new Date(reservationDate.getTime());

        // 시간은 String 그대로 사용
        this.reservationTime = reservationTime;
    }
}