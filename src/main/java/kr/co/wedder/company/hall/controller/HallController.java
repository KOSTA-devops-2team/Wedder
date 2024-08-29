package kr.co.wedder.company.hall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HallController {

    @RequestMapping("/weddinghallList")
    public String weddinghallList() { return "company/weddinghall/weddinghallList"; }

    @RequestMapping("/weddinghallDetail")
    public String weddinghallDetail() { return "company/weddinghall/weddinghallDetail"; }

    @RequestMapping("/mapViewWithFilters")
    public String mapViewWithFilters() { return "company/weddinghall/mapViewWithFilters"; }

    @RequestMapping("/weddinghallPayment")
    public String weddinghallPayment() { return "company/weddinghall/weddinghallPayment"; }

    @RequestMapping("/reviewModal")
    public String reviewModal() { return "company/weddinghall/reviewSearchModal"; }
}
