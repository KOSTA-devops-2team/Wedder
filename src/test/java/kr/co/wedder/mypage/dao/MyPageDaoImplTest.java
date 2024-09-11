package kr.co.wedder.mypage.dao;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;
import kr.co.wedder.mypage.domain.hallInfoDto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MyPageDaoImplTest {
	
	@Autowired
	private MyPageDao dao;
	
	// 한 사람의 정보를 가져오는 거
	@Test
	public void selectOne() throws Exception{
		assertTrue(dao !=null);
		MyPageDTO dto=dao.selectOne(1);
		System.out.println("dto="+dto);
	}
	
	//회사 정보 가져오는 거
	//@Test
	public void selectCompany() throws Exception{
		CompanyDto companyDto = dao.selectCompany(1);
		System.out.println("companyDto2= "+companyDto);
	}
	//@Test
	public void selectReservation() throws Exception{
		ReservationDto reservationDto =dao.selectReservation(2);
		System.out.println("reservationDto= "+reservationDto);
	}
	//@Test
	public void selectHistory() throws Exception{
		HistoryDto historyDto = dao.selectHistory(1);
		System.out.println("historyDto= "+historyDto);
	}
	//@Test
	public void todayVisitHistory() throws Exception{
		
		Map<String, Object> map= new HashMap<>();
		
		MyPageDTO myPageDto =dao.selectOne(1);
//		System.out.println(myPageDto);
		CompanyDto companyDto =dao.selectCompany(1);
//		System.out.println(companyDto);
		ReservationDto reservationDto=dao.selectReservation(1);
//		System.out.println(reservationDto);
		HistoryDto historyDto = dao.selectHistory(1);
		hallInfoDto hallInfoDto = dao.selectHallInfo(1);
		
		
		VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDto, reservationDto, historyDto,hallInfoDto);
		map.put("company_id", (Integer) visitCriteria.getCompanyDto().getCompany_id());
		map.put("customer_id", (Integer) visitCriteria.getMyPageDTO().getCustomer_id());

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
//	//@Test
	public void todayVisitCount() throws Exception{
		Map<String, Object> map= new HashMap<>();
		MyPageDTO myPageDto =dao.selectOne(1);
//		System.out.println(myPageDto);
		CompanyDto companyDto =dao.selectCompany(1);
//		System.out.println(companyDto);
		ReservationDto reservationDto=dao.selectReservation(1);
//		System.out.println(reservationDto);
		HistoryDto historyDto = dao.selectHistory(1);
		hallInfoDto hallInfoDto = dao.selectHallInfo(1);
		
		VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDto, reservationDto, historyDto,hallInfoDto);
		map.put("company_id", (Integer) visitCriteria.getCompanyDto().getCompany_id());
		map.put("customer_id", (Integer) visitCriteria.getMyPageDTO().getCustomer_id());
		Integer cnt=dao.todayVisitCount(map);
		System.out.println("cnt"+cnt);
	}
	
	//@Test
	public void todayReservationHistory() throws Exception{		
		Integer company_id = 1;
		CompanyDto companyDto = dao.selectCompany(company_id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("company_category",companyDto.getCompany_category());
		List<CompanyDto> list = dao.todayReservationHistory(map);
	}
	@Test
	public void selectHallInfo() throws Exception{
		
		hallInfoDto hallInfoDto= dao.selectHallInfo(1);
		System.out.println("hallInfoDto= "+hallInfoDto);
	}
}
