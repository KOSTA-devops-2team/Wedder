package kr.co.wedder.mypage.dao;

import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.*;

public interface MyPageDao {
	
	//mypage
	MyPageDTO selectOne(Integer customer_id) throws Exception;

	//company
	CompanyDto selectCompany(Integer company_id) throws Exception;

	//reservation
	ReservationDto selectReservation(Integer reservation_id) throws Exception;

	//History
	HistoryDto selectHistory(Integer customer_id) throws Exception;


	HallInfoDto selectHallInfo(Integer hallId) throws Exception;

	CompanyImage selectCoImage(Integer imgId) throws Exception;

	//금일 방문 일정 카운트 가져오기
	Integer todayVisitCount(Map<String,Object> map) throws Exception;


	//join 금일 방문 일정 
	List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception;
	
	//company list를 가져오기 위해서
	List<CompanyDto> todayReservationHistory(Map<String, Object> map) throws Exception;

	List<VisitCriteria> hallVisitReservatioinList(Map<String, Object> map) throws Exception;

	List<VisitCriteria> coReservationList(Map<String, Object> map) throws Exception;

	// 09/23일 상세 예약 내역
	List<VisitCriteria> coReservationDetail(Map<String, Object> map) throws Exception;

	// 0912
	DressInfo selectDressInfo(Integer dressId) throws Exception;

	// 09/ 12일 옵션들 추가
	MakeupInfo selectMakeupInfo(Integer makeupId) throws Exception;

	List<OptionDto> selectOptionDto(String category) throws Exception;

	PackageCategoryDto selectPackCa(Integer categoryId) throws Exception;

	StudioInfo selectStudioInfo(Integer studioId) throws Exception;

	//메이크업을 받는  정보를 불러오는 select
	MakeupInfo toCustomerMakeupInfo(Map<String,Object> map) throws  Exception;
	//메이크업(테이블)에 대한 옵션
	List<VisitCriteria> toCustomerOptionInfo(Map<String,Object> map) throws Exception;
	//스튜디오(테이블)에 대한 옵션
	List<VisitCriteria> toCustomerOptionInfo2(Map<String,Object> map) throws  Exception;
	//드레스(테이블)에 대한 옵션
	List<VisitCriteria> toCustomerOptionInfo3(Map<String,Object> map) throws  Exception;
	//웨딩홀(테이블)에 대한 옵션
	List<VisitCriteria> toCustomerOptionInfo4(Map<String,Object> map) throws  Exception;
	// customer Id 를 컨트롤러에 넣기 위해 만든 mapper
	MyPageDTO customerId(String id) throws Exception;
	//payment 불러오기-> test 통과  
	List<Map<String,Object>> getMyPayment(Integer customer_id)throws Exception;
	//payment Searching -> test(ajax 로 보내는 값)
	List<Map<String,Object>> searchOrderName(Integer customer_id,String order_name)throws Exception;
	//post Calendar ajax로 일정 추가
	List<Map<String,Object>> getCalendarEvents(Integer customer_id);
	/*Wedding Resv */
	List<Map<String,Object>> getWeddingReservations(Integer customer_id,String company_category);
}
