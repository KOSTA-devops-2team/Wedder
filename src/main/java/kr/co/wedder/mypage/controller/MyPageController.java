package kr.co.wedder.mypage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	MyPageService myPageService;
	
	@GetMapping("/mypage")
	public String mypage(@SessionAttribute("id") String id, Integer customerId, Model m) {
		try {
			System.out.println("id : "+ id);
			MyPageDTO sessionId=myPageService.cutomerId(id);

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
			visitCriteriaMap.put("customerId", (Integer) visitCriteria.getMyPageDTO().getCustomerId());
			m.addAttribute("visitCriteria",visitCriteria);
			
			List<VisitCriteria> visitCriteriaList=myPageService.todayVisitHistory(visitCriteriaMap);
			m.addAttribute("visitCriteriaList",visitCriteriaList);
			
			Integer visitCriteriaCount=myPageService.todayVisitCount(visitCriteriaMap);
			m.addAttribute("visitCriteriaCount",visitCriteriaCount);
			
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
	public String estimateStorage() {
		return "mypage/estimateStorage";
	}
	@RequestMapping(value = "/likelist")
	public String likeList() {
		return "mypage/likeList";
	}
	@RequestMapping(value="/mypayment")
	public String myPayment() {
		return "mypage/myPayment";
	}
	@RequestMapping(value="/payment-detail")
	public String paymentDetail() {
		return "mypage/paymentDetail";
	}
	
	/*
	 * @RequestMapping(value="/reservation-detail") public String
	 * reservationDetail() { return "mypage/reservationDetail"; }
	 */
	@GetMapping("/reservation-detail")
	public String reservationDetail(@SessionAttribute("id") String id, HttpServletRequest request, Model m) {
		String category = request.getParameter("category");
		Integer companyId = Integer.parseInt(request.getParameter("companyId"));
		Map<String,Object> toCustomerMakeupMap= new HashMap<>();
		Map<String,Object> toCustomerOptionInfoMap= new HashMap<>();
		m.addAttribute("category",category);
		m.addAttribute("companyId",companyId);
		try {
			System.out.println("id : "+ id);
			MyPageDTO sessionId=myPageService.cutomerId(id);

			// id에서 받아오는  customer_id
			int customerId=sessionId.getCustomerId();
//			System.out.println(customerId);

			CompanyDto companyDto = myPageService.companyRead(companyId);
			HallInfoDto hallInfoDto = myPageService.hallInfoRead(1);
			DressInfo dressInfo = myPageService.dressInfoRead(1);
			MakeupInfo makeupInfo = myPageService.makeupInfoRead(1);
			StudioInfo studioInfo = myPageService.studioInfoRead(1);
//			List<OptionDto> optionDto1 = myPageService.optionRead(category);

			//상세 예약 내역
			toCustomerOptionInfoMap.put("makeupId",makeupInfo.getMakeupId());
			toCustomerOptionInfoMap.put("companyId",companyId);
			List<VisitCriteria> toCusotmerOptionInfo=myPageService.toCustomerOptionInfo(toCustomerOptionInfoMap);
			OptionDto optionDto = new OptionDto();
			
			VisitCriteria visitCriteria=new VisitCriteria(companyDto,hallInfoDto,dressInfo,makeupInfo,studioInfo,optionDto);
			m.addAttribute("visitCriteria",visitCriteria);
			m.addAttribute("toCusotmerOptionInfo",toCusotmerOptionInfo);

			toCustomerMakeupMap.put("makeupId",makeupInfo.getMakeupId());
			toCustomerMakeupMap.put("companyId",companyId);
			MakeupInfo makeupInfo1=myPageService.toCustomerMakeupInfo(toCustomerMakeupMap);

			m.addAttribute("optionDto",optionDto);
			m.addAttribute("companyDto",companyDto);
//			m.addAttribute("optionDto1",optionDto1);
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
				MyPageDTO sessionId=myPageService.cutomerId(id);

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
			hallVisitReListMap.put("visit_reservation", 1);
			List<VisitCriteria> hallReList = myPageService.hallVisitReservatioinList(hallVisitReListMap);
			m.addAttribute("hallReList",hallReList);
			
			//업체별 예약 내역 
			VisitCriteria coCriteria =
					new VisitCriteria(
							companyDto,myPageDto,reservationDto,companyImage,studioInfo,dressInfo,makeupInfo,hallInfoDto,optionDto);
			m.addAttribute("coCriteria",coCriteria);
			coReListMap.put("customerId", (Integer) coCriteria.getMyPageDTO().getCustomerId());
			
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



			return "/mypage/reservationList";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect: /mypage/mypage";
		}
	}
	
	@RequestMapping(value="/wishlist")
	public String wishList() {
		return "mypage/wishList";
	}
	@RequestMapping(value = "calendar")
	public String calendarTest() {
		return "common/calendar";
	}
}
