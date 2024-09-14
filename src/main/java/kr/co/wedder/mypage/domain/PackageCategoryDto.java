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
public class PackageCategoryDto {
	private Integer categoryId;
	private String packageId;
	private Integer optionId;
	private Integer companyId;

	
}
