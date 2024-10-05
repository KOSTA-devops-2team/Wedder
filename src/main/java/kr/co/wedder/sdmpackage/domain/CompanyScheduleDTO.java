package kr.co.wedder.sdmpackage.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CompanyScheduleDTO {

    private int companyId;
    private String companyName;
    private String date;
    private String time;
}
