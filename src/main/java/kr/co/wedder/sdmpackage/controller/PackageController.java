package kr.co.wedder.sdmpackage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/package")
public class PackageController {

    @GetMapping(value = "")
    public String packageMain() {
        return "package/packageMain";
    }

    @GetMapping(value = "/detail")
    public String packageDetail() {
        return "package/packageDetail";
    }


    @GetMapping(value = "/recommend")
    public String packageRecommend() {
        return "package/packageRecommend";
    }
}
