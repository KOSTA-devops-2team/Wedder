package kr.co.wedder.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SDMController {

    @RequestMapping("/studioList")
    public String studioList() { return "jsp/studio/studioList"; }

    @RequestMapping("/studioDetail")
    public String studioDetail() { return "jsp/studio/studioDetail"; }

    @RequestMapping("/dressList")
    public String dressList() { return "jsp/dress/dressList"; }

    @RequestMapping("/dressDetail")
    public String dressDetail() { return "jsp/dress/dressDetail"; }

    @RequestMapping("/makeupList")
    public String makeupList() { return "jsp/makeup/makeupList"; }

    @RequestMapping("/makeupDetail")
    public String makeupDetail() { return "jsp/makeup/makeupDetail"; }

}
