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
public class CompanyImage {
	private Integer imgId;
	private Integer imgSeq;
	private String imgUrl;
	private Integer  companyId;
}
