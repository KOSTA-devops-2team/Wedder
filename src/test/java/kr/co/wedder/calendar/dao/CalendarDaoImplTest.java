package kr.co.wedder.calendar.dao;

import static org.junit.Assert.*;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.usingsky.calendar.KoreanLunarCalendar;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import com.github.usingsky.calendar.*;

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
	//@Test
	public void deletTest() throws Exception{
		assertTrue(calendarDao !=null);
		calendarDao.delete(1);
	}
	//@Test
	public void insert() throws Exception{
		
		Date date=new Date(124, 10, 3);
		CompanyScheduleDto CScheduleDto=
				new CompanyScheduleDto(2,"test",date,"11:00");  
		calendarDao.insert(CScheduleDto);
	}
	
	@Test
	public void select() throws Exception{
		
		CompanyScheduleDto dto=calendarDao.select(2);
		System.out.println("CompanyDto ="+dto);
		assertTrue(dto.getSchedule_id().equals(2));
		System.out.println(dto.getDate());
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(dto.getDate());
		
		int year=calendar.get(Calendar.YEAR);
		int month=calendar.get(Calendar.MONTH);
		int day=calendar.get(Calendar.DATE);
		
		System.out.println(year);
		System.out.println(month);
		System.out.println(day);
		
		/* KoreanLunarCalendar 예제 
		 * KoreanLunarCalendar calendar2= KoreanLunarCalendar.getInstance();
		 * System.out.println(calendar2.getLunarIsoFormat());
		 * calendar2.setSolarDate(2017, 6, 24);
		 * System.out.println(calendar2.getLunarIsoFormat());
		 * System.out.println(calendar2.getGapjaString());
		 * System.out.println(calendar2.getSolarMonth());
		 */
	}
	
	
}
