package kr.co.wedder.company.dao;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.company.domain.SearchItem;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface CompanyDao {

    CompanyDto selectCompanyById(Integer companyId) throws Exception;
    List<CompanyDto> selectCompanyByCategory(Pagination pagination, String category) throws Exception;

    List<CompanyDto> searchCompany(String companyName, String category) throws Exception;
    int selectCompanyListCnt(String category) throws Exception;

    List<CompanyDto> selectHallDetail(Integer companyId) throws Exception;
    List<CompanyDto> selectCompanyImages(Integer companyId) throws Exception;
    List<CompanyScheduleDto> selectAvailableHallDate(int companyId);
    List<CompanyScheduleDto> selectAvailableHallTime(String companyName, Date date);
}