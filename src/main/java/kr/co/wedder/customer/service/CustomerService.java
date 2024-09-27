package kr.co.wedder.customer.service;

import kr.co.wedder.customer.domain.CustomerDTO;

public interface CustomerService {
    boolean customerJoin(CustomerDTO customerDTO) throws Exception;

    boolean checkIdAvailability(String id);
}
