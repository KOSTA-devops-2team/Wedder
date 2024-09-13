package kr.co.wedder.company.dao;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.service.CompanyService;
import kr.co.wedder.company.service.SearchItem;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class CompanyDaoImpl implements CompanyDao {

    @Autowired
    private SqlSession session;
    private static String namespace = "kr.co.wedder.company.dao.CompanyMapper.";

    @Override
    public CompanyDto selectCompanyById(Integer companyId) throws Exception {
        return session.selectOne(namespace + "selectCompanyById", companyId);
    }

    @Override
    public List<CompanyDto> selectCompanyByCategory() throws Exception {
        System.out.println("Dao : getHallList");
        return session.selectList(namespace + "selectCompanyByCategory");
    }

    @Override
    public List<CompanyDto> selectPage(Map map) throws Exception {
        return session.selectList(namespace + "selectPage", map);
    }

    @Override
    public List<CompanyDto> searchSelectPage(SearchItem sc) throws Exception {
        return session.selectList(namespace + "searchSelectPage", sc);
    }

    @Override
    public int count() throws Exception {
        return session.selectOne(namespace + "count");
    }

    @Override
    public int searchResultCnt(SearchItem sc) throws Exception {
        return session.selectOne(namespace + "searchResultCnt", sc);
    }
}
