package kr.co.wedder.company.dao;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.CompanyImageDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.mypage.domain.OptionDto;
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
    public List<CompanyDto> selectCompanyByCategory(Pagination pagination, String companyName, String category) throws Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("pagination", pagination);
        map.put("companyName", companyName);
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
    public int selectCompanyListCnt(String companyName, String category) throws Exception {
        Map<String, Object> params = new HashMap<>();
        params.put("companyName", companyName);
        params.put("category", category);
        return session.selectOne(namespace + "selectCompanyListCnt", params);
    }

    @Override
    public List<CompanyImageDto> selectCompanyImages(int companyId) throws Exception {
        return session.selectList(namespace + "selectCompanyImages", companyId);
    }

    @Override
    public CompanyDto selectCoordinateById(int companyId) throws Exception {
        return session.selectOne(namespace + "selectCoordinateById", companyId);
    }

    @Override
    public List<OptionDto> selectOptByCategory(String category) throws Exception {
        return session.selectList(namespace + "selectOptByCategory", category);
    }

    @Override
    public List<CompanyDto> selectHallDetail(int companyId) throws Exception {
        return session.selectList(namespace + "selectHallDetail", companyId);
    }

    @Override
    public List<CompanyDto> selectStudioDetail(int companyId) throws Exception {
        return session.selectList(namespace + "selectStudioDetail", companyId);
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
