package kr.co.wedder.calendar.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wedder.calendar.dao.CalendarDao;
import kr.co.wedder.calendar.domain.CompanyScheduleDto;

@Service
public class CalendarServiceImpl implements CalendarService {
	
	@Autowired
	CalendarDao calendarDao;

	@Override
	public List<CompanyScheduleDto> getSchedule(Map map) throws Exception {
		return null;
	}

	@Override
	public int remove(Integer schedule_id) throws Exception {
		return calendarDao.delete(schedule_id);
	}

	@Override
	public int write(CompanyScheduleDto CompanyScheduleDto) throws Exception {
		return calendarDao.insert(CompanyScheduleDto);
	}

}
