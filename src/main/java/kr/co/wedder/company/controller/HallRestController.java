package kr.co.wedder.company.controller;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.HallDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.company.domain.SearchItem;
import kr.co.wedder.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping(value = "/weddinghall")
public class HallRestController {

    @Autowired
    private CompanyService companyService;

//    @PostMapping(value = "")
//    public List<CompanyDto> searchCompany(@RequestParam(value = "companyName", required = false) String companyName) throws Exception {
//        String category = "웨딩홀";
//        return companyService.searchCompanies(companyName, category);
//    }

    @GetMapping(value = "/ajax")
    public ResponseEntity<Map<String, Object>> getHallList(@RequestParam(value = "page", defaultValue = "1") int page,
                                                           @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                                                           @RequestParam(value = "companyName", required = false) String companyName) {
        String category = "웨딩홀";

        System.out.println("Page in Controller: " + page);
        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);

            System.out.println("Page in Pagination Object: " + page);
            List<CompanyDto> hallList = companyService.getCompanyList(pagination, companyName, category);

            Map<String, Object> map = new HashMap<>();
            map.put("hallList", hallList);
            map.put("pagination", pagination);
            map.put("totalListCnt", totalListCnt);
            
            return ResponseEntity.ok(map);
        } catch (Exception e) {
            System.err.println("에러 발생: " + e.getMessage());
            e.printStackTrace();
            // 오류 발생 시 500 Internal Server Error 반환
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @PostMapping("/search")
    public ResponseEntity<Map<String, Object>> searchHallList(@RequestParam(value = "page", defaultValue = "1") int page,
                                                              @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                                                              @RequestParam(value = "companyName", required = false) String companyName) {
        String category = "웨딩홀";

        System.out.println("Page in Controller: " + page);
        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);

            System.out.println("RestController - page " + page);
            List<CompanyDto> hallList = companyService.getCompanyList(pagination, companyName, category);

            Map<String, Object> map = new HashMap<>();
            map.put("hallList", hallList);
            map.put("pagination", pagination);
            map.put("totalListCnt", totalListCnt);

            return ResponseEntity.ok(map);
        } catch (Exception e) {
            System.err.println("에러 발생: " + e.getMessage());
            e.printStackTrace();
            // 오류 발생 시 500 Internal Server Error 반환
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @GetMapping(value = "/detail/{companyId}/getCoordinates")
    public ResponseEntity<Map<String, Object>> getCoordinates(@PathVariable("companyId") int companyId) {

        try {
            CompanyDto company = companyService.getCoordinate(companyId);

            Map<String, Object> response = new HashMap<>();
            response.put("company", company);
            response.put("latitude", company.getLatitude());  // 위도
            response.put("longitude", company.getLongitude());  // 경도
            response.put("companyName", company.getCompanyName());

            return ResponseEntity.ok(response);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null); // 업체가 없는 경우
        }
    }

    // 예약 가능한 날짜 데이터 불러오기
    @GetMapping("/getAvailableHallDate")
    public ResponseEntity<List<CompanyScheduleDto>> getAvailableDate(@RequestParam int companyId) {

        List<CompanyScheduleDto> availableHallDate = companyService.getAvailableDateList(companyId);
        System.out.println("getAvailableDates = " + availableHallDate);

        // 데이터가 없을 경우 빈 배열 반환
        return new ResponseEntity<>(availableHallDate != null ? availableHallDate : new ArrayList<>(), HttpStatus.OK);
    }

    // 예약 가능한 시간 데이터 불러오기
    @GetMapping("/getAvailableHallTime")
    public ResponseEntity<List<CompanyScheduleDto>> getAvailableTime(@RequestParam int companyId, @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd")Date date) {

        System.out.println("companyId = " + companyId + "  date " +date);
        List<CompanyScheduleDto> availableTime = companyService.getAvailableTimeList(companyId, date);
        System.out.println("getAvailableTime = " + availableTime);
        if (availableTime.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(availableTime, HttpStatus.OK);
    }
}
