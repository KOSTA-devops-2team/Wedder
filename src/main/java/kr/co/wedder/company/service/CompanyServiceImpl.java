package kr.co.wedder.company.service;

import kr.co.wedder.company.dao.CompanyDao;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.Pagination;
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
    public CompanyDto companyRead(Integer companyId) throws Exception {
        return companyDao.selectCompanyById(companyId);
    }

    @Override
    public List<CompanyDto> getHallList(Pagination pagination, String category) throws Exception {
        List<CompanyDto> companyList = companyDao.selectCompanyByCategory(pagination, category);
        System.out.println("Service - pageSize: " + pagination.getPageSize());
        System.out.println("Service - startList: " + pagination.getStartList());
        return companyList;
    }

    @Override
    public List<CompanyDto> searchCompanies(String companyName, String category) throws Exception {
        return companyDao.searchCompany(companyName, category);
    }

    @Override
    public int getCompanyListCnt(String category) throws Exception {
        return companyDao.selectCompanyListCnt(category);
    }

    @Override
    public List<CompanyDto> getHallDetail(Integer companyId) throws Exception {
        System.out.println("service : getHallDetail");
        return companyDao.selectHallDetail(companyId);
    }

    @Override
    public List<CompanyDto> getCompanyImages(Integer companyId) throws Exception {
        return companyDao.selectCompanyImages(companyId);
    }
}
