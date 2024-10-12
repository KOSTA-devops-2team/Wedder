package kr.co.wedder.company.controller;

import kr.co.wedder.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class SDMController {

    @Autowired
    CompanyService companyService;

    @GetMapping(value = "studio")
    public String studioList() { return "company/studio/studioList"; }

    @GetMapping(value = "studio/detail/{companyId}")
    public String studioDetail() { return "company/studio/studioDetail"; }

    @GetMapping (value = "dress")
    public String dressList() { return "company/dress/dressList"; }

    @GetMapping(value = "dress/detail/{companyId}")
    public String dressDetail() { return "company/dress/dressDetail"; }

    @GetMapping(value = "makeup")
    public String makeupList() { return "company/makeup/makeupList"; }

    @GetMapping(value = "makeup/detail/{companyId}")
    public String makeupDetail() { return "company/makeup/makeupDetail"; }
}
