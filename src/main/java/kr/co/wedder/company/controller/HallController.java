package kr.co.wedder.company.controller;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.service.CompanyService;
import kr.co.wedder.company.service.SearchItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/")
public class HallController {

    @Autowired
    CompanyService companyService;

    @GetMapping("weddinghallList")
    public String whallList(Model m, HttpServletRequest request) {
        System.out.println("Controller : getHallList");
        try{

            List<CompanyDto> hallList = companyService.getHallList();
            m.addAttribute("hallList", hallList);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "company/weddinghall/weddinghallList";
    }

    @GetMapping("weddinghallDetail")
    public String weddinghallDetail() { return "company/weddinghall/weddinghallDetail"; }

    @GetMapping("mapViewWithFilters")
    public String mapViewWithFilters() { return "company/weddinghall/mapViewWithFilters"; }

    @GetMapping("weddinghallPayment")
    public String weddinghallPayment() { return "company/weddinghall/weddinghallPayment"; }

    @PostMapping("weddinghallPayment")
    public String whallPayment() { return "company/weddinghall/weddinghallPayment"; }

    @GetMapping("reviewModal")
    public String reviewModal() { return "company/weddinghall/reviewSearchModal"; }


}
