package kr.co.wedder.mypage.dao;

import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.*;
import kr.co.wedder.sdmpackage.domain.PackageDto;

public interface MyPageDao {
	
	//mypage
	MyPageDTO selectOne(Integer customerId) throws Exception;
	//company
	CompanyDto selectCompany(Integer companyId) throws Exception;
	//reservation
	ReservationDto selectReservation(Integer reservationId) throws Exception;
	//History
	HistoryDto selectHistory(Integer customerId) throws Exception;
	//HallInfo
	HallInfoDto selectHallInfo(Integer hallId) throws Exception;
	//CompanyImage
	CompanyImage selectCoImage(Integer imgId) throws Exception;
	
	
	// 09/12 일 추가
	//DressInfo
	DressInfo selectDressInfo(Integer dressId) throws Exception;
	
	//MakeupInfo
	MakeupInfo selectMakeupInfo(Integer makeupId) throws Exception;
	//OptionDto
	OptionDto selectOptionDto(Integer optionId) throws Exception;
	//PackageCategoryDto
	PackageCategoryDto selectPackCa(Integer categoryId) throws Exception;
	//StudioInfo
	StudioInfo selectStudioInfo(Integer studioId)throws Exception;

	//금일 방문 일정 카운트 가져오기 
	Integer todayVisitCount(Map<String,Object> map) throws Exception;
	
	//mypage/myape의  company list를 가져오기 위해서 
	List<CompanyDto> todayReservationHistory(Map<String, Object> map) throws Exception; 

	//join 금일 방문 일정 
	List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception;
	
	//hallVisiReservatioinList 웨딩홀 방문예약 내역
	List<VisitCriteria> hallVisitReservatioinList(Map<String, Object> map) throws Exception;
	
	//coReservationList 각 업체 예약 내역
	List<VisitCriteria> coReservationList(Map<String, Object> map) throws Exception;
	
}
