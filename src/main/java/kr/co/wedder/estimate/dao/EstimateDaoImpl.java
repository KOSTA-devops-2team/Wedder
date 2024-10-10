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
    public EstimateDto getStudioById(int companyId) {
        return sqlSession.selectOne(namespace + "getStudioById", companyId);
    }

    @Override
    public EstimateDto getDressById(int companyId) {
        return sqlSession.selectOne(namespace + "getDressById", companyId);
    }

    @Override
    public EstimateDto getMakeupById(int companyId) {
        return sqlSession.selectOne(namespace + "getMakeupById", companyId);
    }

    @Override
    public List<EstimateDto> getStudioOptionsByCompanyId(int companyId) {
        return sqlSession.selectList(namespace + "getStudioOptionsByCompanyId", companyId);
    }

    @Override
    public List<EstimateDto> getDressOptionsByCompanyId(int companyId) {
        return sqlSession.selectList(namespace + "getDressOptionsByCompanyId", companyId);
    }

    @Override
    public List<EstimateDto> getMakeupOptionsByCompanyId(int companyId) {
        return sqlSession.selectList(namespace + "getMakeupOptionsByCompanyId", companyId);
    }

}
