package kr.co.wedder.estimate.controller;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.service.CompanyService;
import kr.co.wedder.estimate.domain.EstimateDto;
import kr.co.wedder.estimate.service.EstimateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/estimate")
public class EstimateController {

    @Autowired
    private EstimateService estimateService;

    @GetMapping("")
    public String showEstimatePage(Model model) {
        // 스튜디오, 드레스, 메이크업 리스트 가져오기
        List<EstimateDto> studioList = estimateService.getStudioList();
        System.out.println("Studio List: " + studioList); // 로그로 데이터 확인
        model.addAttribute("studioList", studioList);

        List<EstimateDto> dressList = estimateService.getDressList();
        System.out.println("Dress List: " + dressList); // 로그로 데이터 확인
        model.addAttribute("dressList", dressList);

        List<EstimateDto> makeupList = estimateService.getMakeupList();
        System.out.println("Makeup List: " + makeupList); // 로그로 데이터 확인S
        model.addAttribute("makeupList", makeupList);

        return "estimate/estimateCompany";  // JSP 페이지 반환
    }

//    // Ajax로 선택된 회사 목록 업데이트
//    @PostMapping("/updateSelectedCompanies")
//    public ResponseEntity<String> updateSelectedCompanies(@RequestBody Map<String, Map<String, Object>> selectedCompanies) {
//
//        // selectedCompanies는 각 카테고리별로 선택된 회사 정보가 들어있는 Map
//        if (selectedCompanies == null || selectedCompanies.isEmpty()) {
//            return ResponseEntity.badRequest().body("잘못된 데이터");
//        }
//
//        // 선택된 회사 정보를 처리 (로그 출력, DB 저장 등)
//        selectedCompanies.forEach((category, companyData) -> {
//            if (companyData != null) {
//                Integer id = (Integer) companyData.get("id");
//                String name = (String) companyData.get("name");
//                Integer basicPrice = (Integer) companyData.get("basicPrice");
//
//                // DB 저장 로직 또는 기타 처리 로직
//                System.out.printf("Category: %s, ID: %d, Name: %s, Basic Price: %d%n", category, id, name, basicPrice);
//            }
//        });
//
//        // 처리 후 성공 응답 반환
//        return ResponseEntity.ok("선택된 목록이 성공적으로 업데이트되었습니다.");
//    }

    @PostMapping("/updateSelectedCompanies")
    public ResponseEntity<String> updateSelectedCompanies(@RequestBody Map<String, Map<String, Object>> selectedCompanies, HttpSession session) {

        if (selectedCompanies == null || selectedCompanies.isEmpty()) {
            return ResponseEntity.badRequest().body("잘못된 데이터");
        }

        // 선택된 업체 정보를 세션에 저장
        session.setAttribute("selectedCompanies", selectedCompanies);

        return ResponseEntity.ok("선택된 목록이 성공적으로 업데이트되었습니다.");
    }

    @GetMapping("/estimateOption")
    public String showEstimateOptionPage(HttpSession session, Model model) {
        // 세션에서 선택된 업체 목록을 가져옴
        Map<String, Map<String, Object>> selectedCompanies = (Map<String, Map<String, Object>>) session.getAttribute("selectedCompanies");

        // 선택한 업체가 없을 경우 처리
        if (selectedCompanies == null || selectedCompanies.isEmpty()) {
            return "redirect:/estimate";  // 선택된 업체가 없으면 다시 견적 페이지로 리다이렉트
        }

        // 선택된 업체 목록을 모델에 추가하여 뷰로 전달
        model.addAttribute("selectedCompanies", selectedCompanies);

        // estimateOption.jsp 페이지로 이동
        return "estimate/estimateOption"; // JSP 파일의 경로를 반환
    }
}