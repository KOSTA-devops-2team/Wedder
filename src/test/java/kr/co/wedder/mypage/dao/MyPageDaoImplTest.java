package kr.co.wedder.mypage.dao;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.mypage.domain.*;
import kr.co.wedder.sdmpackage.dao.PackageDao;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

<<<<<<< HEAD
import kr.co.wedder.company.domain.CompanyDto;
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

=======
>>>>>>> 76aabf54e68daa2e506e88949e2f2deafb9de970
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MyPageDaoImplTest {
	
	@Autowired
	private MyPageDao dao;
	@Autowired
	private PackageDao packageDao;
	
	// 한 사람의 정보를 가져오는 거
	@Test
	public void selectOne() throws Exception{
		MyPageDTO dto=dao.selectOne(1);
		System.out.println("dto="+dto);
	}
	
	//회사 정보 가져오는 거
	@Test
	public void selectCompany() throws Exception{
		CompanyDto companyDto = dao.selectCompany(1);
		System.out.println("companyDto2= "+companyDto);
	}
	@Test
	public void selectReservation() throws Exception{
		ReservationDto reservationDto =dao.selectReservation(1);
		System.out.println("reservationDto= "+reservationDto);
	}
	@Test
	public void selectHistory() throws Exception{
		HistoryDto historyDto = dao.selectHistory(1);
		System.out.println("historyDto= "+historyDto);
	}
	@Test
	public void todayVisitHistory() throws Exception{
		
		Map<String, Object> map= new HashMap<>();
		
		MyPageDTO myPageDto =dao.selectOne(1);
//		System.out.println(myPageDto);
		CompanyDto companyDto =dao.selectCompany(1);
//		System.out.println(companyDto);
		ReservationDto reservationDto=dao.selectReservation(1);
//		System.out.println(reservationDto);
		HistoryDto historyDto = dao.selectHistory(1);
		HallInfoDto hallInfoDto = dao.selectHallInfo(1);
		
		
		VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDto, reservationDto, historyDto,hallInfoDto);
		map.put("companyId", (Integer) visitCriteria.getCompanyDto().getCompanyId());
		map.put("customer_id", (Integer) visitCriteria.getMyPageDTO().getCustomerId());

//		map.put("reservation_id", VisitCriteria.getReservationDto().getReservation_id());
		System.out.println("========================");
		System.out.println("map"+map);
		System.out.println(visitCriteria);
		System.out.println("========================");
		List<VisitCriteria> list=dao.todayVisitHistory(map);
		
		System.out.println("list= "+list.get(0));
		/*
		|company_name   	|name 		|reservation_date      		|reservation_time 	|
		|------------- 	|-----	|--------------------	|--------------	|
		|마리아쥬스퀘어   	|홍길동	|2024-09-10 00:00:00.0 	|16:00         
		-> 현재 join으로 값을 가져온 것이기 때문에 
		위 4가지 컬럼들 이외의 값들은 null이 나오는 게 정상		
		*/
	}
	@Test
	public void todayVisitCount() throws Exception{
		Map<String, Object> map= new HashMap<>();
		MyPageDTO myPageDto =dao.selectOne(1);
//		System.out.println(myPageDto);
		CompanyDto companyDto =dao.selectCompany(1);
//		System.out.println(companyDto);
		ReservationDto reservationDto=dao.selectReservation(1);
//		System.out.println(reservationDto);
		HistoryDto historyDto = dao.selectHistory(1);
		HallInfoDto hallInfoDto = dao.selectHallInfo(1);
		
		VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDto, reservationDto, historyDto,hallInfoDto);
		map.put("customer_id", (Integer) visitCriteria.getMyPageDTO().getCustomerId());
		map.put("company_category", "웨딩홀");
		Integer cnt=dao.todayVisitCount(map);
		System.out.println("cnt"+cnt);
	}
	
	@Test
	public void todayReservationHistory() throws Exception{		
		Integer company_id = 1;
		CompanyDto companyDto = dao.selectCompany(company_id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("company_category",companyDto.getCategory());
		List<CompanyDto> list = dao.todayReservationHistory(map);
	}
	@Test
	public void selectHallInfo() throws Exception{
		HallInfoDto hallInfoDto= dao.selectHallInfo(1);
		System.out.println("hallInfoDto= "+hallInfoDto);
	}
	@Test
	public void selectCoImage() throws Exception{
		CompanyImage companyImage = dao.selectCoImage(1);
		System.out.println("companyImage = "+companyImage);
	}
	@Test
	public void hallVisitReservatioinList() throws Exception{
		Map<String, Object> map= new HashMap<>();
		CompanyDto 		companyDto 		=	dao.selectCompany(1);
		MyPageDTO 		myPageDto 		=	dao.selectOne(1);
		ReservationDto 	reservationDto	=	dao.selectReservation(1);
		HallInfoDto 		hallInfoDto 		= 	dao.selectHallInfo(1);
		CompanyImage 	companyImage 	= 	dao.selectCoImage(1);
		
		
		VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDto, reservationDto, hallInfoDto,companyImage);
		map.put("company_id", (Integer) visitCriteria.getCompanyDto().getCompanyId());
		map.put("customer_id",(Integer) visitCriteria.getMyPageDTO().getCustomerId());
		List<VisitCriteria> list=dao.hallVisitReservatioinList(map);
	}
	@Test
	public void coReservationList() throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		CompanyDto companyDto = dao.selectCompany(2);
		MyPageDTO myPageDTO = dao.selectOne(1);
		ReservationDto reservationDto = dao.selectReservation(2);
		CompanyImage companyImage = dao.selectCoImage(2);
		
		VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDTO, reservationDto, companyImage);
		map.put("customer_id", (Integer)visitCriteria.getMyPageDTO().getCustomerId());
		map.put("company_category", visitCriteria.getCompanyDto().getCategory());
		
		List<VisitCriteria> list = dao.coReservationList(map);
	}
	@Test
	public void selectOptions() throws Exception{
//		DressInfo  dressInfo = dao.selectDressInfo(1);
//		MakeupInfo makeupInfo = dao.selectMakeupInfo(1);		
//		PackageCategoryDto packageCategoryDto = dao.selectPackCa(1);
		StudioInfo studioInfo =dao.selectStudioInfo(1);
		
//		System.out.println("dressInfo ="+dressInfo);
//		System.out.println("makeupInfo ="+makeupInfo);
//		System.out.println("packageCategoryDto ="+packageCategoryDto);
//		System.out.println("studioInfo ="+studioInfo);
	}
	@Test
	public void selectPackage() throws Exception{

		List<PackageDto> list =packageDao.selectBestPackages();
		System.out.println(list);
	}

}
