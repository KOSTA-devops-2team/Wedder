package kr.co.wedder.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StudioDto {
    private Integer studioId;
    private int companyId;
    private String shootType;
    private String shootFocus;
    private int rentalClothing;
    private String shootDuration;
    private String product;
    private String hairChangeAvailability;
    private String equipmentIncluded;
    private String props;
}
