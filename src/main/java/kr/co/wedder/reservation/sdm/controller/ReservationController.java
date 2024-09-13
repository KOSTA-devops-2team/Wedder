package kr.co.wedder.reservation.sdm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class ReservationController {

    @GetMapping("reservationOption")
    public String reservationOption() { return "reservation/sdm/reservationOption"; }
    @GetMapping("reservationDate")
    public String reservationDate() { return "reservation/sdm/reservationDate"; }
    @GetMapping("reservationPayment")
    public String reservationPayment() { return "reservation/sdm/reservationPayment"; }
}
