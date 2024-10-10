package kr.co.wedder.mypage.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class DressInfo {
	private Integer dressId;
	private Integer companyId;
	private String packageId;
	private String dressType;
	private boolean dressRepairService;
	private Integer dressConsultationTime;
	private Integer fittingCnt;
	private Integer dressMeasurementTime;
	private String dressComposition;
}
