package kr.co.wedder.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SDMController {
	
	@RequestMapping(value = "studio-list")
	public String studioList() {
		return "company/studioList";
	}
	@RequestMapping(value = "studio-detail")
	public String studioDetail() {
		return "company/studioDetail";
	}
	@RequestMapping(value = "dress-list")
	public String dressList() {
		return "company/dressList";
	}
	@RequestMapping(value = "dress-detail")
	public String dressDetail() {
		return "company/dressDetail";
	}
	@RequestMapping(value = "makeup-list")
	public String makeupList() {
		return "company/makeupList";
	}
	@RequestMapping(value = "makeup-detail")
	public String makeupDetail() {
		return "company/makeupDetail";
	}

}
