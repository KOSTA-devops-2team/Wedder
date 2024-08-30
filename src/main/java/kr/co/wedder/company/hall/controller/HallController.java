package kr.co.wedder.company.hall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HallController {

    @GetMapping("weddinghallList")
    public String weddinghallList() { return "company/weddinghall/weddinghallList"; }

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
