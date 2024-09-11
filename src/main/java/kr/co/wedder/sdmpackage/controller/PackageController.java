package kr.co.wedder.sdmpackage.controller;

import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.service.PackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/package")
public class PackageController {

    @Autowired
    PackageService packageService;

    @GetMapping("")
    public String packageMain() {
        return "package/packageMain";
    }

    @GetMapping(value = "/recommend")
    public String packageRecommend(Model model) {

        // best package 라인
        model.addAttribute("BestPackages", packageService.getBestPackages());

        // md pick 라인
        model.addAttribute("MDPickPackages", packageService.getMDPickPackages());

        return "package/packageRecommend";
    }

    // 패키지 디테일
//    @GetMapping(value = "/{packageId}/detail")
//    public String packageDetail(@PathVariable int packageId, Model model) {
//
//        PackageDetailDto packageDetail = packageService.getPackageDetail(packageId);
//        model.addAttribute("packageDetail", packageDetail);
//        return "package/packageDetail";
//    }
}
