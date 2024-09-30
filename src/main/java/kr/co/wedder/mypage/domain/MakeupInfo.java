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
public class MakeupInfo {

	private Integer makeupId;
	private Integer companyId;
	private String packageId;
	private String target;
	private String makeupType;
	private String position;

}
