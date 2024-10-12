package kr.co.wedder.company.dao;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.CompanyImageDto;
import kr.co.wedder.company.domain.Pagination;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.HashMap;
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
    public List<CompanyDto> selectCompanyByCategory(Pagination pagination, String category) throws Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("pagination", pagination);
        map.put("category", category);
        return session.selectList(namespace + "selectCompanyByCategory", map);
    }

    @Override
    public List<CompanyDto> searchCompany(String companyName, String category) throws Exception {
        Map<String, String> params = new HashMap<>();
        params.put("companyName", companyName);
        params.put("category", category);
        return session.selectList(namespace + "searchCompany", params);
    }

    @Override
    public int selectCompanyListCnt(String category) throws Exception {
        return session.selectOne(namespace + "selectCompanyListCnt", category);
    }

    @Override
    public List<CompanyDto> selectHallDetail(Integer companyId) throws Exception {
        System.out.println("dao selectHallDetail");
        return session.selectList(namespace + "selectHallDetail", companyId);
    }

    @Override
    public List<CompanyImageDto> selectCompanyImages(int companyId) throws Exception {
        return session.selectList(namespace + "selectCompanyImages", companyId);
    }

    @Override
    public List<CompanyScheduleDto> selectAvailableHallDate(int companyId) {
        return session.selectList(namespace + "selectAvailableHallDate", companyId);
    }

    @Override
    public List<CompanyScheduleDto> selectAvailableHallTime(String companyName, Date date) {
        Map map = new HashMap<>();
        map.put("companyName", companyName);
        map.put("date", date);

        return session.selectList(namespace + "selectAvailableHallTime", map);
    }
}
