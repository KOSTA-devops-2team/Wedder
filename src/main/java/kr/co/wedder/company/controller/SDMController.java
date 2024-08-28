package kr.co.wedder.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SDMController {

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

}
