package kr.co.wedder.customer.dao;

import kr.co.wedder.customer.domain.CustomerDto;

public interface CustomerDao {

    int deleteCustomer(String id);

    CustomerDto selectCustomer(String id);

    int insertCustomer(CustomerDto customerDTO);

    int updateCustomer(CustomerDto customerDTO);

    void deleteAll() throws Exception;

    CustomerDto customerJoin(CustomerDto customerDTO);

    CustomerDto findById(String id);
}

