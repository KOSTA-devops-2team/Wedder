package kr.co.wedder.estimate.service;

import kr.co.wedder.estimate.dao.EstimateDao;
import kr.co.wedder.estimate.domain.EstimateDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EstimateServiceImpl implements EstimateService {

    @Autowired
    private EstimateDao estimateDao;

    @Override
    public List<EstimateDto> getStudioList() {
        System.out.println("Service: getStudioList 호출됨");
        return estimateDao.getStudioList();
    }

    @Override
    public List<EstimateDto> getDressList() {
        System.out.println("Service: getDressList 호출됨");
        return estimateDao.getDressList();
    }

    @Override
    public List<EstimateDto> getMakeupList() {
        System.out.println("Service: getMakeupList 호출됨");
        return estimateDao.getMakeupList();
    }
    @Override
    public List<EstimateDto> getStudioOptionsByCompanyId(int companyId) {
        List<EstimateDto> studioOptions = estimateDao.getStudioOptionsByCompanyId(companyId);
        System.out.println("Studio Options for companyId " + companyId + ": " + studioOptions);
        return studioOptions;
    }

    @Override
    public List<EstimateDto> getDressOptionsByCompanyId(int companyId) {
        List<EstimateDto> dressOptions = estimateDao.getDressOptionsByCompanyId(companyId);
        System.out.println("Dress Options for companyId " + companyId + ": " + dressOptions);
        return dressOptions;
    }

    @Override
    public List<EstimateDto> getMakeupOptionsByCompanyId(int companyId) {
        List<EstimateDto> makeupOptions = estimateDao.getMakeupOptionsByCompanyId(companyId);
        System.out.println("Makeup Options for companyId " + companyId + ": " + makeupOptions);
        return makeupOptions;
    }

}
