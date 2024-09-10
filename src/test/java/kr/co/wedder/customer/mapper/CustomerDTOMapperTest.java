package kr.co.wedder.customer.mapper;

import kr.co.wedder.customer.domain.CustomerDTO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.SQLException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/root-context.xml")
public class CustomerDTOMapperTest {

    @Autowired
    private CustomerMapper customermapper;

    @Test
    public void customerJoin() throws SQLException {
        CustomerDTO customerDTO = new CustomerDTO();

        customerDTO.setName("test");
        customerDTO.setPassword("test");
        customerDTO.setGender(1);
        customerDTO.setEmail("test1@test.com");
        customerDTO.setPhone("test010");
        customerDTO.setId("tested");

        customermapper.customerJoin(customerDTO);

    }
}
