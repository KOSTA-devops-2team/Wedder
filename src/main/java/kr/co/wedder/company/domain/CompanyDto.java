package kr.co.wedder.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyDto {
    private int companyId;
    private String companyName;
    private String companyAddress;
    private String introduce;
    private String category;
    private String phoneNum;
    private String operationHours;
    private String instagramUrl;
    private int basicPrice;
    private String mood;
    private String location;

    private HallDto hallDto;
    private StudioDto studioDto;
    private DressDto dressDto;
    private MakeupDto makeupDto;
    private Pagination pagination;

    private int imgId;
    private int imgSeq;
    private String imgUrl;
}
