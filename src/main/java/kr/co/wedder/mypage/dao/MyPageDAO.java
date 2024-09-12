package kr.co.wedder.mypage.dao;

import java.util.List;
import java.util.Map;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.CompanyImage;
import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;
import kr.co.wedder.mypage.domain.HallInfoDto;

public interface MyPageDao {
	
	//mypage
	MyPageDTO selectOne(Integer customer_id) throws Exception;
	
	//company
	CompanyDto selectCompany(Integer company_id) throws Exception;
	
	//reservation
	ReservationDto selectReservation(Integer reservation_id) throws Exception;
	
	//History
	HistoryDto selectHistory(Integer customer_id) throws Exception;
	//HallInfo
	HallInfoDto selectHallInfo(Integer hall_id) throws Exception;
	//CompanyImage
	CompanyImage selectCoImage(Integer img_id) throws Exception;
	
	
	//금일 방문 일정 카운트 가져오기 
	Integer todayVisitCount(Map<String,Object> map) throws Exception;
	
	//join 금일 방문 일정 
	List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception;
	
	//company list를 가져오기 위해서 
	List<CompanyDto> todayReservationHistory(Map<String, Object> map) throws Exception; 
	
	//hallVisiReservatioinList 웨딩홀 방문예약 내역
	List<VisitCriteria> hallVisitReservatioinList(Map<String, Object> map) throws Exception;
	
}
