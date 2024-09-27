package kr.co.wedder.sdmpackage.controller;

import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.service.PackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/package")
public class PackageRestController {

    @Autowired
    private PackageService packageService;

    // 자동완성 업체명 검색
    @PostMapping(value = "/ajax/autocomplete")
    public ResponseEntity<List<PackageDetailDto>> autocomplete (@RequestParam Map<String, Object> paramMap) throws Exception{

        System.out.println("Request Parameters: " + paramMap);
        List<PackageDetailDto> resultList = packageService.autocomplete(paramMap);
        paramMap.put("resultList", resultList);
        System.out.println("PackageController: resultList" + resultList);

        if (resultList == null) {
            resultList = new ArrayList<>();
        }
        return ResponseEntity.ok(resultList);
    }

    // 전체 패키지 검색
    @PostMapping("/search")
    public ResponseEntity<List<PackageDetailDto>> searchPackages(@RequestParam String companyName){

        System.out.println("PackageRestController.searchPackages");
        List<PackageDetailDto> packages = packageService.searchPackagesByCompany(companyName);
        System.out.println("PackageController: packages" + packages);

        return ResponseEntity.ok(packages);

    }

    // 금액별 범위에 따른 패키지 필터링
    @GetMapping("/filter")
    public ResponseEntity<List<PackageDetailDto>> filterPackagesByPrice(int minPrice, int maxPrice) {

        List<PackageDetailDto> filteredPackages = packageService.filterPackagesByPrice(minPrice, maxPrice);
        return ResponseEntity.ok(filteredPackages);
    }
}

