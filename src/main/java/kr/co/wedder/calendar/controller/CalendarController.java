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

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.calendar.domain.PageResolver;
import kr.co.wedder.calendar.domain.SearchItem;
import kr.co.wedder.calendar.service.CalendarService;


@Controller
@RequestMapping("/calendar")
public class CalendarController {
	
	@Autowired
	CalendarService calendarService;
	
	@GetMapping("/calendar") //O
	public String calendar(Integer schedule_Id,Model m) {
		try {
			CompanyScheduleDto dto = calendarService.read(schedule_Id);
			m.addAttribute(dto);
			return "calendar";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect: /wedder/calendar/list";
		}
		
	}
	
	@PostMapping("/remove") //X
	public String remove(Integer schedule_id,Integer page,Integer pageSize, RedirectAttributes rattr, HttpSession session) {
		//String writer=(String) session.getAttribute("id");
		String msg="DEL_OK";
		
		try {
			if(calendarService.remove(schedule_id)!=1)
				throw new Exception("Delete failed.");
		} catch (Exception e) {
			e.printStackTrace();
			msg="DEL_ERR";
		}
		rattr.addAttribute("page",page);
		rattr.addAttribute("pageSize",pageSize);
		rattr.addAttribute("msg",msg);
		
		return "redirect:/calendar/list";
	}
	@GetMapping("/read")  //O
	public String read(Integer schedule_id, SearchItem sc, Model m) {
		try {
			CompanyScheduleDto dto = calendarService.read(schedule_id);
			m.addAttribute(dto);
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect: /wedder/calendar/list";
		}
		return "/common/calendar";
	}
	
	
	@PostMapping("/write") //O
	public String write(CompanyScheduleDto companyScheduleDto,RedirectAttributes rattr,Model m, HttpSession session) {
		//String writer =(String) session.getAttribute("id");
		//companyScheduleDto.set
		
		try {
			if(calendarService.write(companyScheduleDto)!=1)
				throw new Exception("Write Failed"); 
			// 트랜잭션으로 calendarService.write값이 1과 같지 않을때 제대로 나오지 않았다 판단하여 페일을 준다.
			
			
			rattr.addFlashAttribute("msg","WRT_OK"); // 다시 재접속할때 속성으로 메시지에 write_ok라는 사인을 준다.
			return "redirect: /wedder/calendar/list";
			
		} catch (Exception e) {
			e.printStackTrace();
			m.addAttribute("mode","new");
			m.addAttribute("companyScheduleDto",companyScheduleDto);
			m.addAttribute("msg","WRT_ERR"); // 모델에 라이트 에러라고 준다.
			
			
			return "/common/calendar";
		}
	}
	@GetMapping("write") //O
	public String write(Model m) {
		m.addAttribute("mode","new");
		return "/common/calendar";
	}
	
	
	@GetMapping("/list") //O
	public String list(SearchItem sc,CompanyScheduleDto dto,Model m) throws Exception{
		m.addAttribute("dto",dto);
		
		int totalCnt = calendarService.getSearchResultCount(sc);
		m.addAttribute("totalCnt", totalCnt);
		
		PageResolver pageResolver = new PageResolver(totalCnt, sc);
		m.addAttribute("pr", pageResolver);
		
		List<CompanyScheduleDto> list = calendarService.getSearchResultPage(sc);
		m.addAttribute("list", list);
		
		return "common/calendarList";
	}
	
	@ResponseBody
	@PostMapping("/send2") //O
	public CompanyScheduleDto CSDto(@RequestBody CompanyScheduleDto CSDto) {
		
		Date date=new Date(2011-1900, 3-1, 5+1);
		//Date(원하는년도-1900 ,원하는 달 -1,원하는 일+1); 
		Time time=Time.valueOf("11:41:24");
		System.out.println("CSDto="+CSDto);
		CSDto.setSchedule_id(4);
		CSDto.setCompany_id(4);
		CSDto.setCompany_name("test용");
		CSDto.setDate(date);
		CSDto.setTime("11:00");
		
		return CSDto;
	}
}
