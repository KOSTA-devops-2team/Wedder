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
public class MyPageDTO {

	private Integer customerId;
	private String id;
	private String password;
	private String name;
	private String phone;
	private String email;
	private Integer gender;
	private String profileUrl;

}
