package kr.co.wedder.company.service;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.CompanyImageDto;
import kr.co.wedder.company.domain.Pagination;

import java.util.Date;
import java.util.List;

public interface CompanyService {

    CompanyDto companyRead(Integer companyId) throws Exception;
    List<CompanyDto> getHallList(Pagination pagination, String category) throws Exception;
    List<CompanyDto> getHallDetail(Integer companyId) throws Exception;

    List<CompanyDto> searchCompanies(String companyName, String category) throws Exception;
    int getCompanyListCnt(String category) throws Exception;
    List<CompanyImageDto> getCompanyImages(int companyId) throws Exception;

    List<CompanyScheduleDto> getAvailableHallDate(int companyId);
    List<CompanyScheduleDto> getAvailableHallTime(String companyName, Date date);

    List<CompanyDto> getStudioList(Pagination pagination, String category) throws Exception;

}
