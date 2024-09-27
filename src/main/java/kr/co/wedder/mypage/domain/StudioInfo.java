package kr.co.wedder.mypage.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Objects;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class StudioInfo {
	
	private Integer studioId;
	private Integer companyId;
	private String 	packageId;
	private String 	studioShootType;
	private Integer studioRentalClothing;
	private String  studioShootFocus;
	private String 	studioShootDuration;
	private String 	studioLocationTypes ;
	private String 	studioProduct;
	private boolean hairChangeAvailability;
	private boolean studioEquipmentIncluded;

}
