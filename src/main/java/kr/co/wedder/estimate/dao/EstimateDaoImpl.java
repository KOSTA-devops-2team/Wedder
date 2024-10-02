package kr.co.wedder.estimate.dao;

import kr.co.wedder.estimate.domain.EstimateDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class EstimateDaoImpl implements EstimateDao {

    @Autowired
    private SqlSession sqlSession;
    private static String namespace = "kr.co.wedder.dao.EstimateMapper.";

    @Override
    public List<EstimateDto> getStudioList() {
        return sqlSession.selectList(namespace + "getStudioList");
    }

    @Override
    public List<EstimateDto> getDressList() {
        return sqlSession.selectList(namespace + "getDressList");
    }

    @Override
    public List<EstimateDto> getMakeupList() {
        return sqlSession.selectList(namespace + "getMakeupList");
    }

    @Override
    public List<EstimateDto> findOptionsByCompanyIdAndCategory(int companyId, String category) {
        // MyBatis 쿼리를 통해 옵션을 조회

        return sqlSession.selectList(namespace + "getOptionsByCompanyIdAndCategory", Map.of("companyId", companyId, "category", category));
    }
}
