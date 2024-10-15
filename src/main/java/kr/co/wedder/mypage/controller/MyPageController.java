package kr.co.wedder.mypage.controller;

import java.util.*;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import kr.co.wedder.mypage.service.MyPageService;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	MyPageService myPageService;
	
	@GetMapping("/mypage")
	public String mypage(@SessionAttribute("id") String id, Integer customerId, Model m) {
		try {
			System.out.println("id : "+ id);
			MyPageDTO sessionId=myPageService.customerId(id);

			// id에서 받아오는  customer_id
			customerId=sessionId.getCustomerId();
			System.out.println(customerId);
			Integer company_id=1;
			Integer reservation_id =1;
			Integer hall_id = 1;
			//새로운 맵 생성  파리미터 타입용
			Map<String, Object> visitCriteriaMap =new HashMap<String, Object>();
			Map<String, Object> companyDtoMap =new HashMap<String, Object>();
			
			// 각 테이블 들 들어가는 기능
			MyPageDTO myPageDTO = myPageService.customerRead(customerId);
			CompanyDto companyDto =myPageService.companyRead(company_id);
			ReservationDto reservationDto=myPageService.reservationRead(reservation_id);
			HistoryDto historyDto = myPageService.historyRead(customerId);
			HallInfoDto hallInfoDto = myPageService.hallInfoRead(hall_id);
			
			// 모델 속성 추가
			m.addAttribute("myPageDTO",myPageDTO);
			m.addAttribute("companyDto",companyDto);
			m.addAttribute("reservationDto",reservationDto);
			m.addAttribute("historyDto",historyDto);
			m.addAttribute("hallInfoDto"+hallInfoDto);
			// 
			VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDTO, reservationDto, historyDto);
			visitCriteriaMap.put("companyId", (Integer) visitCriteria.getCompanyDto().getCompanyId());
			visitCriteriaMap.put("customerId", customerId);
			m.addAttribute("visitCriteria",visitCriteria);
			
			List<VisitCriteria> visitCriteriaList=myPageService.todayVisitHistory(visitCriteriaMap);
			m.addAttribute("visitCriteriaList",visitCriteriaList);
			
			Integer visitCriteriaCount=myPageService.todayVisitCount(visitCriteriaMap);
			m.addAttribute("visitCriteriaCount",visitCriteriaCount);
			companyDtoMap.put("customerId", customerId);

			companyDtoMap.put("category", "웨딩홀");
			List<CompanyDto> companyListHall=myPageService.todayReservationHistory(companyDtoMap);
			m.addAttribute("companyListHall",companyListHall);
			
			companyDtoMap.put("category", "스튜디오");
			List<CompanyDto> companyListStudio=myPageService.todayReservationHistory(companyDtoMap);
			m.addAttribute("companyListStudio",companyListStudio);
			
			companyDtoMap.put("category", "드레스");
			List<CompanyDto> companyListDress=myPageService.todayReservationHistory(companyDtoMap);
			m.addAttribute("companyListDress",companyListDress);
			
			companyDtoMap.put("category", "메이크업");
			List<CompanyDto> companyListMake=myPageService.todayReservationHistory(companyDtoMap);
			m.addAttribute("companyListMake",companyListMake);
			
			return "/mypage/mypage";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/main";
		}
