package kr.co.wedder.company.service;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.company.dao.CompanyDao;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.CompanyImageDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.mypage.domain.OptionDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    CompanyDao companyDao;

    @Override
    public CompanyDto companyRead(Integer companyId) throws Exception {
        return companyDao.selectCompanyById(companyId);
    }

    @Override
    public List<CompanyDto> getCompanyList(Pagination pagination, String companyName, String category) throws Exception {
        return companyDao.selectCompanyByCategory(pagination, companyName, category);
    }

    @Override
    public List<CompanyDto> getHallDetail(int companyId) throws Exception {
        return companyDao.selectHallDetail(companyId);
    }

    @Override
    public List<CompanyDto> searchCompanies(String companyName, String category) throws Exception {
        return companyDao.searchCompany(companyName, category);
    }

    @Override
    public int getCompanyListCnt(String companyName, String category) throws Exception {
        return companyDao.selectCompanyListCnt(companyName, category);
    }

    @Override
    public List<CompanyImageDto> getCompanyImages(int companyId) throws Exception {
        return companyDao.selectCompanyImages(companyId);
    }

    @Override
    public CompanyDto getCoordinate(int companyId) throws Exception {
        return companyDao.selectCoordinateById(companyId);
    }

    @Override
    public List<OptionDto> getOption(String category) throws Exception {
        return companyDao.selectOptByCategory(category);
    }

    @Override
    public List<CompanyScheduleDto> getAvailableHallDate(int companyId) {

        List<CompanyScheduleDto> result = companyDao.selectAvailableHallDate(companyId);
        
        return result != null ? result : new ArrayList<>();
    }

    @Override
    public List<CompanyScheduleDto> getAvailableHallTime(String companyName, Date date) {

        List<CompanyScheduleDto> result = companyDao.selectAvailableHallTime(companyName, date);

        return result;
    }

    @Override
    public List<CompanyDto> getStudioDetail(int companyId) throws Exception {
        return companyDao.selectStudioDetail(companyId);
    }

}
