package kr.co.wedder.payment.controller;

import kr.co.wedder.payment.domain.PaymentKeysDto;
import kr.co.wedder.payment.domain.PaymentRequest;
import kr.co.wedder.payment.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/payment")
public class PaymentRestController {

    @Autowired
    private PaymentKeysDto paymentKeys;

    @Autowired
    PaymentService paymentService;

    @PostMapping("/complete")
    public ResponseEntity<String> paymentComplete(@RequestBody PaymentRequest paymentRequest) {
        System.out.println("PaymentController.paymentComplete: " + paymentRequest);
        System.out.println("Received customerEmail: " + paymentRequest.getCustomerEmail());
        System.out.println("Received customerName: " + paymentRequest.getCustomerName());

        String impUid = paymentRequest.getImpUid();
        System.out.println("PaymentController: impUid = " + impUid);

        boolean validPayment = paymentService.verifyPayment(impUid);

        System.out.println("PaymentController.validPayment: " + validPayment);

        if (validPayment) {
            paymentService.savePaymentInfo(paymentRequest);
            return ResponseEntity.ok("결제가 성공적으로 처리되었습니다.");
        } else {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("결제 실패");
        }
    }


}
