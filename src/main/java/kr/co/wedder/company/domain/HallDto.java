package kr.co.wedder.company.domain;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HallDto {
    private Integer hallId;
    private Integer companyId;
    private String hallType;
    private int minPeople;
    private int parking;
    private int mealPrice;

//    private CompanyDto company;

}
