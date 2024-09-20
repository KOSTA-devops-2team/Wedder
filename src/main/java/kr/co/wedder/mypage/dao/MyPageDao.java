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

	// 0912
	DressInfo selectDressInfo(Integer dressId) throws Exception;

	// 09/ 12일 옵션들 추가
	MakeupInfo selectMakeupInfo(Integer makeupId) throws Exception;

	OptionDto selectOptionDto(Integer optionId) throws Exception;

	PackageCategoryDto selectPackCa(Integer categoryId) throws Exception;

	StudioInfo selectStudioInfo(Integer studioId) throws Exception;
}
