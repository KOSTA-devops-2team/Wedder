package kr.co.wedder.estimate.dao;

import kr.co.wedder.estimate.domain.EstimateDto;
import java.util.List;

public interface EstimateDao {
    List<EstimateDto> getStudioList();
    List<EstimateDto> getDressList();
    List<EstimateDto> getMakeupList();
    EstimateDto getStudioById(int companyId);
    EstimateDto getDressById(int companyId);
    EstimateDto getMakeupById(int companyId);
    List<EstimateDto> getStudioOptionsByCompanyId(int companyId);
    List<EstimateDto> getDressOptionsByCompanyId(int companyId);
    List<EstimateDto> getMakeupOptionsByCompanyId(int companyId);
}
