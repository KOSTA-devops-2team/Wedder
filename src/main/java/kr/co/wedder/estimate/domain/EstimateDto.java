package kr.co.wedder.estimate.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EstimateDto {

    // 견적서 아이디
    private int estimateId;

    // 회사 정보
    private Integer companyId;
    private String companyName;
    private String companyAddress;
    private String companyIntroduce;
    private String companyCategory;
    private String phoneNum;
    private String operationHours;
    private String instagramUrl;
    private int basicPrice;
    private String mood;
    private String location;

    // 업체 이미지
    private String imgUrl;

    // 옵션
    private int optionId;
    private Integer hallId;
    private Integer studioId;
    private Integer dressId;
    private Integer makeupId;
    private String optionName;
    private Integer optionPrice;
    private String category;

    // 스튜디오 정보
    private String shootType;
    private String shootFocus;
    private int rentalClothing;
    private String shootDuration;
    private String shootLocationType;
    private String product;
    private Boolean hairChangeAvailability;
    private Boolean equipmentIncluded;

    // 드레스 정보
    private String dressType;
    private String repairService;
    private int consultationTime;
    private int fittingCnt;
    private int measurementTime;
    private String composition;

    // 메이크업 정보
    private String target;
    private String makeupType;
    private String position;

}
