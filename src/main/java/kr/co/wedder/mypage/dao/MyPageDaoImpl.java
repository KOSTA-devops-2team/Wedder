package kr.co.wedder.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;
import kr.co.wedder.mypage.domain.hallInfoDto;

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
	public hallInfoDto selectHallInfo(Integer customer_id) throws Exception {
		return session.selectOne(namespace+"selectHallInfo",customer_id);
	}
	
	@Override
	public List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"todayVisitHistory",map);
	}

	@Override
	public List<CompanyDto> todayReservationHistory(Map<String, Object> map) throws Exception {
		return session.selectList(namespace+"todayReservationHistory",map);
	}

	@Override
	public Integer todayVisitCount(Map<String, Object> map) throws Exception {
		return session.selectOne(namespace+"todayVisitCount", map);
	}


}
