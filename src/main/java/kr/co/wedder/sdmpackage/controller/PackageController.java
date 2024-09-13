package kr.co.wedder.sdmpackage.controller;

import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import kr.co.wedder.sdmpackage.service.PackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public String getAllPackages(Model model) {

        List<PackageDto> allPackages = packageService.getAllPackages();
        model.addAttribute("AllPackages", allPackages);

        // best package 라인
        List<PackageDto> bestPackages = packageService.getBestPackages();
        model.addAttribute("BestPackages", bestPackages);

        //MD Pick 라인
        List<PackageDto> mdPickPackages = packageService.getMDPickPackages();
        model.addAttribute("MDPickPackages", mdPickPackages);
        return "package/packageRecommend";
    }


    // 패키지 금액별 필터링



    // 패키지 디테일
    @GetMapping(value = "/{packageId}/detail")
    public String packageDetail(@PathVariable int packageId, Model model) {

        PackageDetailDto packageDetail = packageService.getPackageDetail(packageId);
        model.addAttribute("packageDetail", packageDetail);
        return "package/packageDetail";
    }
}
