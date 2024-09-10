package kr.co.wedder.mypage.dao;

import java.util.List;
import java.util.Map;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;

public interface MyPageDao {
	//mypage
	MyPageDTO selectOne(Integer customer_id) throws Exception;
	//company
	CompanyDto selectCompany(Integer company_id) throws Exception;
	//reservation
	ReservationDto selectReservation(Integer reservation_id) throws Exception;
	//join 금일 방문 일정 
	List<VisitCriteria> todayVisitHistory(Map map) throws Exception;
	
}
