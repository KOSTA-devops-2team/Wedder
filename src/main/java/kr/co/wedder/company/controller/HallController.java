package kr.co.wedder.company.controller;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.CompanyImageDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/weddinghall")
public class HallController {

    @Autowired
    CompanyService companyService;

    @GetMapping(value = "")
    public String whallList(@RequestParam(value = "page", defaultValue = "1") int page,
                            @RequestParam(value = "pageSize", defaultValue = "9") int pageSize, Model m) {
        String category = "웨딩홀";
        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(category);
            System.out.println("Controller - totalListCnt : " + totalListCnt);

            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);
            m.addAttribute("pagination", pagination);

            List<CompanyDto> hallList = companyService.getHallList(pagination, category);
            m.addAttribute("hallList", hallList);
            System.out.println("controller - startList: " + pagination.getStartList());
            System.out.println("controller - pageSize: " + pagination.getPageSize());
            System.out.println("controller - page: " + pagination.getPage());

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "company/weddinghall/weddinghallList";
    }

    @GetMapping(value = "/detail/{companyId}")
    public String weddinghallDetail(@PathVariable("companyId") int companyId, Model m) {

        try {
            List<CompanyDto> hallDetail = companyService.getHallDetail(companyId);
            m.addAttribute("hallDetail", hallDetail);

            List<CompanyImageDto> imgList = companyService.getCompanyImages(companyId);
            m.addAttribute("imgList", imgList);
            System.out.println("controller - weddinghallDetail: " + companyId);
            System.out.println("controller - hallDetail: " + hallDetail);
        }
        catch (Exception e) {
            e.printStackTrace();
            return "company/weddinghall/weddinghallList";
        }
        return "company/weddinghall/weddinghallDetail";
    }

    @GetMapping("/mapViewWithFilters")
    public String mapViewWithFilters() { return "company/weddinghall/mapViewWithFilters"; }

    @GetMapping("/Payment")
    public String weddinghallPayment() { return "company/weddinghall/weddinghallPayment"; }

    @PostMapping("/Payment")
    public String whallPayment() { return "company/weddinghall/weddinghallPayment"; }

    @GetMapping("/reviewModal")
    public String reviewModal() { return "company/weddinghall/reviewSearchModal"; }

}
