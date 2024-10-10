package kr.co.wedder.company.domain;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HallDto {
    private int hallId;
    private int companyId;
    private String hallType;
    private int minPeople;
    private int parking;
    private int mealPrice;
}
