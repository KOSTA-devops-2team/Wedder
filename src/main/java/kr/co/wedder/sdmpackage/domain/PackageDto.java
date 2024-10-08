package kr.co.wedder.sdmpackage.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PackageDto {

        private String makeupImgUrl;
        private String studioImgUrl;
        private String dressImgUrl;

        // 패키지 기본 정보
        private int packageId;
        private String packageName;
        private String packageImg;
        private String description;
        private int discountRate;

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
}