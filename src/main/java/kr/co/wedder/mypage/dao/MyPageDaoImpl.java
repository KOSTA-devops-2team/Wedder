package kr.co.wedder.mypage.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.wedder.mypage.domain.MyPageDTO;

@Repository
public class MyPageDaoImpl implements MyPageDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace="kr.co.wedder.mypage.dao.MyPageMapper.";
	
	@Override
	public MyPageDTO selectOne(Integer customer_id) throws Exception {
		return session.selectOne(namespace+"selectOne",customer_id);
	}

}
