package kr.co.wedder.sdmpackage.controller;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.service.PackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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

    // 가능한 날짜 데이터 불러오기
    @GetMapping("/getAvailableDate")
    public ResponseEntity<List<CompanyScheduleDto>> getAvailableDates(@RequestParam String companyName) {

        System.out.println("companyName = " + companyName);
        List<CompanyScheduleDto> availableDates = packageService.getAvailableDateList(companyName);
        System.out.println("getAvailableDates = " + availableDates);

        // 데이터가 없을 경우에도 빈 배열과 OK 상태 코드 반환
        return new ResponseEntity<>(availableDates != null ? availableDates : new ArrayList<>(), HttpStatus.OK);
    }

    // 가능한 시간 데이터 불러오기
    @GetMapping("/getAvailableTimeList")
    public ResponseEntity<List<CompanyScheduleDto>> getAvailableTimes(
            @RequestParam String companyName,
            @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date date) {

        System.out.println("companyName = " + companyName + "  date " +date);
        List<CompanyScheduleDto> availableTimes = packageService.getAvailableTimeList(companyName, date);
        System.out.println("getAvailableTimes = " + availableTimes);
        if (availableTimes.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }

        return new ResponseEntity<>(availableTimes, HttpStatus.OK);
    }

}

