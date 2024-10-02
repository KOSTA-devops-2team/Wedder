package kr.co.wedder.customer.dao;

import kr.co.wedder.customer.domain.CustomerDto;

public interface CustomerDao {

    CustomerDto customerJoin(CustomerDto customerDTO);

    CustomerDto findById(String id);
}

