package kr.co.wedder.customer.service;

import kr.co.wedder.customer.domain.CustomerDto;

public interface CustomerService {

    boolean loginCheck(String id, String password);
    boolean customerJoin(CustomerDto customerDTO) throws Exception;
    boolean checkIdAvailability(String id);
}
