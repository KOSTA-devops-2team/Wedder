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

    // 스튜디오 정보
    private String studioName;
    private String studioShootType;
    private String studioShootFocus;
    private int studioRentalClothing;
    private String studioShootDuration;
    private String studioShootLocationType;
    private String studioProduct;
    private boolean studioHairChangeAvailability;
    private boolean studioEquipmentIncluded;

    // 드레스 정보
    private String dressName;
    private String dressType;
    private boolean dressRepairService;
    private int dressConsultationTime;
    private int dressFittingCnt;
    private int dressMeasurementTime;
    private String dressComposition;

    // 메이크업 정보
    private String makeupName;
    private String makeupTarget;
    private String makeupType;
    private String makeupPosition;

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

    //옵션 정보
    private int optionId;
    private String optionName;
    private int optionPrice;
}
