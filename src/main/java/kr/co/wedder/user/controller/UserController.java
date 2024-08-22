package kr.co.wedder.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping("/login")
	public String login() {
		return "user/login";
	}
	@RequestMapping(value = "/signUp")
	public String signUp() {
		return "user/signUp";
	}
	
	/* 회원 가입 페이지 불러오기   	*/
//	@GetMapping(value = "/signup")
	public String signupcheck() {
		return "user/signUp";
	}
	/*    	*/
	@RequestMapping(value = "/emailVertify")
	public String emailVertify() {
		return "user/emailVertify";
	}
	@RequestMapping(value = "/consentForm")
	public String consentForm() {
		return "user/consentForm";
	}
}
