package kr.co.wedder.calendar.service;

import java.util.List;
import java.util.Map;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.calendar.domain.SearchItem;

public interface CalendarService {

	List<CompanyScheduleDto> getSchedule(Map map) throws Exception;
	
	int remove(Integer schedule_id) throws Exception;
	int write(CompanyScheduleDto dto) throws Exception;
	CompanyScheduleDto read(Integer schedule_id) throws Exception;

	 int getSearchResultCount(SearchItem sc) throws Exception;

	List<CompanyScheduleDto> getSearchResultPage(SearchItem sc); 

}
