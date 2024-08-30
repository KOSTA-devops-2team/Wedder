package kr.co.wedder.company.sdm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class SDMController {

    @GetMapping("studioList")
    public String studioList() { return "company/studio/studioList"; }

    @GetMapping("studioDetail")
    public String studioDetail() { return "company/studio/studioDetail"; }

    @GetMapping ("dressList")
    public String dressList() { return "company/dress/dressList"; }

    @GetMapping("dressDetail")
    public String dressDetail() { return "company/dress/dressDetail"; }

    @GetMapping("makeupList")
    public String makeupList() { return "company/makeup/makeupList"; }

    @GetMapping("makeupDetail")
    public String makeupDetail() { return "company/makeup/makeupDetail"; }

}
