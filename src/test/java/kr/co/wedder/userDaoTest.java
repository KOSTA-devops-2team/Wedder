package kr.co.wedder;

import static org.junit.Assert.assertTrue;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class userDaoTest {
	@Autowired
	DataSource ds;
	
	@Test
	public void springJdbcConnTest() throws SQLException{
		Connection conn = ds.getConnection();
		System.out.println("conn ="+conn);
		assertTrue(conn !=null);
	}
	
	
}
