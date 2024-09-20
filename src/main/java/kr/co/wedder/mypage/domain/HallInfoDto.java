package kr.co.wedder.mypage.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class HallInfoDto {
	
	private Integer hallId;
	private Integer companyId;
	private String hallType;
	private Integer minPeople;
	private Integer parking;
}
