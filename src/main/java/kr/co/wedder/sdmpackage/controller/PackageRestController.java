package kr.co.wedder.sdmpackage.controller;

import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.service.PackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/package")
public class PackageRestController {

    @Autowired
    private PackageService packageService;

//    @GetMapping("/search")
//    @ResponseBody
//    public List<PackageDetailDto> filterPackages(@RequestParam String query) {
//
//        System.out.println("Controller: filterPackages 호출됨");
//        return packageService.searchPackages(query);
//    }
}
