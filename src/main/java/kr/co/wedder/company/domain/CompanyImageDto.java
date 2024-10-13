package kr.co.wedder.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyImageDto {
    private int imgId;
    private int imgSeq;
    private String imgUrl;
    private int companyId;
}
