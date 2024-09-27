package kr.co.wedder.estimate.dao;

import kr.co.wedder.estimate.domain.EstimateDto;
import java.util.List;

public interface EstimateDao {
    List<EstimateDto> getStudioList();
    List<EstimateDto> getDressList();
    List<EstimateDto> getMakeupList();
;}
