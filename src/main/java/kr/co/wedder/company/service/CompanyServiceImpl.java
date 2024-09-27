package kr.co.wedder.company.service;

import kr.co.wedder.company.dao.CompanyDao;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.SearchItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    CompanyDao companyDao;

    @Override
    public List<CompanyDto> getPage(Map map) throws Exception {
        return companyDao.selectPage(map);
    }

    @Override
    public int getCount() throws Exception {
        return companyDao.count();
    }

    @Override
    public List<CompanyDto> searchCompanies(String companyName, String category) throws Exception {
        return companyDao.searchCompany(companyName, category);
    }

    @Override
    public int getSearchResultCount(SearchItem sc) throws Exception {
        return companyDao.searchResultCnt(sc);
    }

    @Override
    public CompanyDto companyRead(Integer companyId) throws Exception {
        return companyDao.selectCompanyById(companyId);
    }

    @Override
    public List<CompanyDto> getHallList() throws Exception {
        List<CompanyDto> companyList = companyDao.selectCompanyByCategory();
        System.out.println("Service : getHallList");
        return companyList;
    }

}
