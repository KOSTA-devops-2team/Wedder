package kr.co.wedder.mypage.service;

import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.*;
import kr.co.wedder.sdmpackage.domain.PackageDto;

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
	//OptionInfo
	OptionDto optionRead(Integer optionId) throws Exception;
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
	
}
