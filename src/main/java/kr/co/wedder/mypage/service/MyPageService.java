package kr.co.wedder.mypage.service;

import java.util.List;

import kr.co.wedder.mypage.domain.CompanyDto;
import kr.co.wedder.mypage.domain.MyPageDTO;

public interface MyPageService {
	CompanyDto getList(CompanyDto companyDto) throws Exception;
}
