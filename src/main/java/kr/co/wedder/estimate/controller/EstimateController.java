package kr.co.wedder.estimate.controller;

import kr.co.wedder.estimate.domain.EstimateDto;
import kr.co.wedder.estimate.service.EstimateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
}