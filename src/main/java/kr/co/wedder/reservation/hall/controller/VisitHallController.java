package kr.co.wedder.reservation.hall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class VisitHallController {

    @GetMapping("visitSt1")
    public String visitSt1(){ return "reservation/hall/visitSt1"; }

    @GetMapping("visitSt2")
    public String visitSt2(){ return "reservation/hall/visitSt2"; }

    @GetMapping("visitSt3")
    public String visitSt3(){ return "reservation/hall/visitSt3"; }
}
