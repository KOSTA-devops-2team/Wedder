package kr.co.wedder.mypage.dao;

import kr.co.wedder.mypage.domain.MyPageDTO;

public interface MyPageDao {

	MyPageDTO selectOne(Integer customer_id) throws Exception;
}
