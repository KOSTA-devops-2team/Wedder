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
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MyPageDaoImplTest {
	
	@Autowired
	private MyPageDao dao;
	
	// 한 사람의 정보를 가져오는 거
	//@Test
	public void selectOne() throws Exception{
		assertTrue(dao !=null);
		MyPageDTO dto=dao.selectOne(1);
		System.out.println("dto="+dto);
	}
	
	//회사 정보 가져오는 거
	//@Test
	public void selectCompany() throws Exception{
		
		CompanyDto companyDto = dao.selectCompany(1);
		
		System.out.println("companyDto2="+companyDto);
	}
	//@Test
	public void selectReservation() throws Exception{
		ReservationDto reservationDto =dao.selectReservation(2);
		System.out.println("reservationDto"+reservationDto);
	}
	@Test
	public void todayVisitHistory() throws Exception{
		VisitCriteria VisitCriteria = new VisitCriteria();
		Map<String, Object> map= new HashMap<>();
		
		MyPageDTO myPageDto =dao.selectOne(1);
//		System.out.println(myPageDto);
		CompanyDto companyDto =dao.selectCompany(1);
//		System.out.println(companyDto);
		ReservationDto reservationDto=dao.selectReservation(1);
//		System.out.println(reservationDto);
		VisitCriteria.setMyPageDTO(myPageDto);
//		System.out.println(VisitCriteria.getMyPageDTO().getCustomer_id());
		VisitCriteria.setCompanyDto(companyDto);
//		System.out.println(VisitCriteria.getCompanyDto().getCompany_id());
		VisitCriteria.setReservationDto(reservationDto);
//		System.out.println(VisitCriteria.getReservationDto().getReservation_id());
		
		map.put("company_id", VisitCriteria.getCompanyDto().getCompany_id());
		map.put("customer_id", VisitCriteria.getMyPageDTO().getCustomer_id());
//		map.put("reservation_id", VisitCriteria.getReservationDto().getReservation_id());
		System.out.println("map"+map);
		
		List<VisitCriteria> visitCriteria = dao.todayVisitHistory(map);
		System.out.println("Criteria="+visitCriteria);
	}
}
