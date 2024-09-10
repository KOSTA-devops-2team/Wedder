package kr.co.wedder.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import kr.co.wedder.customer.domain.CustomerDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDaoImpl implements CustomerDao {

    @Autowired
    DataSource ds;

    final int FAIL = 0;

    @Override
    public int deleteCustomer(String id) {
        int rowCnt = FAIL;

        Connection conn = null;
        PreparedStatement pstmt = null;

        String sql = "delete from customer where id = ? ";

        try {
            conn = ds.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);

            return pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return FAIL;
        } finally {
            close(pstmt, conn);
        }
    }

    @Override
    public CustomerDTO selectCustomer(String id) {
        CustomerDTO customerDTO = null;

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from customer where id= ? ";

        try {
            conn = ds.getConnection();

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();		//select

            if(rs.next()) {
                customerDTO = new CustomerDTO();
                customerDTO.setId(rs.getString("id"));  // 숫자가 아닌 칼럼명???
                customerDTO.setPassword(rs.getString("password"));
                customerDTO.setName(rs.getString("name"));
                customerDTO.setPhone(rs.getString("phone"));
                customerDTO.setEmail(rs.getString("email"));
                customerDTO.setGender(rs.getInt("gender"));
                // customerDTO.setGender(rs.getBoolean(6));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            close(rs, pstmt, conn);
        }
        return customerDTO;
    }

    @Override
    public int insertCustomer(CustomerDTO customerDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        String sql = "insert into customer (id, password, name, email, phone, gender) values (?, ?, ?, ?, ?, ? )";

        try {
            conn = ds.getConnection();

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, customerDTO.getId());
            pstmt.setString(2, customerDTO.getPassword());
            pstmt.setString(3, customerDTO.getName());
            pstmt.setString(4, customerDTO.getEmail());
            pstmt.setString(5, customerDTO.getPhone());
            pstmt.setInt(6, customerDTO.isGender());

            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return FAIL;

        } finally {
            close(pstmt, conn);
        }

    }

    private void close(AutoCloseable...closeables) {
        for(AutoCloseable autoCloseable : closeables) {
            if (autoCloseable != null)
                try {
                    autoCloseable.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
        }

    }

    @Override
    public int updateCustomer(CustomerDTO customerDTO) {
        int rowCnt = FAIL;

        String sql = "update customer set password = ?, name = ?, phone = ?, email = ? , gender = ? where id = ? ";

        Connection conn;
        try {
            conn = ds.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, customerDTO.getPassword());
            pstmt.setString(2, customerDTO.getName());
            pstmt.setString(3, customerDTO.getPhone());
            pstmt.setString(4, customerDTO.getEmail());
            pstmt.setInt(5, customerDTO.isGender());
            pstmt.setString(6, customerDTO.getId());

            rowCnt = pstmt.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return FAIL;
        }

        return rowCnt;
    }

    @Override
    public void deleteAll() throws Exception {
        Connection conn = ds.getConnection();

        String sql = "delete from customer ";

        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.executeUpdate();		//insert, delete, update()

    }

}

