package kr.co.wedder.mypage.dao;

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
public class MyPageDaoImplTest {
	
	@Autowired
	private MyPageDao dao;
	
	//@Test
	public void selectOne() throws Exception{
		assertTrue(dao !=null);
		MyPageDTO dto=dao.selectOne(1);
		System.out.println("dto="+dto);
	}
	@Test
	public void selectCompany() throws Exception{
		
		CompanyDto companyDto = new CompanyDto();
		companyDto.setCompany_id(2);
		companyDto.setCompany_category("메이크업");
		
		CompanyDto companyDto2 = dao.selectCompany(companyDto);
		System.out.println("companyDto2="+companyDto2);
	}
}
