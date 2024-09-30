package kr.co.wedder.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DressDto {
    private Integer dressId;
    private Integer companyId;
    private String dressType;
    private String repairService;
    private int consultationTime;
    private int fittingCnt;
    private int measurementTime;
    private String composition;
}
