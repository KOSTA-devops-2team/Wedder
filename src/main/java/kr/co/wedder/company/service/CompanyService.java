package kr.co.wedder.company.service;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.HallDto;

import java.util.List;
import java.util.Map;

public interface CompanyService {

    List<CompanyDto> getPage(Map map) throws Exception;
    int getCount() throws Exception;

    List<CompanyDto> getSearchResultPage(SearchItem sc) throws Exception;
    int getSearchResultCount(SearchItem sc) throws Exception;

    CompanyDto companyRead(Integer companyId) throws Exception;
    List<CompanyDto> getHallList() throws Exception;


}
