package kr.co.wedder.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.wedder.user.domain.UserDto;

public class UserDaoImpl implements UserDao {
	@Autowired
	private SqlSession session;
	private static String namespace="kr.co.wedder.user.domain.UserMapper.";
	

	@Override
	public int insertuser(UserDto userdto) {
		return session.insert(namespace+"insert",userdto);
	}

}
