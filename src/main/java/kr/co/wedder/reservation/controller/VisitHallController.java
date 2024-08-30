package kr.co.wedder.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VisitHallController {

    @RequestMapping("/visitSt1")
    public String visitSt1(){ return "reservation/hall/visitSt1"; }

    @RequestMapping("/visitSt2")
    public String visitSt2(){ return "reservation/hall/visitSt2"; }

    @RequestMapping("/visitSt3")
    public String visitSt3(){ return "reservation/hall/visitSt3"; }
}
