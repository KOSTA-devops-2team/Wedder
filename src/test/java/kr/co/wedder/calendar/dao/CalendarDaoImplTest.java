package kr.co.wedder.calendar.dao;

import static org.junit.Assert.*;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalDateTime;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class CalendarDaoImplTest {
	@Autowired
	private CalendarDao calendarDao;
	
	//@Test
	public void deleteAllTest() throws Exception {
		assertTrue(calendarDao !=null);
		calendarDao.deleteAll();
	}
//	@Test
	public void deletTest() throws Exception{
		assertTrue(calendarDao !=null);
		calendarDao.delete(1);
	}
	@Test
	public void insert() throws Exception{
		Time time=Time.valueOf("11:41:24");
		Date date=new Date(124, 10, 3);
		CompanyScheduleDto CScheduleDto=
				new CompanyScheduleDto(1,"삼성",date,time);  
		calendarDao.insert(CScheduleDto);
	}
}
