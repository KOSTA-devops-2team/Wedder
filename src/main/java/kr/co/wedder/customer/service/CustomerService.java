package kr.co.wedder.customer.service;

import kr.co.wedder.customer.domain.CustomerDTO;

public interface CustomerService {
    public boolean customerJoin(CustomerDTO customerDTO) throws Exception;
}
