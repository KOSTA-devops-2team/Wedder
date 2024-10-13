package kr.co.wedder.mypage.service;

import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wedder.mypage.dao.MyPageDao;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDao myPageDao;
	
	@Override
	public MyPageDTO customerRead(Integer customerId) throws Exception {
		return myPageDao.selectOne(customerId);
	}

	@Override
	public CompanyDto companyRead(Integer companyId) throws Exception {
		return myPageDao.selectCompany(companyId);
	}
	@Override
	public ReservationDto reservationRead(Integer reservationId) throws Exception {
		return myPageDao.selectReservation(reservationId);
	}
	@Override
	public HistoryDto historyRead(Integer customerId) throws Exception {
		return myPageDao.selectHistory(customerId);
	}
	@Override
	public CompanyImage coImageRead(Integer imgId) throws Exception {
		return myPageDao.selectCoImage(imgId);
	}

	@Override
	public DressInfo dressInfoRead(Integer dressId) throws Exception {
		return myPageDao.selectDressInfo(dressId);
	}

	@Override
	public MakeupInfo makeupInfoRead(Integer makeupId) throws Exception {
		return myPageDao.selectMakeupInfo(makeupId);
	}

	@Override
	public List<OptionDto> optionRead(String category) throws Exception {
		return myPageDao.selectOptionDto(category);
	}

	@Override
	public PackageCategoryDto packageCategoryRead(Integer categoryId) throws Exception {
		return myPageDao.selectPackCa(categoryId);
	}

	@Override
	public StudioInfo studioInfoRead(Integer studioId) throws Exception {
		return myPageDao.selectStudioInfo(studioId);
	}



	@Override
	public HallInfoDto hallInfoRead(Integer hallId) throws Exception {
		return myPageDao.selectHallInfo(hallId);
	}
	@Override
	public Integer todayVisitCount(Map<String, Object> map) throws Exception {
		return myPageDao.todayVisitCount(map);
	}
	
//--------- --> 각 테이블 값들을 불러오기 위한 기능
// join 하기 위한 기능
	
	@Override
	public List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception {
		return myPageDao.todayVisitHistory(map);
	}
	@Override
	public List<CompanyDto> todayReservationHistory(Map<String, Object> map) throws Exception {
		return myPageDao.todayReservationHistory(map);
	}

	@Override
	public List<VisitCriteria> hallVisitReservatioinList(Map<String, Object> map) throws Exception {
		return myPageDao.hallVisitReservatioinList(map);
	}

	@Override
	public List<VisitCriteria> coReservationList(Map<String, Object> map) throws Exception {
		return myPageDao.coReservationList(map);
	}



	@Override
	public MakeupInfo toCustomerMakeupInfo(Map<String, Object> map) throws Exception {
		return myPageDao.toCustomerMakeupInfo(map);
	}

	@Override
	public List<VisitCriteria> toCustomerOptionInfo(Map<String, Object> map,String category) throws Exception {
		if (category.equals("메이크업") ){
			return myPageDao.toCustomerOptionInfo(map);
		}else if (category.equals("스튜디오")){
			return myPageDao.toCustomerOptionInfo2(map);
		} else if (category.equals("드레스")) {
			return myPageDao.toCustomerOptionInfo3(map);
		} else if (category.equals("웨딩홀")) {
			return myPageDao.toCustomerOptionInfo4(map);
		}
		return null;
	}

	@Override
	public MyPageDTO customerId(String id) throws Exception {
		return myPageDao.customerId(id);
	}

	@Override
	public List<Map<String, Object>> paymentHistory(Integer customer_id) throws Exception {
		return myPageDao.getMyPayment(customer_id);
	}

	@Override
	public List<Map<String, Object>> searchMyPayment(Integer customer_id, String order_name) throws Exception {
		return myPageDao.searchOrderName(customer_id,order_name);
	}

	@Override
	public List<Map<String, Object>> getCalendarEvents(Integer customer_id) {
		return myPageDao.getCalendarEvents(customer_id);
	}

	@Override
	public List<Map<String, Object>> getWeddingReservations(Integer customer_id, String company_category) {
		return myPageDao.getWeddingReservations(customer_id,company_category);
	}

}