//		return "/mypage/mypage";
	}
	
	@RequestMapping(value="/estimate-storage")
	public String estimateStorage(@SessionAttribute("id") String id, Integer customerId, Model model) throws Exception {
		System.out.println("id= "+id);
		MyPageDTO sessionId=myPageService.customerId(id);
		customerId=sessionId.getCustomerId();
		MyPageDTO myPageDTO = myPageService.customerRead(customerId);
		model.addAttribute("myPageDTO",myPageDTO);

		Map<String,Object> vistCriteriaMap = new HashMap<>();
		vistCriteriaMap.put("customerId",customerId);
		Integer visitCriteriaCount = myPageService.todayVisitCount(vistCriteriaMap);
		model.addAttribute("visitCriteriaCount",visitCriteriaCount);
		return "mypage/estimateStorage";
	}
	@RequestMapping(value = "/likelist")
	public String likeList() {
		return "mypage/likeList";
	}


	@GetMapping("/mypayment")
	public String getMyPayment(@SessionAttribute("id") String id,Integer customerId,Model model){
		try {
			/* mypayment 값 가져옴*/
			System.out.println("id= "+id);
			MyPageDTO sessionId=myPageService.customerId(id);
			customerId=sessionId.getCustomerId();
			List<Map<String, Object>> myPayment = myPageService.paymentHistory(customerId);
			model.addAttribute("myPayment",myPayment);
			model.addAttribute("customerId",customerId);
			System.out.println(myPayment.get(1).get("payment_time"));

			/*마이페이지의 헤더*/
			MyPageDTO myPageDTO = myPageService.customerRead(customerId);
			model.addAttribute("myPageDTO",myPageDTO);

			/*금일 방문 일정 카운트*/
			/*Map parameter type*/
			Map<String,Object> vistCriteriaMap = new HashMap<>();

			vistCriteriaMap.put("customerId",customerId);

			Integer visitCriteriaCount = myPageService.todayVisitCount(vistCriteriaMap);
			model.addAttribute("visitCriteriaCount",visitCriteriaCount);
			
			
			return "mypage/myPayment";
		}catch (Exception e){
			e.printStackTrace();
			return "redirect:/main";
		}
	}

	@GetMapping("/payment-detail")
	public String getPaymentDetail(){
		return "mypage/paymentDetail";
	}
	@PostMapping("/payment-detail")
	public String postPaymentDetail(){
		return "mypage/paymentDetail";
	}

	@GetMapping("/reservation-detail")
	public String reservationDetail(@SessionAttribute("id") String id, HttpServletRequest request, Model m) {
		//카테고리 및 회사 인덱스 getmapping으로 얻어오는 값 추가
		String category = request.getParameter("category");
		Integer companyId = Integer.parseInt(request.getParameter("companyId"));
		String date=request.getParameter("date");
		String OnlyYear=OnlyDate(date,"year");
		String OnlyMonth=OnlyDate(date,"month");
		String OnlyDay=OnlyDate(date, "day");

		m.addAttribute("OnlyYear",OnlyYear);
		m.addAttribute("OnlyMonth",OnlyMonth);
		m.addAttribute("OnlyDay",OnlyDay);

		//map 추가
		Map<String,Object> toCustomerMakeupMap= new HashMap<>();
		Map<String,Object> toCustomerOptionInfoMap= new HashMap<>();
		
		//카테고리
		m.addAttribute("category",category);
		//회사 인덱스
		m.addAttribute("companyId",companyId);
		try {
			// request로 입력받은 id 추가하여 customerId를 받아옴
			System.out.println("id : "+ id);
			MyPageDTO sessionId=myPageService.customerId(id);

			// id에서 받아오는  customer_id
			int customerId=sessionId.getCustomerId();
//			System.out.println(customerId);
			//객체들 넣기
			CompanyDto companyDto = myPageService.companyRead(companyId);
			HallInfoDto hallInfoDto = new HallInfoDto();
			DressInfo dressInfo = new DressInfo();
			MakeupInfo makeupInfo = myPageService.makeupInfoRead(1);
			StudioInfo studioInfo = new StudioInfo();
			OptionDto optionDto = new OptionDto();
			ReservationDto reservationDto = new ReservationDto();
			
			//전부다 companyId가 필요하므로 map에 입력
			toCustomerOptionInfoMap.put("companyId",companyId);

			//상세 예약 내역


			VisitCriteria visitCriteria=new VisitCriteria(companyDto,hallInfoDto,dressInfo,makeupInfo,studioInfo,optionDto);
			List<VisitCriteria> toCusotmerOptionInfo=myPageService.toCustomerOptionInfo(toCustomerOptionInfoMap,category);
			m.addAttribute("visitCriteria",visitCriteria);
			m.addAttribute("toCusotmerOptionInfo",toCusotmerOptionInfo);
			// 카테고리가 GetMapping으로 메이크업 이 string 값으로 넘어올때
			System.out.println(category.equals("스튜디오"));
			if(category.equals("메이크업")){
				//map 에 makeupId 입력
				toCustomerOptionInfoMap.put("makeupId",makeupInfo.getMakeupId());

			 	VisitCriteria makeupCri =new VisitCriteria(companyDto,makeupInfo,optionDto,reservationDto);
			 	List<VisitCriteria> ToCustomerMakeupInfo = myPageService.toCustomerOptionInfo(toCustomerOptionInfoMap,category);
				 m.addAttribute("makeupCri",makeupCri);
				 m.addAttribute("ToCustomerMakeupInfo",ToCustomerMakeupInfo);
			}else if (category.equals("스튜디오")){
				studioInfo.setStudioId(2);
				toCustomerOptionInfoMap.put("studioId",studioInfo.getStudioId());
				VisitCriteria studioCri =new VisitCriteria(companyDto,reservationDto,optionDto,studioInfo);
				List<VisitCriteria> ToCustomerStudioInfo = myPageService.toCustomerOptionInfo(toCustomerOptionInfoMap,category);
				m.addAttribute("studioCri",studioCri);
				m.addAttribute("ToCustomerStudioInfo",ToCustomerStudioInfo);
			}else if (category.equals("드레스")){
				dressInfo.setDressId(2);
				toCustomerOptionInfoMap.put("dressId",dressInfo.getDressId());
				VisitCriteria dressCri =new VisitCriteria(companyDto,reservationDto,optionDto,dressInfo);
				List<VisitCriteria> ToCustomerDressInfo = myPageService.toCustomerOptionInfo(toCustomerOptionInfoMap,category);
				m.addAttribute("dressCri",dressCri);
				m.addAttribute("ToCustomerDressInfo",ToCustomerDressInfo);
			}
			else if (category.equals("웨딩홀")){
				hallInfoDto.setHallId(2);
				toCustomerOptionInfoMap.put("hallId",hallInfoDto.getHallId());
				VisitCriteria hallCri =new VisitCriteria(companyDto,reservationDto,optionDto,hallInfoDto);
				List<VisitCriteria> ToCustomerHallInfo = myPageService.toCustomerOptionInfo(toCustomerOptionInfoMap,category);
				m.addAttribute("hallCri",hallCri);
				m.addAttribute("ToCustomerHallInfo",ToCustomerHallInfo);
			}
			


			toCustomerMakeupMap.put("makeupId",makeupInfo.getMakeupId());
			toCustomerMakeupMap.put("companyId",companyId);
			MakeupInfo makeupInfo1=myPageService.toCustomerMakeupInfo(toCustomerMakeupMap);

			m.addAttribute("optionDto",optionDto);
			m.addAttribute("companyDto",companyDto);

			if(category.equals("메이크업")& companyId.equals(companyDto.getCompanyId())){
				m.addAttribute("makeupInfo",makeupInfo);
				m.addAttribute("makeupInfo1",makeupInfo1);
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return "/mypage/reservationDetail";
	}
	//업체에 있는 상세 에약내역(옵션을 가져오는 부분) 
	@GetMapping("/historys")
	@ResponseBody
	public ResponseEntity<List<MyPageDTO>> list(CompanyDto companyDto){
		CompanyDto list = null;
		
			try {
//				list=myPageService.getList(companyDto);
				return new ResponseEntity<List<MyPageDTO>>((List<MyPageDTO>) list,HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				return new ResponseEntity<List<MyPageDTO>>((List<MyPageDTO>) list,HttpStatus.BAD_REQUEST);
			}
	}
	
	
	@GetMapping("/reservation-list")
	public String reservationList(@SessionAttribute("id") String id,Integer reservation_id, Model m) {


		Map<String,Object> hallVisitReListMap = new HashMap<String, Object>();
		Map<String, Object> visitCriteriaMap =new HashMap<String, Object>();
		Map<String, Object> coReListMap= new HashMap<String, Object>();
//		Integer companyId = Integer.parseInt(request.getParameter("companyId"));

		try {
			// sessionId 받아오는 중~
				System.out.println("id : "+ id);
				MyPageDTO sessionId=myPageService.customerId(id);

				// id에서 받아오는  customer_id
				int customerId=sessionId.getCustomerId();
				System.out.println(customerId);
			//-----------------------------------------

			CompanyDto 		companyDto 		=	myPageService.companyRead( 1);
			MyPageDTO 		myPageDto 		=	myPageService.customerRead(customerId);
			ReservationDto 	reservationDto	=	myPageService.reservationRead(1);
			CompanyImage 	companyImage 	= 	myPageService.coImageRead(1);
			StudioInfo studioInfo = new StudioInfo();
			DressInfo dressInfo = new DressInfo();
			MakeupInfo makeupInfo = new MakeupInfo();
			HallInfoDto 		hallInfoDto 		= 	myPageService.hallInfoRead(1);
			OptionDto optionDto = new OptionDto();
			
			HistoryDto historyDto = myPageService.historyRead(1);
			
			m.addAttribute("companyDto",		companyDto);
			m.addAttribute("myPageDTO",		myPageDto);
			m.addAttribute("reservationDto",	reservationDto);
			m.addAttribute("hallInfoDto",		hallInfoDto);
			m.addAttribute("companyImage",	companyImage);
			
			//방문 예약 내역
			VisitCriteria hallCriteria = new VisitCriteria(companyDto, myPageDto, reservationDto, hallInfoDto, companyImage);
			hallCriteria.getMyPageDTO().setCustomerId(customerId);
			m.addAttribute("hallCriteria",hallCriteria);

			hallVisitReListMap.put("customerId", (Integer) hallCriteria.getMyPageDTO().getCustomerId());
			hallVisitReListMap.put("category","웨딩홀");
			
			//방문 예약
			hallVisitReListMap.put("visit_reservation", 1);
			List<VisitCriteria> hallVisitReservatioinList=myPageService.hallVisitReservatioinList(hallVisitReListMap);
			m.addAttribute("hallVisitReservatioinList",hallVisitReservatioinList);
			
			//웨딩홀 예약
			hallVisitReListMap.put("visit_reservation", 0);
			List<VisitCriteria> hallReList = myPageService.hallVisitReservatioinList(hallVisitReListMap);
			m.addAttribute("hallReList",hallReList);
			
			//업체별 예약 내역 
			VisitCriteria coCriteria =
					new VisitCriteria(
							companyDto,myPageDto,reservationDto,companyImage,studioInfo,dressInfo,makeupInfo,hallInfoDto,optionDto);
			m.addAttribute("coCriteria",coCriteria);
			coReListMap.put("customerId", customerId);
			//업체별 예약 - 스튜디오
			coReListMap.put("category","스튜디오" );
			List<VisitCriteria> coReStudioList= myPageService.coReservationList(coReListMap);
			m.addAttribute("coReStudioList",coReStudioList);
			
			//업체별 예약 - 드레스
			coReListMap.put("category","드레스" );
			List<VisitCriteria> coReDressList= myPageService.coReservationList(coReListMap);
			m.addAttribute("coReDressList",coReDressList);
			
			//업체별 예약 - 메이크업
			coReListMap.put("category","메이크업" );
			List<VisitCriteria> coReMakeUpList= myPageService.coReservationList(coReListMap);
			m.addAttribute("coReMakeUpList",coReMakeUpList);
			
			// 방문 일정 카운트 관련
			VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDto, reservationDto, historyDto);

			visitCriteriaMap.put("companyId", (Integer) visitCriteria.getCompanyDto().getCompanyId());
			visitCriteriaMap.put("customerId", (Integer) visitCriteria.getMyPageDTO().getCustomerId());

			Integer visitCriteriaCount=myPageService.todayVisitCount(visitCriteriaMap);
			m.addAttribute("visitCriteriaCount",visitCriteriaCount);

			/*예약 일정 달력에 추가*/
			List<Map<String, Object>> getCalendarEvents = myPageService.getCalendarEvents(customerId);
			m.addAttribute("getCalendarEvents",getCalendarEvents);

			/*웨딩홀 예약 내역 리메이크 버전*/
//			String category = "웨딩홀";
//			List<Map<String,Object>> getWeddingReservations = myPageService.getWeddingReservations(customerId,category);
//			m.addAttribute("getWeddingReservations",getWeddingReservations);

			return "/mypage/reservationList";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect: /mypage/mypage";
		}
	}

	// -> 커플 페이지 생략
	@RequestMapping("/wishlist")
	public String wishList() {
		return "mypage/wishList";
	}
	@RequestMapping(value = "calendar")
	public String calendarTest() {
		return "common/calendar";
	}
	
	public String OnlyDate(String date,String datetype){
		if(date != null && !date.isEmpty()){
			String[] parts = date.split("-");

			if(parts.length==3){
				String year= parts[0];
				String month = parts[1];
				String day = parts[2];
				String onlyDate = year+"-"+month+"-"+day;
				if (datetype.equals("year")){
					onlyDate=year;
				} else if (datetype.equals("month")) {
					onlyDate=month;
				} else if (datetype.equals("day")) {
					onlyDate=day;
				}
				System.out.println(onlyDate);
				return onlyDate;
			}
		}
		return null;
	}
}

