package kr.co.wedder.company.controller;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/")
public class SDMRestController {

    @Autowired
    private CompanyService companyService;

    @PostMapping(value = "studio")
    public List<CompanyDto> searchCompany(@RequestParam(value = "companyName", required = false) String companyName) throws Exception {
        String category = "스튜디오";
        return companyService.searchCompanies(companyName, category);
    }

//    @GetMapping(value = "/studio/ajax")
//    public ResponseEntity<Map<String, Object>> getstudioList(@RequestParam(value = "page", defaultValue = "1") int page,
//                                                             @RequestParam(value = "pageSize", defaultValue = "9") int pageSize) {
//        String category = "스튜디오";
//
//        try {
//            int totalListCnt = companyService.getCompanyListCnt(category);
//            Pagination pagination = new Pagination();
//            pagination.doPaging(page, pageSize, totalListCnt);
//
//            List<CompanyDto> studioList = companyService.getStudioList(pagination, category);
//            Map<String, Object> companyList = new HashMap<>();
//            companyList.put("studioList", studioList);
//            companyList.put("pagination", pagination);
//            companyList.put("totalListCnt", totalListCnt);
//
//            System.out.println("Studio List: " + studioList);
//            System.out.println("Total List Count: " + totalListCnt);
//
//            return ResponseEntity.ok(companyList);
//        } catch (Exception e) {
//            // 오류 발생 시 500 Internal Server Error 반환
//            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
//        }
//    }
}
