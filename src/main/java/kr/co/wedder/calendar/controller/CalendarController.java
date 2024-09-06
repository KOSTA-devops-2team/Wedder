package kr.co.wedder.calendar.controller;

import java.sql.Time;
import java.util.Date;
import java.util.List;
import java.util.Timer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.calendar.domain.Test;
import kr.co.wedder.calendar.service.CalendarService;


@Controller
@RequestMapping("/calendar")
public class CalendarController {
	
	@Autowired
	CalendarService calendarService;
	
	@GetMapping("/calendar")
	public String calendar(Integer schedule_Id,Model m) {
		try {
			CompanyScheduleDto dto = calendarService.read(schedule_Id);
			m.addAttribute(dto);
			return "calendar";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect: /reservation-detail";
		}
		
	}
	
	@PostMapping("/remove")
	public String remove(Integer schedule_id,RedirectAttributes rattr, HttpSession session) {
		String writer=(String) session.getAttribute("id");
		String msg="DEL_OK";
		
		try {
			if(calendarService.remove(schedule_id)!=1)
				throw new Exception("Delete failed.");
		} catch (Exception e) {
			e.printStackTrace();
			msg="DEL_ERR";
		}
		rattr.addAttribute("sch");
		rattr.addAttribute("msg"+msg);
		
		return "redirect:/calendar";
	}
	@PostMapping("/write")
	public String write(CompanyScheduleDto companyScheduleDto,RedirectAttributes rattr,Model m, HttpSession session) {
		String writer =(String) session.getAttribute("id");
//		companyScheduleDto.set
		try {
			if(calendarService.write(companyScheduleDto)!=1)
				throw new Exception("Write Failed");
			rattr.addFlashAttribute("msg","WRT_OK");
			return "redirect: calendar";
			
		} catch (Exception e) {
			e.printStackTrace();
			m.addAttribute("mode","new");
			m.addAttribute("companyScheduleDto",companyScheduleDto);
			m.addAttribute("msg","WRT_ERR");
			return "calendar";
		}
	}
	
	@GetMapping("/list")
	public String list(CompanyScheduleDto dto,Model m) throws Exception {
		m.addAttribute("dto",dto);
		return "common/calendarList";
	}
	
	@ResponseBody
	@PostMapping("/send")
	public Test test(@RequestBody Test t) {
		System.out.println("t="+t);
		t.setYear(t.getYear());
		t.setMonth(t.getMonth());
		t.setDay(t.getDay());
		
		return t;
	}
	@ResponseBody
	@PostMapping("/send2")
	public CompanyScheduleDto CSDto(@RequestBody CompanyScheduleDto CSDto) {
		
		Date date=new Date(2024-1900, 9-1, 8);
		//Date(원하는년도-1900 ,원하는 달 -1,원하는 일 
		Time time=Time.valueOf("11:41:24");
		System.out.println("CSDto="+CSDto);
		CSDto.setSchedule_id(4);
		CSDto.setCompany_id(4);
		CSDto.setCompany_name("test용");
		CSDto.setDate(date);
		CSDto.setTime(time);
		
		return CSDto;
	}
}
