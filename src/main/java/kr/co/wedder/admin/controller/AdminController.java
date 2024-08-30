package kr.co.wedder.admin.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @GetMapping("/main")
    public String adminMain() {

        return "admin/adminMain";
    }

    @GetMapping("/customers")
    public String customerList() {

        return "admin/customerList";
    }

    @GetMapping("/customers/detail")
    public String customerDetail() {

        return "admin/customerDetail";
    }
}
