package kr.co.wedder.customer.dao;

import kr.co.wedder.customer.domain.CustomerDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.SQLException;

import static org.junit.Assert.assertTrue;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class customerDaoTest {
	@Autowired
	CustomerDao customerDao;
	
	@Test
	public void springJdbcConnTest() throws SQLException{
		CustomerDto customerDTOTest = new CustomerDto("1", "123","jongwon","02034434","p732@naver.co",1);
		CustomerDto customerDTO =customerDao.customerJoin(customerDTOTest);
		System.out.println(customerDTO);
		CustomerDto customerDTO1 = customerDao.findById(customerDTOTest.getId());
		System.out.println(customerDTO1);
	}
	
	
}
