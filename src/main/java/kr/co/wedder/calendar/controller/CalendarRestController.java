package kr.co.wedder.calendar.controller;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.calendar.service.CalendarService;
import kr.co.wedder.mypage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("/calendar")
public class CalendarRestController {
    @Autowired
    MyPageService myPageService;
    @Autowired
    CalendarService calendarService;
    @GetMapping("/test")
    public List<String> getItems(){
        return Arrays.asList("item1","item2","item3");
    }
    @PostMapping("/send2")
    public CompanyScheduleDto CSDto(@RequestBody CompanyScheduleDto scheduleDto){
        Date date=new Date(2011-1900, Calendar.MARCH, 5+1);
        //Date(원하는년도-1900 ,원하는 달 -1,원하는 일+1);
        System.out.println("scheduleDto="+scheduleDto);
        scheduleDto.setScheduleId(4);
        scheduleDto.setCompanyId(4);
        scheduleDto.setCompanyName("test용");
        scheduleDto.setDate(date);
        scheduleDto.setTime("11:00");

        return scheduleDto;
    }
    @PostMapping("/list/{year}-{month}")
    public ResponseEntity<Map<String,Object>> getCalendarData(@PathVariable int year, @PathVariable int month) {

        try {
            Map<String ,Object> map = new HashMap<String ,Object>();

            map.put("year",year);
            map.put("month",month);
            return new ResponseEntity<>(map, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @PostMapping("/list")
    public ResponseEntity<Map<String,Object>> list(@RequestBody  Map<String, Object> params) {
        try {
            // 요청에서 넘어온 year, month 값을 받음
            int year = (int)params.get("year");
            int month = (int)params.get("month")+1;

            System.out.println("Year:"+year+",Month:"+month);

            // 성공적으로 받은 값을 리턴
            Map<String,Object> responseData  = new HashMap<>();

            responseData.put("year",year);
            responseData.put("month",month);
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            System.out.println(responseData);
            return new ResponseEntity<Map<String,Object>>(responseData,headers,HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }



    @PostMapping("/test")
    public ResponseEntity<String> testEndpoint(@RequestBody Map<String, Object> data) {
        // 받은 데이터 처리
        String name = (String) data.get("name");
        int age = (int) data.get("age");
        String test = (String) data.get("test");
        String year = (String) data.get("year");
        String month = (String) data.get("month");


        System.out.println(
                "Name: "  + name +
                ", Age: " + age+
                ",Test: " +test+
                ",Year: " +year+
                ",Month"  +month);
        return ResponseEntity.ok("Received data: " +
                "Name = " + name +
                ", Age = " + age +
                ",Test = " + test +
                ",Year = " + year +
                ",Month = " + month
        );
    }


}
