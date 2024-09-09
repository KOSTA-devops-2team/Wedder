package kr.co.wedder.calendar.service;

import static org.junit.Assert.*;

import java.sql.Date;
import java.sql.Time;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.wedder.calendar.dao.CalendarDao;
import kr.co.wedder.calendar.domain.CompanyScheduleDto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class CalendarServiceImplTest {
	@Autowired
	private CalendarDao dao;
	@Autowired
	private CalendarServiceImpl service;
	
	@Test
	public void insert() throws Exception{
		Date date=new Date(124, 10, 3);
		CompanyScheduleDto CScheduleDto=
				new CompanyScheduleDto(2,"testService",date,"11:20");  
		service.write(CScheduleDto);
	}

}
