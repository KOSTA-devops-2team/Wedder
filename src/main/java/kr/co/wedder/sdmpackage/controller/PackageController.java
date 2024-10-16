package kr.co.wedder.sdmpackage.controller;

import kr.co.wedder.payment.service.PaymentService;
import kr.co.wedder.payment.domain.PaymentKeysDto;
import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import kr.co.wedder.sdmpackage.service.PackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/package")
public class PackageController {

    @Autowired
    PackageService packageService;
    @Autowired
    private PaymentKeysDto paymentKeys;
    @Autowired
    PaymentService paymentService;


    @GetMapping("")
    public String packageMain() {
        return "package/packageMain";
    }

    @GetMapping(value = "/recommend")
    public String getAllPackages(Model model) {

        List<PackageDetailDto> allPackages = packageService.getAllPackages();
        System.out.println("allPackages = " + allPackages);

        // 패키지 가격 계산
        for (PackageDetailDto detail : allPackages) {
            System.out.println("detail = " + detail);

            // 각 패키지의 기본 가격을 합산
            int originalPrice = detail.getStudioBasicPrice() + detail.getDressBasicPrice() + detail.getMakeupBasicPrice();
            detail.setOriginalPrice(originalPrice);

            int discountRate = allPackages.get(0).getDiscountRate();  // 할인율
            int discountPrice = (originalPrice * discountRate) / 100;  // 할인된 금액 계산
            int finalPrice = originalPrice - discountPrice;  // 최종 혜택가 계산
            detail.setFinalPrice(finalPrice);
            System.out.println("originalPrice" + originalPrice);
            System.out.println("finalPrice" + finalPrice);
        }

        model.addAttribute("AllPackages", allPackages);

        // best package 라인
        List<PackageDetailDto> bestPackages = packageService.getBestPackages();
        model.addAttribute("BestPackages", bestPackages);

        //MD Pick 라인
        List<PackageDetailDto> mdPickPackages = packageService.getMDPickPackages();
        model.addAttribute("MDPickPackages", mdPickPackages);

        return "package/packageRecommend";
    }


    // 패키지 디테일
    @GetMapping(value = "/{packageId}/detail")
    public String packageDetail(@PathVariable("packageId") int packageId, Model model) {

        System.out.println("Received packageId: " + packageId);

        // 패키지 상세 정보를 가져옴
        List<PackageDetailDto> packageDetails = packageService.getPackageDetail(packageId);

        // 리스트가 비어 있는지 확인
        if (packageDetails == null || packageDetails.isEmpty()) {

            return "package/packageRecommend";
        }

        // 패키지 가격 계산
        int originalPrice = 0;
        for (PackageDetailDto detail : packageDetails) {
            originalPrice += detail.getBasicPrice();  // 3개 업체 basic_price의 합
        }

        int discountRate = packageDetails.get(0).getDiscountRate();  // 할인율
        int discountPrice = (originalPrice * discountRate) / 100;  // 할인된 금액 계산
        int finalPrice = originalPrice - discountPrice;  // 최종 혜택가 계산

        model.addAttribute("packagePrice", originalPrice);
        model.addAttribute("discountPrice", discountPrice);
        model.addAttribute("finalPrice", finalPrice);
        model.addAttribute("packageDetails", packageDetails);
        model.addAttribute("paymentKeys", paymentKeys);
        System.out.println("Kakao Pay Key: " + paymentKeys.getKakaoPayKey());

        return "package/packageDetail";
    }
}
