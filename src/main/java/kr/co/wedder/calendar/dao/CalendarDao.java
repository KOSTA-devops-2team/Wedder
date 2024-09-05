package kr.co.wedder.calendar.dao;


import java.util.List;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;


public interface CalendarDao {

	CompanyScheduleDto select(Integer schedule_id) throws Exception;
	int delete(Integer schedule_id) throws Exception;
	int deleteAll() throws Exception;
	int insert(CompanyScheduleDto companyScheduleDto) throws Exception;

	
}
