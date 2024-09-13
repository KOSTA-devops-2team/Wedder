package kr.co.wedder.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.CompanyImage;
import kr.co.wedder.mypage.domain.DressInfo;
import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MakeupInfo;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.OptionDto;
import kr.co.wedder.mypage.domain.PackageCategoryDto;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.StudioInfo;
import kr.co.wedder.mypage.domain.VisitCriteria;
import kr.co.wedder.mypage.domain.HallInfoDto;

@Repository
public class MyPageDaoImpl implements MyPageDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace="kr.co.wedder.mypage.dao.MyPageMapper.";
	
	@Override
	public MyPageDTO selectOne(Integer customer_id) throws Exception {
		return session.selectOne(namespace+"selectOne",customer_id);
	}

	@Override
	public ReservationDto selectReservation(Integer reservation_id) throws Exception {
		return session.selectOne(namespace+"selectReservation", reservation_id);
	}

	@Override
	public CompanyDto selectCompany(Integer company_id) throws Exception {
		return session.selectOne(namespace+"selectCompany",company_id);
	}

	@Override
	public HistoryDto selectHistory(Integer customer_id) throws Exception {
		return session.selectOne(namespace+"selectHistory",customer_id);
	}
	@Override
	public HallInfoDto selectHallInfo(Integer hall_id) throws Exception {
		return session.selectOne(namespace+"selectHallInfo",hall_id);
	}
	
	@Override
	public CompanyImage selectCoImage(Integer img_id) throws Exception {
		return session.selectOne(namespace+"selectCoImage",img_id);
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
	
	// 0912
	@Override
	public DressInfo selectDressInfo(Integer dress_id) throws Exception {
		return session.selectOne(namespace+"selectDressInfo",dress_id);
	}
	
	// 09/ 12일 옵션들 추가
	@Override
	public MakeupInfo selectMakeupInfo(Integer makeup_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+"selectMakeupInfo",makeup_id);
	}
	
	@Override
	public OptionDto selectOptionDto(Integer option_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+"selectOptionDto",option_id);
	}

	@Override
	public PackageCategoryDto selectPackCa(Integer category_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+"selectPackCa",category_id);
	}

	@Override
	public StudioInfo selectStudioInfo(Integer studio_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+"selectStudioInfo",studio_id);
	}


	


}
