package kr.co.wedder.company.service;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.CompanyImageDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.mypage.domain.OptionDto;

import java.util.Date;
import java.util.List;

public interface CompanyService {

    CompanyDto companyRead(Integer companyId) throws Exception;
    List<CompanyDto> getCompanyList(Pagination pagination, String companyName, String category) throws Exception;
    List<CompanyDto> getHallDetail(int companyId) throws Exception;

    List<CompanyDto> searchCompanies(String companyName, String category) throws Exception;
    int getCompanyListCnt(String companyName, String category) throws Exception;
    List<CompanyImageDto> getCompanyImages(int companyId) throws Exception;
    CompanyDto getCoordinate(int companyId) throws Exception;
    List<OptionDto> getOption (String category) throws Exception;

    List<CompanyScheduleDto> getAvailableDateList(int companyId);
    List<CompanyScheduleDto> getAvailableTimeList(int companyId, Date date);

    List<CompanyDto> getStudioDetail(int companyId) throws Exception;

}
