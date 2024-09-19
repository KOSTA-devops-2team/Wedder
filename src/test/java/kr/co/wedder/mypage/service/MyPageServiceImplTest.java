package kr.co.wedder.mypage.service;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.wedder.company.domain.CompanyDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.wedder.mypage.domain.HistoryDto;
import kr.co.wedder.mypage.domain.MyPageDTO;
import kr.co.wedder.mypage.domain.ReservationDto;
import kr.co.wedder.mypage.domain.VisitCriteria;
import kr.co.wedder.mypage.domain.HallInfoDto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MyPageServiceImplTest {
	@Autowired
	private MyPageService service;

	@Test
	public void selectCompany() throws Exception{
		CompanyDto companyDto = new CompanyDto();
		companyDto.setCompanyId(2);
		companyDto.getCategory();
		System.out.println(companyDto);
//		service.getList(companyDto);
	}
	
	@Test
	public void seslectCustomer() throws Exception{
		service.customerRead(1);
	}
	@Test
	public void todayVisitHistory() throws Exception{
		Map<String, Object> map= new HashMap<>();
		
		MyPageDTO myPageDto =service.customerRead(1);
//		System.out.println(myPageDto);
		CompanyDto companyDto =service.companyRead(1);
//		System.out.println(companyDto);
		ReservationDto reservationDto=service.reservationRead(1);
//		System.out.println(reservationDto);
		HistoryDto historyDto = service.historyRead(1);
		HallInfoDto hallInfoDto = service.hallInfoRead(1);
		
		VisitCriteria visitCriteria = new VisitCriteria(companyDto, myPageDto, reservationDto,historyDto,hallInfoDto);
		map.put("company_id",  (Integer) visitCriteria.getCompanyDto().getCompanyId());
		map.put("customer_id", (Integer) visitCriteria.getMyPageDTO().getCustomerId());
		map.put("reservation_status", visitCriteria.getHistoryDto().getReservationStatus());

		System.out.println("========================");
		System.out.println("map"+map);
		System.out.println(visitCriteria);
		System.out.println("========================");
		List<VisitCriteria> list=service.todayVisitHistory(map);
		System.out.println("list= "+list.get(0));
	}
	
	//hallInfo
	@Test
	public void HallInfoServiceTest() throws Exception{
		HallInfoDto HallInfoDto = service.hallInfoRead(1);
		System.out.println("HallInfoDto ="+ HallInfoDto);
	}
}
