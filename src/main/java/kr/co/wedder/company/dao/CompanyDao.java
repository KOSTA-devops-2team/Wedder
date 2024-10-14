package kr.co.wedder.company.dao;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.CompanyImageDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.mypage.domain.OptionDto;

import java.util.Date;
import java.util.List;

public interface CompanyDao {

    CompanyDto selectCompanyById(Integer companyId) throws Exception;
    List<CompanyDto> selectCompanyByCategory(Pagination pagination,String companyName, String category) throws Exception;
    List<CompanyDto> searchCompany(String companyName, String category) throws Exception;
    int selectCompanyListCnt(String companyName, String category) throws Exception;
    List<CompanyImageDto> selectCompanyImages(int companyId) throws Exception;
    CompanyDto selectCoordinateById(int companyId) throws Exception;
    List<OptionDto> selectOptByCategory(String category) throws Exception;

    List<CompanyDto> selectHallDetail(int companyId) throws Exception;
    List<CompanyDto> selectStudioDetail(int companyId) throws Exception;

    List<CompanyScheduleDto> selectAvailableDateList(int companyId);
    List<CompanyScheduleDto> selectAvailableTimeList(int companyId, Date date);

}