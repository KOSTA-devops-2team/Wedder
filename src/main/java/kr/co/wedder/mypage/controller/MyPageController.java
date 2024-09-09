package kr.co.wedder.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage/mypage";
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
	
	@RequestMapping(value="/reservation-list")
	public String reservationList() {
		return "mypage/reservationList";
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
