package kr.co.wedder.payment.controller;

import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.payment.domain.PaymentKeysDto;
import kr.co.wedder.payment.domain.PaymentRequest;
import kr.co.wedder.payment.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/payment")
public class PaymentRestController {

    @Autowired
    PaymentService paymentService;

    @PostMapping("/complete")
    public ResponseEntity<String> paymentComplete(@RequestBody PaymentRequest paymentRequest) {

        System.out.println("PaymentRestController paymentRequest=" + paymentRequest);

        String impUid = paymentRequest.getImpUid();
        boolean validPayment = paymentService.verifyPayment(impUid);

        if (validPayment) {
            System.out.println("payment controller -> service 호출");
            paymentService.savePaymentAndReservationInfo(paymentRequest);
            return ResponseEntity.ok("결제 성공");
        } else {
            // 결제 실패 처리
            System.out.println("payment controller -> service 호출 실패");
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("결제 실패");
        }
    }
}
