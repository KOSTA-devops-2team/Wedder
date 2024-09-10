package kr.co.wedder.customer.service;

import kr.co.wedder.customer.domain.CustomerDTO;
import kr.co.wedder.customer.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    public boolean customerJoin(CustomerDTO customerDTO) throws Exception{
        customerDTO = new CustomerDTO();

        customerMapper.customerJoin(customerDTO);

        return false;
    }
}
