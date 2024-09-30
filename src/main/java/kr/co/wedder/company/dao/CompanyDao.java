package kr.co.wedder.company.dao;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.SearchItem;

import java.util.List;
import java.util.Map;

public interface CompanyDao {

    CompanyDto selectCompanyById(Integer companyId) throws Exception;
    List<CompanyDto> selectCompanyByCategory() throws Exception;

    List<CompanyDto> searchCompany(String companyName, String category) throws Exception;
    List<CompanyDto> selectPage(Map map) throws Exception;
    List<CompanyDto> searchSelectPage(SearchItem sc) throws Exception;

    int count() throws Exception;
    int searchResultCnt(SearchItem sc) throws Exception;


}
