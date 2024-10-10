package kr.co.wedder.mypage.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class EstimateInfoDto {
    private int estimateInfo_id;
    private int estimate_id;
    private int studio_id;
    private int dress_id;
    private int makeup_id;
    private int option_id;
}
