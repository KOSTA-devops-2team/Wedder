package kr.co.wedder.mypage.service;

import static org.junit.Assert.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.MyPageDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MyPageServiceImplTest {
	@Autowired
	private MyPageService service;

//	@Test
	public void selectCompany() throws Exception{
		CompanyDto companyDto = new CompanyDto();
		companyDto.setCompany_id(2);
		companyDto.setCompany_category("메이크업");
		
//		service.getList(companyDto);
	}
	
	@Test
	public void seslectCustomer() throws Exception{
		service.read(1);
	}
}
