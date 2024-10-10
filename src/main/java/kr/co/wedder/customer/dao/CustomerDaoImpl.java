package kr.co.wedder.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import kr.co.wedder.customer.domain.CustomerDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDaoImpl implements CustomerDao {
    @Autowired
    private SqlSession session;
    private static String namespace="kr.co.wedder.customer.dao.CustomerMapper.";

    @Override
    public CustomerDto customerJoin(CustomerDto customerDTO) {
        return session.selectOne(namespace+"customerJoin",customerDTO);
    }

    @Override
    public CustomerDto findById(String id) {
        return session.selectOne(namespace+"findById",id);
    }

}

