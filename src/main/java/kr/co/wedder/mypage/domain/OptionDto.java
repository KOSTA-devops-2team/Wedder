package kr.co.wedder.mypage.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

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
	private String optionName;
	private Integer optionPrice;
	private String category;
	private String optionDescription;
}
