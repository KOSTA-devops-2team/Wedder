package kr.co.wedder.customer.service;

import kr.co.wedder.customer.dao.CustomerDao;
import kr.co.wedder.customer.domain.CustomerDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    CustomerDao customerDao;

    @Override
    public boolean customerJoin(CustomerDto customerDTO) {
        // 회원 가입 처리 로직
        try {
            CustomerDto existingCustomer = customerDao.findById(customerDTO.getId());
            if (existingCustomer != null) {
                return false; // 중복된 아이디가 있으면 false 반환
            }
            customerDao.customerJoin(customerDTO);
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean checkIdAvailability(String id) {
        // 아이디 중복 체크 로직
        CustomerDto existingCustomer = customerDao.findById(id);
        return existingCustomer == null; // 중복된 아이디가 없으면 true 반환
    }
}
