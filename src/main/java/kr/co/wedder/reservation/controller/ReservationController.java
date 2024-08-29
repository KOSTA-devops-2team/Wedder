package kr.co.wedder.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {

    @RequestMapping("/reservationOption")
    public String reservationOption() { return "reservation/sdm/reservationOption"; }
    @RequestMapping("/reservationDate")
    public String reservationDate() { return "reservation/sdm/reservationDate"; }
    @RequestMapping("/reservationPayment")
    public String reservationPayment() { return "reservation/sdm/reservationPayment"; }
}
