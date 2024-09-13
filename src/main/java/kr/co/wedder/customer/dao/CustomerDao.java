package kr.co.wedder.customer.dao;

import kr.co.wedder.customer.domain.CustomerDTO;

public interface CustomerDao {

    int deleteCustomer(String id);

    CustomerDTO selectCustomer(String id);

    int insertCustomer(CustomerDTO customerDTO);

    int updateCustomer(CustomerDTO customerDTO);

    void deleteAll() throws Exception;

    CustomerDTO customerJoin(CustomerDTO customerDTO);

    CustomerDTO findById(String id);
}

