package kr.co.wedder.mypage.dao;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.MyPageDTO;

public interface MyPageDao {
	//mypage
	MyPageDTO selectOne(Integer customer_id) throws Exception;
	//company
	CompanyDto selectCompany(CompanyDto companyDto) throws Exception;
}
