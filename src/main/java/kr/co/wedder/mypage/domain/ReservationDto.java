package kr.co.wedder.mypage.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ReservationDto {
	
	private Integer reservationId;
	private Integer companyId;
	private Integer customerId;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date 	reservationDate;
	private String 	reservationTime;
	private boolean visitReservation;
	private Date 	hopeDate;
}
