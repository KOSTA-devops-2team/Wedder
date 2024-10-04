package kr.co.wedder.estimate.controller;

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
import java.util.HashMap;
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

        // 선택된 업체가 없으면 다시 견적 페이지로 리디렉트
        if (selectedCompanies == null || selectedCompanies.isEmpty()) {
            return "redirect:/estimate";
        }

        // 각 카테고리별 회사 정보로부터 옵션 데이터를 가져오기
        Map<String, List<EstimateDto>> companyOptions = new HashMap<>();

        // 스튜디오 옵션 가져오기
        if (selectedCompanies.containsKey("studio") && selectedCompanies.get("studio").get("companyId") != null) {
            int studioId = (Integer) selectedCompanies.get("studio").get("companyId");
            List<EstimateDto> studioOptions = estimateService.getOptionsByCompanyId(studioId, "studio");
            companyOptions.put("studio", studioOptions);
        }

        // 드레스 옵션 가져오기
        if (selectedCompanies.containsKey("dress") && selectedCompanies.get("dress").get("companyId") != null) {
            int dressId = (Integer) selectedCompanies.get("dress").get("companyId");
            List<EstimateDto> dressOptions = estimateService.getOptionsByCompanyId(dressId, "dress");
            companyOptions.put("dress", dressOptions);
        }

        // 메이크업 옵션 가져오기
        if (selectedCompanies.containsKey("makeup") && selectedCompanies.get("makeup").get("companyId") != null) {
            int makeupId = (Integer) selectedCompanies.get("makeup").get("companyId");
            List<EstimateDto> makeupOptions = estimateService.getOptionsByCompanyId(makeupId, "makeup");
            companyOptions.put("makeup", makeupOptions);
        }

        // 선택된 업체 및 옵션 정보를 모델에 추가하여 JSP로 전달
        model.addAttribute("selectedCompanies", selectedCompanies);
        model.addAttribute("companyOptions", companyOptions);

        return "estimate/estimateOption"; // JSP 파일 반환
    }

    // 선택한 옵션을 세션에 저장하는 코드
    @PostMapping("/selectOption")
    public ResponseEntity<String> selectOption(@RequestBody Map<String, Object> selectedOption, HttpSession session) {
        // 세션에서 이미 저장된 옵션 정보를 가져옴
        Map<String, List<Map<String, Object>>> selectedOptions = (Map<String, List<Map<String, Object>>>) session.getAttribute("selectedOptions");

        // 만약 세션에 선택된 옵션 정보가 없다면 새로 생성
        if (selectedOptions == null) {
            selectedOptions = new HashMap<>();
        }

        String category = (String) selectedOption.get("category");
        if (!selectedOptions.containsKey(category)) {
            selectedOptions.put(category, new ArrayList<>());
        }

        // 선택한 옵션을 해당 카테고리에 추가
        selectedOptions.get(category).add(selectedOption);

        // 세션에 옵션 정보 저장
        session.setAttribute("selectedOptions", selectedOptions);

        return ResponseEntity.ok("옵션이 성공적으로 선택되었습니다.");
    }

}