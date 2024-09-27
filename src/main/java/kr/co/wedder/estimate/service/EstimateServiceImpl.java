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
}
