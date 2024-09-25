package kr.co.wedder.estimate.controller;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/estimate")
public class EstimateController {

    private final CompanyService companyService;

    @Autowired
    public EstimateController(CompanyService companyService) {
        this.companyService = companyService;
    }

    @GetMapping("")
    public String estimate(Model model) {return "estimate/estimateCompany"; }

    @GetMapping("/estimateCompany")
    public String showEstimatePage(Model model) {
        // 스튜디오, 드레스, 메이크업 리스트 가져오기
        List<CompanyDto> studioList = companyService.getStudioList();
        List<CompanyDto> dressList = companyService.getDressList();
        List<CompanyDto> makeupList = companyService.getMakeupList();

        // 데이터가 제대로 들어오는지 로그로 확인
        System.out.println("Company List: " + studioList);

        // 모델에 리스트를 추가
        model.addAttribute("studioList", studioList);
        model.addAttribute("dressList", dressList);
        model.addAttribute("makeupList", makeupList);

        return "estimate/estimateCompany";  // JSP 페이지 반환
    }

    @PostMapping("/updateSelectedCompanies")
    public ResponseEntity<String> updateSelectedCompanies(@RequestBody Map<String, Map<String, Object>> selectedCompanies) {
        // 선택된 스튜디오, 드레스, 메이크업을 처리
        System.out.println("선택된 회사 목록이 서버로 전달되었습니다: " + selectedCompanies);

        // 여기서 선택된 목록을 세션에 저장하거나 DB 업데이트하는 로직을 추가할 수 있습니다.
        // 예: HttpSession session = request.getSession();
        // session.setAttribute("selectedCompanies", selectedCompanies);

        return ResponseEntity.ok("선택된 회사 목록이 업데이트되었습니다.");
    }

//    @RequestMapping(value = "/estimateCompany")
//    public String estimateCompany() {
//        return "estimate/estimateCompany";
//    }
//    @RequestMapping(value="/estimateOption")
//    public String estimateDetail() {
//        return "estimate/estimateOption";
//    }
//    @RequestMapping(value = "/estimateTotal")
//    public String estimateFinal() {
//        return "estimate/estimateTotal";
//    }
    // 선택된 회사 목록을 처리하는 메서드
}