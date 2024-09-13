package kr.co.wedder.sdmpackage.domain;

import lombok.Data;

import java.util.List;

@Data
public class PackageDto {

        private int packageId;
        private String packageName;
        private String packageImg;
        private String description;
        private int discountRate;
        private String studioName;
        private String dressName;
        private String makeupName;
}