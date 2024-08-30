package kr.co.wedder.estimate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EstimateController {

    @RequestMapping(value = "/estimateCompany")
    public String estimateCompany() {
        return "estimate/estimateCompany";
    }
    @RequestMapping(value="/estimateOption")
    public String estimateDetail() {
        return "estimate/estimateOption";
    }
    @RequestMapping(value = "/estimateTotal")
    public String estimateFinal() {
        return "estimate/estimateTotal";
    }
}