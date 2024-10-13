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

    @PostMapping(value = "")
    public List<CompanyDto> searchCompany(@RequestParam(value = "companyName", required = false) String companyName) throws Exception {
        String category = "웨딩홀";
        return companyService.searchCompanies(companyName, category);
    }

    @GetMapping(value = "/ajax")
    public ResponseEntity<Map<String, Object>> getwhallList(@RequestParam(value = "page", defaultValue = "1") int page,
                                                            @RequestParam(value = "pageSize", defaultValue = "9") int pageSize) {
        String category = "웨딩홀";

        System.out.println("Page in Controller: " + page);
        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(category);
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);

            System.out.println("Page in Pagination Object: " + page);
            List<CompanyDto> hallList = companyService.getHallList(pagination, category);

            Map<String, Object> companyList = new HashMap<>();
            companyList.put("hallList", hallList);
            companyList.put("pagination", pagination);
            companyList.put("totalListCnt", totalListCnt);

            System.out.println("Hall List: " + hallList);
            System.out.println("Total List Count: " + totalListCnt);
            
            return ResponseEntity.ok(companyList);
        } catch (Exception e) {
            // 예외 발생 시 로그 남기기
            System.err.println("에러 발생: " + e.getMessage());  // 콘솔에 에러 메시지 출력
            e.printStackTrace();  // 예외 전체 스택 트레이스 출력
            // 오류 발생 시 500 Internal Server Error 반환
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    // 예약 가능한 날짜 데이터 불러오기
    @GetMapping("/getAvailableHallDate")
    public ResponseEntity<List<CompanyScheduleDto>> getAvailableHallDate(@RequestParam int companyId) {

        List<CompanyScheduleDto> availableHallDate = companyService.getAvailableHallDate(companyId);
        System.out.println("getAvailableDates = " + availableHallDate);

        // 데이터가 없을 경우 빈 배열 반환
        return new ResponseEntity<>(availableHallDate != null ? availableHallDate : new ArrayList<>(), HttpStatus.OK);
    }

    // 예약 가능한 시간 데이터 불러오기
    @GetMapping("/getAvailableHallTime")
    public ResponseEntity<List<CompanyScheduleDto>> getAvailableHallTime(@RequestParam String companyName, @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd")Date date) {

        List<CompanyScheduleDto> availableHallTime = companyService.getAvailableHallTime(companyName, date);
        System.out.println("getAvailableTimes = " + availableHallTime);
        if (availableHallTime.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(availableHallTime, HttpStatus.OK);
    }
}
