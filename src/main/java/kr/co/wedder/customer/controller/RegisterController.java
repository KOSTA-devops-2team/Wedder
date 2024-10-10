package kr.co.wedder.customer.controller;

import kr.co.wedder.customer.domain.CustomerDto;
import kr.co.wedder.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/customer")
public class RegisterController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/register")
    public String loginForm() {
        return "/customer/registerForm";
    }

    // 회원가입 처리
    @PostMapping("/registerProceed")
    public ResponseEntity<String> customerJoin(@RequestBody CustomerDto customerDTO) {
        try {
            // 회원 가입 처리 로직
            boolean isRegistered = customerService.customerJoin(customerDTO);

            if (isRegistered) {
                return new ResponseEntity<>("Registration successful", HttpStatus.OK);
            } else {
                return new ResponseEntity<>("Registration failed", HttpStatus.BAD_REQUEST);
            }
        } catch (Exception e) {
            return new ResponseEntity<>("An error occurred", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // 아이디 중복 체크
    @PostMapping("/checkId")
    public ResponseEntity<String> checkId(@RequestBody CustomerDto customerDTO) {
        try {
            String id = customerDTO.getId();
            boolean isAvailable = customerService.checkIdAvailability(id);

            if (isAvailable) {
                return new ResponseEntity<>("Available", HttpStatus.OK);
            } else {
                return new ResponseEntity<>("Duplicated", HttpStatus.OK);
            }
        } catch (Exception e) {
            return new ResponseEntity<>("An error occurred", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}