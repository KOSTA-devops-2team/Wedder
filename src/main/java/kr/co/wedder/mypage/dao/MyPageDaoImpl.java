package kr.co.wedder.mypage.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.*;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyPageDaoImpl implements MyPageDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace="kr.co.wedder.mypage.dao.MyPageMapper.";
	
	@Override
	public MyPageDTO selectOne(Integer customerId) throws Exception {
		return session.selectOne(namespace+"selectOne", customerId);
	}

	@Override
	public ReservationDto selectReservation(Integer reservationId) throws Exception {
		return session.selectOne(namespace+"selectReservation", reservationId);
	}

	@Override
	public CompanyDto selectCompany(Integer companyId) throws Exception {
		return session.selectOne(namespace+"selectCompany", companyId);
	}

	@Override
	public HistoryDto selectHistory(Integer customerId) throws Exception {
		return session.selectOne(namespace+"selectHistory", customerId);
	}
	@Override
	public HallInfoDto selectHallInfo(Integer hallId) throws Exception {
		return session.selectOne(namespace+"selectHallInfo", hallId);
	}
	
	@Override
	public CompanyImage selectCoImage(Integer imgId) throws Exception {
		return session.selectOne(namespace+"selectCoImage", imgId);
	}
	@Override
	public Integer todayVisitCount(Map<String, Object> map) throws Exception {
		return session.selectOne(namespace+"todayVisitCount", map);
	}
	
	@Override
	public List<CompanyDto> todayReservationHistory(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"todayReservationHistory",map);
	}
	
	@Override
	public List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"todayVisitHistory",map);
	}

	@Override
	public List<VisitCriteria> hallVisitReservatioinList(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"hallVisitReservatioinList", map);
	}

	@Override
	public List<VisitCriteria> coReservationList(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"coReservationList",map);
	}

	@Override
	public List<VisitCriteria> coReservationDetail(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"coReservationDetail",map);
	}

	// 0912
	@Override
	public DressInfo selectDressInfo(Integer dressId) throws Exception {
		return session.selectOne(namespace+"selectDressInfo", dressId);
	}
	
	// 09/ 12일 옵션들 추가
	@Override
	public MakeupInfo selectMakeupInfo(Integer makeupId) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+"selectMakeupInfo", makeupId);
	}
	
	@Override
	public List<OptionDto> selectOptionDto(String category) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+"selectOptionDto", category);
	}

	@Override
	public PackageCategoryDto selectPackCa(Integer categoryId) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+"selectPackCa", categoryId);
	}

	@Override
	public StudioInfo selectStudioInfo(Integer studioId) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+"selectStudioInfo", studioId);
	}

	//09/14

	@Override
	public MakeupInfo toCustomerMakeupInfo(Map<String, Object> map) throws Exception {
		return session.selectOne(namespace+"ToCustomerMakeupInfo",map);
	}
	//메이크업 옵션 정보 테이블
	@Override
	public List<VisitCriteria> toCustomerOptionInfo(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"ToCustomerOptionInfo",map);
	}

	@Override
	public List<VisitCriteria> toCustomerOptionInfo2(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"ToCustomerOptionInfo2",map);
	}

	@Override
	public List<VisitCriteria> toCustomerOptionInfo3(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"ToCustomerOptionInfo3",map);
	}

	@Override
	public List<VisitCriteria> toCustomerOptionInfo4(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"ToCustomerOptionInfo4",map);
	}


	//세션아이디로 customerId를 찾는 기능
	@Override
	public MyPageDTO customerId(String id) throws Exception {
		return session.selectOne(namespace+"customerId",id);
	}

	@Override
	public List<Map<String, Object>> getMyPayment(Integer customer_id) throws Exception {
		Map<String, Object> parameterTypeMap =new  HashMap<>();
		parameterTypeMap.put("customer_id",customer_id);

		return session.selectList(namespace+"paymentTest",customer_id);
	}

	@Override
	public List<Map<String, Object>> searchOrderName(Integer customer_id, String order_name) throws Exception {
		Map<String,Object> parameterTypeMap = new HashMap<>();
		parameterTypeMap.put("customer_id",customer_id);
		parameterTypeMap.put("order_name",order_name);

		return session.selectList(namespace+"searchOrderName",parameterTypeMap);
	}

}
