package kr.co.wedder.mypage.dao;

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
	public OptionDto selectOptionDto(Integer optionId) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+"selectOptionDto", optionId);
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



}
