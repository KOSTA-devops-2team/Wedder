package kr.co.wedder.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wedder.mypage.dao.MyPageDao;
import kr.co.wedder.mypage.domain.CompanyDto;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDao myPageDao;
	
	@Override
	public CompanyDto getList(CompanyDto companyDto) throws Exception {
		return myPageDao.selectCompany(companyDto);
	}

}
