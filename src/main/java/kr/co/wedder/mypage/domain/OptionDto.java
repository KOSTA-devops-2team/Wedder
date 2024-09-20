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
public class OptionDto {

	private Integer optionId;
	private Integer hallId;
	private Integer studioId;
	private Integer dressId;
	private Integer makeupId;
	private Boolean optionName;
	private Integer optionPrice;

}
