package kr.co.wedder.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MakeupDto {
    private Integer makeupId;
    private Integer companyId;
    private String target;
    private String makeupType;
    private String position;
}
