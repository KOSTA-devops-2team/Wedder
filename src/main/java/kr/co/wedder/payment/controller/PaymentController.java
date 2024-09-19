package kr.co.wedder.payment.controller;

import kr.co.wedder.payment.domain.PaymentKeysDto;
import kr.co.wedder.payment.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/payments")
public class PaymentController {


    @Autowired
    private PaymentKeysDto paymentKeys;

    @Autowired
    PaymentService paymentService;

    // 결제 정보를 검증하고 DB에 결제 상태를 업데이트
    @PostMapping("/complete")
    public ResponseEntity<?> paymentComplete(@RequestParam String imp_uid) {
        // 결제 검증 로직 추가 (Iamport API 사용하여 결제 상태 확인)
        boolean validPayment = paymentService.verifyPayment(imp_uid);

        if (validPayment) {
            // 결제가 성공하면 DB에 결제 정보 저장
            return ResponseEntity.ok().body("결제 성공");
        } else {
            // 결제 실패 처리
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("결제 실패");
        }
    }
}
