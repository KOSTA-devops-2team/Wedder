package kr.co.wedder.company.controller;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping(value = "/")
public class SDMRestController {

    @Autowired
    private CompanyService companyService;

//    @PostMapping(value = "studio")
//    public List<CompanyDto> searchCompany(@RequestParam(value = "companyName", required = false) String companyName) throws Exception {
//        String category = "스튜디오";
//        return companyService.searchCompanies(companyName, category);
//    }

    //스튜디오
    @GetMapping(value = "studio/page")
    public ResponseEntity<Map<String, Object>> getStudioList(@RequestParam(value = "page", defaultValue = "1") int page,
                                                             @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                                                             @RequestParam(value = "companyName", required = false) String companyName) {
        String category = "스튜디오";

        try {
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);

            List<CompanyDto> studioList = companyService.getCompanyList(pagination, companyName, category);
            Map<String, Object> map = new HashMap<>();
            map.put("studioList", studioList);
            map.put("pagination", pagination);
            map.put("totalListCnt", totalListCnt);

            System.out.println("Studio List: " + studioList);
            System.out.println("Total List Count: " + totalListCnt);

            return ResponseEntity.ok(map);
        } catch (Exception e) {
            // 오류 발생 시 500 Internal Server Error 반환
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @PostMapping(value = "studio/search")
    public ResponseEntity<Map<String, Object>> searchStudioList(@RequestParam(value = "page", defaultValue = "1") int page,
                                                                @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                                                                @RequestParam(value = "companyName", required = false) String companyName) {
        String category = "스튜디오";

        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);

            System.out.println("RestController - page " + page);
            List<CompanyDto> studioList = companyService.getCompanyList(pagination, companyName, category);

            Map<String, Object> map = new HashMap<>();
            map.put("studioList", studioList);
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

    @GetMapping(value = "{category}/detail/{companyId}/getCoordinates")
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
    @GetMapping("{category}/getAvailableDate")
    public ResponseEntity<List<CompanyScheduleDto>> getAvailableDate(@RequestParam int companyId) {

        List<CompanyScheduleDto> availableDate = companyService.getAvailableDateList(companyId);
        System.out.println("getAvailableDates = " + availableDate);

        // 데이터가 없을 경우 빈 배열 반환
        return new ResponseEntity<>(availableDate != null ? availableDate : new ArrayList<>(), HttpStatus.OK);
    }

    // 예약 가능한 시간 데이터 불러오기
    @GetMapping("{category}/getAvailableTime")
    public ResponseEntity<List<CompanyScheduleDto>> getAvailableTime(@RequestParam int companyId, @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date date) {

        System.out.println("companyId = " + companyId + "  date " +date);
        List<CompanyScheduleDto> availableTime = companyService.getAvailableTimeList(companyId, date);
        System.out.println("getAvailableTime = " + availableTime);
        if (availableTime.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(availableTime, HttpStatus.OK);
    }


    //드레스
    @GetMapping(value = "dress/page")
    public ResponseEntity<Map<String, Object>> getDressList(@RequestParam(value = "page", defaultValue = "1") int page,
                                                            @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                                                            @RequestParam(value = "companyName", required = false) String companyName) {
        String category = "드레스";

        try {
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);

            List<CompanyDto> dressList = companyService.getCompanyList(pagination, companyName, category);
            Map<String, Object> map = new HashMap<>();
            map.put("dressList", dressList);
            map.put("pagination", pagination);
            map.put("totalListCnt", totalListCnt);

            System.out.println("Dress List: " + dressList);
            System.out.println("Total List Count: " + totalListCnt);

            return ResponseEntity.ok(map);
        } catch (Exception e) {
            // 오류 발생 시 500 Internal Server Error 반환
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @PostMapping(value = "dress/search")
    public ResponseEntity<Map<String, Object>> searchDressList(@RequestParam(value = "page", defaultValue = "1") int page,
                                                               @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                                                               @RequestParam(value = "companyName", required = false) String companyName) {
        String category = "드레스";

        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);

            System.out.println("RestController - page " + page);
            List<CompanyDto> dressList = companyService.getCompanyList(pagination, companyName, category);

            Map<String, Object> map = new HashMap<>();
            map.put("dressList", dressList);
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

    // 메이크업
    @GetMapping(value = "makeup/page")
    public ResponseEntity<Map<String, Object>> getMakeupList(@RequestParam(value = "page", defaultValue = "1") int page,
                                                             @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                                                             @RequestParam(value = "companyName", required = false) String companyName) {
        String category = "메이크업";

        try {
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);

            List<CompanyDto> makeupList = companyService.getCompanyList(pagination, companyName, category);
            Map<String, Object> map = new HashMap<>();
            map.put("makeupList", makeupList);
            map.put("pagination", pagination);
            map.put("totalListCnt", totalListCnt);

            System.out.println("Makeup List: " + makeupList);
            System.out.println("Total List Count: " + totalListCnt);

            return ResponseEntity.ok(map);
        } catch (Exception e) {
            // 오류 발생 시 500 Internal Server Error 반환
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @PostMapping(value = "makeup/search")
    public ResponseEntity<Map<String, Object>> searchMakeupList(@RequestParam(value = "page", defaultValue = "1") int page,
                                                                @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                                                                @RequestParam(value = "companyName", required = false) String companyName) {
        String category = "메이크업";

        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);

            System.out.println("RestController - page " + page);
            List<CompanyDto> makeupList = companyService.getCompanyList(pagination, companyName, category);

            Map<String, Object> map = new HashMap<>();
            map.put("makeupList", makeupList);
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
}