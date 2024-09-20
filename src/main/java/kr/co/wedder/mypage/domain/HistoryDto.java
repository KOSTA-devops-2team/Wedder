package kr.co.wedder.mypage.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Objects;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class HistoryDto {

	private int customerId;
	private int agree;
	private String reservationStatus;

}
