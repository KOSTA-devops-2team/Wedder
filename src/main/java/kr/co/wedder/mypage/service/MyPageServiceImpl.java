package kr.co.wedder.mypage.service;

import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.*;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.dao.MyPageDao;
<<<<<<< HEAD
import kr.co.wedder.mypage.domain.CompanyImage;
import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;
import kr.co.wedder.mypage.domain.HallInfoDto;
=======
>>>>>>> 76aabf54e68daa2e506e88949e2f2deafb9de970

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
	public OptionDto optionRead(Integer optionId) throws Exception {
		return myPageDao.selectOptionDto(optionId);
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


	




}
