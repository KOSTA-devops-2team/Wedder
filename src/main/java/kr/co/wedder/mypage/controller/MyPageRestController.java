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
        System.out.println("id= "+id);
        MyPageDTO sessionId=myPageService.customerId(id);
        customerId = sessionId.getCustomerId();

        System.out.println(myPageService.searchMyPayment(customerId, order_name).get(customerId));
        
        return myPageService.searchMyPayment(customerId, order_name);
    }
}
