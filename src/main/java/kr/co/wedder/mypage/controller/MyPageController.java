package kr.co.wedder.mypage.controller;

import java.util.List;

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
import kr.co.wedder.mypage.domain.MyPageDTO;
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
//			customer_id=1;
			customer_id=2;
			MyPageDTO myPageDTO = myPageService.read(customer_id);
			m.addAttribute("myPageDTO",myPageDTO);
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
