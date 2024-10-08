package kr.co.wedder.mypage.controller;

import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/mypage")
public class MyPageRestController {

    @Autowired
    private MyPageService myPageService;

    @PostMapping("/mypayment")
    public List<Map<String,Object>> postMyPayment(@RequestParam(value = "order_name",required = false)String order_name, @SessionAttribute("id") String id, Integer customerId) throws Exception {
        /*customerid를 찾는 함수 참조*/
        customerId=SearchCustomerId(id,customerId);

        return myPageService.searchMyPayment(customerId, order_name);
    }
    @GetMapping("/calendar/events")
    public List<Map<String,Object>> getCalendarEvents(@SessionAttribute("id") String id, Integer customerId) throws Exception{
        /*customerid를 찾는 함수 참조*/
        customerId=SearchCustomerId(id,customerId);

    return myPageService.getCalendarEvents(customerId);
    }

    
    
    /* 반복되는 method문*/
    /*sesssion 에서 id를 얻어와 customerid 를 찾는 함수*/
    public int SearchCustomerId(String id,Integer customerId ) throws Exception{
        MyPageDTO sessionId=myPageService.customerId(id);
        customerId=sessionId.getCustomerId();
        return customerId;
    }
}
