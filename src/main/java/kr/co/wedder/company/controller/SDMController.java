package kr.co.wedder.company.controller;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/")
public class SDMController {

    @Autowired
    CompanyService companyService;

    @GetMapping(value = "studio")
    public String studioList(@RequestParam(value = "page", defaultValue = "1") int page,
                             @RequestParam(value = "pageSize", defaultValue = "9") int pageSize, Model m) {
        String category = "스튜디오";
        try {

            int totalListCnt = companyService.getCompanyListCnt(category);
            System.out.println("Controller - totalListCnt : " + totalListCnt);

            Pagination pagination = new Pagination();
            pagination.doPaging(totalListCnt, page, pageSize);
            m.addAttribute("pagination", pagination);

            List<CompanyDto> studioList = companyService.getStudioList(pagination, category);
            m.addAttribute("studioList", studioList);

            } catch (Exception e) {
                e.printStackTrace();
            }
        return "company/studio/studioList";
    }

    @GetMapping(value = "studio/detail/{companyId}")
    public String studioDetail() {

        return "company/studio/studioDetail";
    }

    @GetMapping (value = "dress")
    public String dressList() { return "company/dress/dressList"; }

    @GetMapping(value = "dress/detail/{companyId}")
    public String dressDetail() { return "company/dress/dressDetail"; }

    @GetMapping(value = "makeup")
    public String makeupList() { return "company/makeup/makeupList"; }

    @GetMapping(value = "makeup/detail/{companyId}")
    public String makeupDetail() { return "company/makeup/makeupDetail"; }
}
