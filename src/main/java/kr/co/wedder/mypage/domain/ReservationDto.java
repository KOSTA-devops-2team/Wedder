package kr.co.wedder.mypage.domain;

import java.util.Date;
import java.util.Objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReservationDto {
	
	private Integer reservation_id;
	private Integer companyId;
	private Integer customer_id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date reservation_date;
	private String reservation_time;
	private boolean visit_reservation;
	private Date hope_date;

	
}
