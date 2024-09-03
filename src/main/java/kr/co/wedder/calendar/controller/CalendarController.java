package kr.co.wedder.calendar.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.calendar.service.CalendarService;


@Controller
public class CalendarController {
	
	@Autowired
	CalendarService calendarService;
	
	@GetMapping("/calendar")
	public String calendarTest() {
		return "common/calendar";
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
}
