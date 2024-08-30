package kr.co.wedder.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SDMController {
<<<<<<< HEAD
	
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
=======

    @RequestMapping("/studioList")
    public String studioList() { return "company/studio/studioList"; }

    @RequestMapping("/studioDetail")
    public String studioDetail() { return "company/studio/studioDetail"; }

    @RequestMapping("/dressList")
    public String dressList() { return "company/dress/dressList"; }

    @RequestMapping("/dressDetail")
    public String dressDetail() { return "company/dress/dressDetail"; }

    @RequestMapping("/makeupList")
    public String makeupList() { return "company/makeup/makeupList"; }

    @RequestMapping("/makeupDetail")
    public String makeupDetail() { return "company/makeup/makeupDetail"; }
>>>>>>> edd97963e9771653f2f2e2f9ff3fa5aec5d896dd

}
