package kr.co.wedder.mypage.service;

import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.CompanyImage;
import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;
import kr.co.wedder.mypage.domain.HallInfoDto;

public interface MyPageService {
	
	//table read(select) 해오는 service 
	CompanyDto companyRead(Integer companyId) throws Exception;
	MyPageDTO customerRead(Integer customerId) throws Exception;
	ReservationDto reservationRead(Integer reservation_id) throws Exception;
	HistoryDto historyRead(Integer customerId) throws Exception;
	HallInfoDto hallInfoRead(Integer hall_id) throws Exception;
	CompanyImage coImageRead(Integer img_id) throws Exception;
	
	//table count service
	Integer todayVisitCount(Map<String, Object> map) throws Exception;
	
	// join table service 
	List<CompanyDto> todayReservationHistory(Map<String, Object>map) throws Exception;
	List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception;
	List<VisitCriteria> hallVisitReservatioinList(Map<String, Object> map) throws Exception;
	List<VisitCriteria> coReservationList(Map<String, Object> map) throws Exception;
	
}
