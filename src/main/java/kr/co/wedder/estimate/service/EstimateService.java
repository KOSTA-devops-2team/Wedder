package kr.co.wedder.estimate.service;

import kr.co.wedder.estimate.domain.EstimateDto;

import java.util.List;

public interface EstimateService {
    List<EstimateDto> getStudioList();
    List<EstimateDto> getDressList();
    List<EstimateDto> getMakeupList();
    List<EstimateDto> getOptionsByCompanyId(int companyId, String category);
}
