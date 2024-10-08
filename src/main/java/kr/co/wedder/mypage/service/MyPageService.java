package kr.co.wedder.mypage.service;

import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.*;

public interface MyPageService {
	
	//table read(select) 해오는 service 
	CompanyDto companyRead(Integer companyId) throws Exception;
	MyPageDTO customerRead(Integer customerId) throws Exception;
	ReservationDto reservationRead(Integer reservationId) throws Exception;
	HistoryDto historyRead(Integer customerId) throws Exception;
	HallInfoDto hallInfoRead(Integer hallId) throws Exception;
	CompanyImage coImageRead(Integer imgId) throws Exception;

	//09/14 일 추가
	//DressInfo
	DressInfo dressInfoRead(Integer dressId) throws Exception;
	//MakeupInfo
	MakeupInfo makeupInfoRead(Integer makeupId) throws Exception;
	List<OptionDto> optionRead(String category) throws Exception;
	//OptionInfo
	//packageCategory
	PackageCategoryDto packageCategoryRead(Integer categoryId) throws Exception;
	//StudioInfo
	StudioInfo 	studioInfoRead(Integer studioId) throws Exception;
	//table count service

	Integer todayVisitCount(Map<String, Object> map) throws Exception;
	// join table service

	List<CompanyDto> 	todayReservationHistory(Map<String, Object>map) throws Exception;
	List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception;
	List<VisitCriteria> hallVisitReservatioinList(Map<String, Object> map) throws Exception;
	List<VisitCriteria> coReservationList(Map<String, Object> map) throws Exception;
	// 09/24
	MakeupInfo toCustomerMakeupInfo(Map<String,Object> map) throws Exception;
	List<VisitCriteria> toCustomerOptionInfo(Map<String,Object> map,String category) throws Exception;
	// 09/25
	MyPageDTO customerId(String id) throws Exception;

	List<Map<String,Object>> paymentHistory(Integer customer_id) throws Exception;
	List<Map<String,Object>> searchMyPayment(Integer customer_id,String order_name)throws Exception;
	// post Calendar plan 일정조회
	List<Map<String,Object>> getCalendarEvents(Integer customer_id);
}
