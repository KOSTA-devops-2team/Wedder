package kr.co.wedder.calendar.controller;

import static org.junit.Assert.*;

import java.sql.Date;
import java.sql.Time;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.calendar.service.CalendarServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class CalendarControllerTest {
	@Autowired
	private CalendarServiceImpl service;

	@Test
	public void insert() throws Exception{
		Date date=new Date(124, 10, 3);
		CompanyScheduleDto CScheduleDto=
				new CompanyScheduleDto(2,"test",date,"11:00"); 
		service.write(CScheduleDto);
	}

}
