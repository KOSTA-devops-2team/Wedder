package kr.co.wedder.mypage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;
import kr.co.wedder.mypage.service.MyPageService;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	MyPageService myPageService;
	
	@GetMapping("/mypage")
	public String mypage(Integer customer_id, Model m) {
//		Integer customer_id, Model m
//		try {
//			MyPageDTO myPageDTO = myPageService.read(customer_id);
//			m.addAttribute(myPageDTO);
//			return "/mypage/mypage";
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			return "redirect:/main";
//		}
		try {
			// 임시용 customer_id
			customer_id=1;		
			Integer company_id=1;
			Integer reservation_id =1;
			//새로운 맵 생성  파리미터 타입용
			Map<String, Object> visitCriteriaMap =new HashMap<String, Object>();
			Map<String, Object> companyDtoMap =new HashMap<String, Object>();
			
			// 각 테이블 들 들어가는 기능
			MyPageDTO myPageDTO = myPageService.customerRead(customer_id);
			CompanyDto companyDto =myPageService.companyRead(company_id);
			ReservationDto reservationDto=myPageService.reservationRead(reservation_id);
			HistoryDto historyDto = myPageService.historyRead(customer_id);
			
			// 모델 속성 추가
			m.addAttribute("myPageDTO",myPageDTO);
			m.addAttribute("companyDto",companyDto);
			m.addAttribute("reservationDto",reservationDto);
			m.addAttribute("historyDto",historyDto);
			
			// 
			VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDTO, reservationDto,historyDto);
			visitCriteriaMap.put("company_id", (Integer) visitCriteria.getCompanyDto().getCompany_id());
			visitCriteriaMap.put("customer_id", (Integer) visitCriteria.getMyPageDTO().getCustomer_id());
			m.addAttribute("visitCriteria",visitCriteria);
			
			List<VisitCriteria> visitCriteriaList=myPageService.todayVisitHistory(visitCriteriaMap);
			m.addAttribute("visitCriteriaList",visitCriteriaList);
			
			Integer visitCriteriaCount=myPageService.todayVisitCount(visitCriteriaMap);
			m.addAttribute("visitCriteriaCount",visitCriteriaCount);
			
			companyDtoMap.put("company_category", "웨딩홀");
			List<CompanyDto> companyListHall=myPageService.todayReservationHistory(companyDtoMap);
			m.addAttribute("companyListHall",companyListHall);
			
			companyDtoMap.put("company_category", "스튜디오");
			List<CompanyDto> companyListStudio=myPageService.todayReservationHistory(companyDtoMap);
			m.addAttribute("companyListStudio",companyListStudio);
			
			companyDtoMap.put("company_category", "드레스");
			List<CompanyDto> companyListDress=myPageService.todayReservationHistory(companyDtoMap);
			m.addAttribute("companyListDress",companyListDress);
			
			companyDtoMap.put("company_category", "메이크업");
			List<CompanyDto> companyListMake=myPageService.todayReservationHistory(companyDtoMap);
			m.addAttribute("companyListMake",companyListMake);
			
			return "/mypage/mypage";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/main";
		}
//		return "/mypage/mypage";
	}
	
	@RequestMapping(value="/estimate-storage")
	public String estimateStorage() {
		return "mypage/estimateStorage";
	}
	@RequestMapping(value = "/likelist")
	public String likeList() {
		return "mypage/likeList";
	}
	@RequestMapping(value="/mypayment")
	public String myPayment() {
		return "mypage/myPayment";
	}
	@RequestMapping(value="/payment-detail")
	public String paymentDetail() {
		return "mypage/paymentDetail";
	}
	
	/*
	 * @RequestMapping(value="/reservation-detail") public String
	 * reservationDetail() { return "mypage/reservationDetail"; }
	 */
	@GetMapping("/reservation-detail")
	public String reservationDetail() {
		return "/mypage/reservationDetail";
	}
	//업체에 있는 상세 에약내역(옵션을 가져오는 부분) 
	@GetMapping("/historys")
	@ResponseBody
	public ResponseEntity<List<MyPageDTO>> list(CompanyDto companyDto){
		CompanyDto list = null;
		
			try {
//				list=myPageService.getList(companyDto);
				return new ResponseEntity<List<MyPageDTO>>((List<MyPageDTO>) list,HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				return new ResponseEntity<List<MyPageDTO>>((List<MyPageDTO>) list,HttpStatus.BAD_REQUEST);
			}
	}
	
	@RequestMapping(value="/reservation-list")
	public String reservationList() {
		return "/mypage/reservationList";
	}
	@RequestMapping(value="/wishlist")
	public String wishList() {
		return "mypage/wishList";
	}
	@RequestMapping(value = "calendar")
	public String calendarTest() {
		return "common/calendar";
	}
}
