package kr.co.wedder.customer.controller;

import kr.co.wedder.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/user")
public class RegisterController {

    @Autowired
    private CustomerService customerService;

    @GetMapping("/register")
    public String loginForm() {
        return "/user/registerForm";
    }
}









