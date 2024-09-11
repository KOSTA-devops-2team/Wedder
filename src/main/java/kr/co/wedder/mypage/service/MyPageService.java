package kr.co.wedder.mypage.service;

import java.util.List;
import java.util.Map;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;

public interface MyPageService {
	CompanyDto companyRead(Integer company_id) throws Exception;
	MyPageDTO customerRead(Integer customer_id) throws Exception;
	ReservationDto reservationRead(Integer reservation_id) throws Exception;
	HistoryDto historyRead(Integer cusomter_id) throws Exception;
	Integer todayVisitCount(Map<String, Object> map) throws Exception;
	
	List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception;
	List<CompanyDto> todayReservationHistory(Map<String, Object>map) throws Exception;
}
