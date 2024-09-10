package kr.co.wedder.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wedder.mypage.dao.MyPageDao;
import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.MyPageDTO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDao myPageDao;
	

	@Override
	public MyPageDTO read(Integer customer_id) throws Exception {
		MyPageDTO myPageDto=myPageDao.selectOne(customer_id);
		
		return myPageDto;
	}

	@Override
	public CompanyDto getList(Integer company_id) throws Exception {
		// TODO Auto-generated method stub
		return myPageDao.selectCompany(company_id);
	}

}
