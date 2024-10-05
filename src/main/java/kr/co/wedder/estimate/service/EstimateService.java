package kr.co.wedder.estimate.service;

import kr.co.wedder.estimate.domain.EstimateDto;

import java.util.List;

public interface EstimateService {
    List<EstimateDto> getStudioList();
    List<EstimateDto> getDressList();
    List<EstimateDto> getMakeupList();
    // 스튜디오 옵션 조회
    List<EstimateDto> getStudioOptionsByCompanyId(int companyId);

    // 드레스 옵션 조회
    List<EstimateDto> getDressOptionsByCompanyId(int companyId);

    // 메이크업 옵션 조회
    List<EstimateDto> getMakeupOptionsByCompanyId(int companyId);
}
