package kr.co.wedder.estimate.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.core.type.TypeReference;
import java.net.URLDecoder;
import kr.co.wedder.estimate.domain.EstimateDto;
import kr.co.wedder.estimate.service.EstimateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/estimate")
public class EstimateController2 {

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
        System.out.println("Makeup List: " + makeupList); // 로그로 데이터 확인
        model.addAttribute("makeupList", makeupList);

        return "estimate/estimateCompany";  // JSP 페이지 반환
    }

    @PostMapping("/updateCompany")
    public ResponseEntity<String> handleEstimate(@RequestBody EstimateDto selectedCompanies) {
        // 처리 로직
        return ResponseEntity.ok("Success");
    }

    // URL을 통해 companyId 값을 전송받고 처리
    @GetMapping("/estimateOption")
    public String showEstimateOptionPage(
            @RequestParam(value = "studioCompanyId", required = false) Integer studioId,
            @RequestParam(value = "dressCompanyId", required = false) Integer dressId,
            @RequestParam(value = "makeupCompanyId", required = false) Integer makeupId,
            Model model
    ) {

        // 스튜디오 정보 가져오기 (특정 스튜디오 ID에 해당하는 정보만)
        if (studioId != null) {
            EstimateDto studioData = estimateService.getStudioById(studioId);
            model.addAttribute("studioData", studioData);
            System.out.println("Studio Data: " + studioData);

        }

        // 드레스 정보 가져오기 (특정 드레스 ID에 해당하는 정보만)
        if (dressId != null) {
            EstimateDto dressData = estimateService.getDressById(dressId);
            model.addAttribute("dressData", dressData);
            System.out.println("Studio Data: " + dressData);

        }

        // 메이크업 정보 가져오기 (특정 메이크업 ID에 해당하는 정보만)
        if (makeupId != null) {
            EstimateDto makeupData = estimateService.getMakeupById(makeupId);
            model.addAttribute("makeupData", makeupData);
            System.out.println("Studio Data: " + makeupData);
        }

        // 옵션 데이터를 담을 맵
        Map<String, List<EstimateDto>> companyOptions = new HashMap<>();

        // 스튜디오 옵션 가져오기 (studioId가 null이 아닐 때만)
        if (studioId != null) {
            List<EstimateDto> studioOptions = estimateService.getStudioOptionsByCompanyId(studioId);
            companyOptions.put("studio", studioOptions);
        }

        // 드레스 옵션 가져오기 (dressId가 null이 아닐 때만)
        if (dressId != null) {
            List<EstimateDto> dressOptions = estimateService.getDressOptionsByCompanyId(dressId);
            companyOptions.put("dress", dressOptions);
        }

        // 메이크업 옵션 가져오기 (makeupId가 null이 아닐 때만)
        if (makeupId != null) {
            List<EstimateDto> makeupOptions = estimateService.getMakeupOptionsByCompanyId(makeupId);
            companyOptions.put("makeup", makeupOptions);
        }

        model.addAttribute("companyOptions", companyOptions);

        return "estimate/estimateOption";
    }
    // 선택한 옵션을 저장하는 맵 (옵션은 각 카테고리별로 관리: 스튜디오, 드레스, 메이크업)
    private Map<String, List<Map<String, Object>>> selectedOptions = new HashMap<>();

    public EstimateController() {
        // 선택된 옵션들을 빈 리스트로 초기화
        selectedOptions.put("studio", new ArrayList<>());
        selectedOptions.put("dress", new ArrayList<>());
        selectedOptions.put("makeup", new ArrayList<>());
    }

    @PostMapping("/updateOption")
    public ResponseEntity<Map<String, List<Map<String, Object>>>> updateOption(
            @RequestBody Map<String, Object> requestData) {

        String category = (String) requestData.get("category");
        String optionName = (String) requestData.get("optionName");
        String optionDescription = (String) requestData.get("optionDescription");

        // Null check for category and optionName
        if (category == null || optionName == null) {
            return ResponseEntity.badRequest().body(null); // 혹은 적절한 에러 처리
        }

        Integer optionPrice = null;
        if (requestData.get("optionPrice") instanceof Integer) {
            optionPrice = (Integer) requestData.get("optionPrice");
        } else if (requestData.get("optionPrice") instanceof String) {
            optionPrice = Integer.parseInt((String) requestData.get("optionPrice"));
        }

        // Null check for optionPrice
        if (optionPrice == null) {
            return ResponseEntity.badRequest().body(null); // 혹은 적절한 에러 처리
        }

        // 카테고리별로 선택된 옵션 목록 가져오기 (없으면 빈 리스트를 반환)
        List<Map<String, Object>> options = selectedOptions.getOrDefault(category, new ArrayList<>());

        // 선택된 옵션이 이미 있는지 확인
        boolean exists = options.stream().anyMatch(option -> optionName.equals(option.get("name")));

        if (exists) {
            // 이미 선택된 옵션이 있으면 제거
            options.removeIf(option -> optionName.equals(option.get("name")));
        } else {
            // 새로 선택한 옵션이면 추가
            Map<String, Object> newOption = new HashMap<>();
            newOption.put("name", optionName);
            newOption.put("price", optionPrice);
            newOption.put("optionDescription", optionDescription);
            options.add(newOption);
        }

        // 선택된 옵션 목록을 맵에 다시 저장 (새로운 카테고리가 있을 경우 대비)
        selectedOptions.put(category, options);

        // 선택된 옵션 목록을 응답으로 반환
        Map<String, List<Map<String, Object>>> response = new HashMap<>();
        response.put(category, options);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/estimateFinal")
    public String showEstimateFinal(
            @RequestParam(value = "studioName", required = false) String studioName,
            @RequestParam(value = "studioPrice", required = false) Integer studioPrice,
            @RequestParam(value = "studioImgUrl", required = false) String studioImgUrl,
            @RequestParam(value = "dressName", required = false) String dressName,
            @RequestParam(value = "dressPrice", required = false) Integer dressPrice,
            @RequestParam(value = "dressImgUrl", required = false) String dressImgUrl,
            @RequestParam(value = "makeupName", required = false) String makeupName,
            @RequestParam(value = "makeupPrice", required = false) Integer makeupPrice,
            @RequestParam(value = "makeupImgUrl", required = false) String makeupImgUrl,
            @RequestParam(value = "options", required = false) String optionsJSON,
            Model model) {

        // 기본 옵션 JSP에 전달
        model.addAttribute("studioName", studioName);
        model.addAttribute("studioPrice", studioPrice);
        model.addAttribute("studioImgUrl", studioImgUrl);
        model.addAttribute("dressName", dressName);
        model.addAttribute("dressPrice", dressPrice);
        model.addAttribute("dressImgUrl", dressImgUrl);
        model.addAttribute("makeupName", makeupName);
        model.addAttribute("makeupPrice", makeupPrice);
        model.addAttribute("makeupImgUrl", makeupImgUrl);

        // JSON을 Map으로 변환하여 옵션 처리
        ObjectMapper mapper = new ObjectMapper();
        Map<String, List<Map<String, Object>>> selectedOptions = new HashMap<>();

        try {
            // JSON 문자열을 Java Map 형태로 변환
            selectedOptions = mapper.readValue(URLDecoder.decode(optionsJSON, "UTF-8"),
                    new TypeReference<>() {
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("selectedOptions", selectedOptions);

        return "estimate/estimateTotal";
    }
}