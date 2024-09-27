package kr.co.wedder.company.controller;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.HallDto;
import kr.co.wedder.company.domain.SearchItem;
import kr.co.wedder.company.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class HallRestController {

    @Autowired
    private CompanyService companyService;

    @PostMapping("/weddinghallList")
    public List<CompanyDto> searchCompany(@RequestParam(value = "companyName", required = false) String companyName) throws Exception {
        String category = "웨딩홀";
        return companyService.searchCompanies(companyName, category);
    }
}
