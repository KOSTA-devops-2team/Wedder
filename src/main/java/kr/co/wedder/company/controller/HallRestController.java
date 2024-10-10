package kr.co.wedder.company.controller;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.HallDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.company.domain.SearchItem;
import kr.co.wedder.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController(value = "/")
public class HallRestController {

    @Autowired
    private CompanyService companyService;

    @PostMapping(value = "weddinghall")
    public List<CompanyDto> searchCompany(@RequestParam(value = "companyName", required = false) String companyName) throws Exception {
        String category = "웨딩홀";
        return companyService.searchCompanies(companyName, category);
    }

    @GetMapping(value = "weddinghall/ajax")
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
            // 오류 발생 시 500 Internal Server Error 반환
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
}
