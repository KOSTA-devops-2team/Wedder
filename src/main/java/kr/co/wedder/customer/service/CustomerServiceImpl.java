package kr.co.wedder.customer.service;

import kr.co.wedder.customer.domain.CustomerDTO;
import kr.co.wedder.customer.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    public boolean customerJoin(CustomerDTO customerDTO) throws Exception{
        customerDTO = new CustomerDTO();

        customerMapper.customerJoin(customerDTO);

        return false;
    }
    @Override
    public boolean checkId(CustomerDTO customerDTO) {
        // 회원 가입 처리 로직
        try {
            CustomerDTO existingCustomer = customerMapper.findById(customerDTO.getId());
            if (existingCustomer != null) {
                return false; // 중복된 아이디가 있으면 false 반환
            }
            customerMapper.customerJoin(customerDTO);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean checkIdAvailability(String id) {
        // 아이디 중복 체크 로직
        CustomerDTO existingCustomer = customerMapper.findById(id);
        return existingCustomer == null; // 중복된 아이디가 없으면 true 반환
    }

    @Override
    public String login(String id, String password) {
        // 로그인 처리 로직
        CustomerDTO customerDTO = customerMapper.findById(id);
        if (customerDTO == null) {
            return "idFail";
        } else if (!customerDTO.getPassword().equals(password)) {
            return "pwFail";
        } else {
            return "loginSuccess";
        }
    }
}
