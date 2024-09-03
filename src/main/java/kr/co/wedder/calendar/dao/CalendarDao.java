package kr.co.wedder.calendar.dao;

import java.util.List;
import java.util.Map;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;


public interface CalendarDao {

	int delete(Integer schedule_id) throws Exception;
	int deleteAll() throws Exception;
	List<CompanyScheduleDto> selectpage(Map map) throws Exception;
	int insert(CompanyScheduleDto companyScheduleDto) throws Exception;
}
