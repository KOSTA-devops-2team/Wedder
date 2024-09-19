package kr.co.wedder.calendar.dao;

import java.util.List;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.calendar.domain.SearchItem;


public interface CalendarDao {

	CompanyScheduleDto select(Integer scheduleId) throws Exception;
	int delete(Integer scheduleId) throws Exception;
	int deleteAll() throws Exception;
	int insert(CompanyScheduleDto companyScheduleDto) throws Exception;
	int searchResultCnt(SearchItem sc) throws Exception;
	List<CompanyScheduleDto> searchSelectPage(SearchItem sc);

	
}
