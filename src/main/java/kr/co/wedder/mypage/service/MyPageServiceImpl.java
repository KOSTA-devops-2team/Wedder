package kr.co.wedder.mypage.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wedder.mypage.dao.MyPageDao;
import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;
import kr.co.wedder.mypage.domain.hallInfoDto;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDao myPageDao;
	
	@Override
	public MyPageDTO customerRead(Integer customer_id) throws Exception {
		return myPageDao.selectOne(customer_id);
	}

	@Override
	public CompanyDto companyRead(Integer company_id) throws Exception {
		return myPageDao.selectCompany(company_id);
	}
	@Override
	public ReservationDto reservationRead(Integer reservation_id) throws Exception {
		return myPageDao.selectReservation(reservation_id);
	}
	@Override
	public HistoryDto historyRead(Integer cusomter_id) throws Exception {
		return myPageDao.selectHistory(cusomter_id);
	}
	
//--------- --> 각 테이블 값들을 불러오기 위한 기능
	@Override
	public List<VisitCriteria> todayVisitHistory(Map<String, Object> map) throws Exception {
		return myPageDao.todayVisitHistory(map);
	}
// join 하기 위한 기능
	@Override
	public Integer todayVisitCount(Map<String, Object> map) throws Exception {
		return myPageDao.todayVisitCount(map);
	}
	@Override
	public List<CompanyDto> todayReservationHistory(Map<String, Object> map) throws Exception {
		return myPageDao.todayReservationHistory(map);
	}

	@Override
	public hallInfoDto hallInfoRead(Integer cusomter_id) throws Exception {
		return null;
	}




}
