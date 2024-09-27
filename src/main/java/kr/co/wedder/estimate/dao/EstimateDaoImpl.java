package kr.co.wedder.estimate.dao;

import kr.co.wedder.estimate.domain.EstimateDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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
}
