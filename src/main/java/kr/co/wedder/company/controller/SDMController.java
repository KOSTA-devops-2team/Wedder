package kr.co.wedder.company.controller;

import kr.co.wedder.company.domain.CompanyDto;
import kr.co.wedder.company.domain.CompanyImageDto;
import kr.co.wedder.company.domain.Pagination;
import kr.co.wedder.company.service.CompanyService;
import kr.co.wedder.mypage.domain.OptionDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/")
public class SDMController {

    @Autowired
    CompanyService companyService;

    @GetMapping(value = "studio")
    public String studioList(@RequestParam(value = "page", defaultValue = "1") int page,
                             @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                             @RequestParam(value = "companyName", required = false) String companyName, Model m) {
        String category = "스튜디오";
        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);

            // 페이지네이션
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);
            m.addAttribute("pagination", pagination);

            // 검색어 포함 업체 리스트
            List<CompanyDto> studioList = companyService.getCompanyList(pagination, companyName, category);
            m.addAttribute("studioList", studioList);

            // 디버깅 로그
            System.out.println("Controller - startList: " + pagination.getStartList());
            System.out.println("Controller - pageSize: " + pagination.getPageSize());
            System.out.println("Controller - page: " + pagination.getPage());
            System.out.println("Controller - companyName: " + companyName);

            } catch (Exception e) {
                e.printStackTrace();
            }
        return "company/studio/studioList";
    }

    @GetMapping(value = "studio/detail/{companyId}")
    public String studioDetail(@PathVariable("companyId") int companyId, Model m) {
        String category = "스튜디오";

        try {
            List<CompanyDto> studioDetail = companyService.getStudioDetail(companyId);
            m.addAttribute("studioDetail", studioDetail);
            m.addAttribute("category", category);

            List<CompanyImageDto> imgList = companyService.getCompanyImages(companyId);
            m.addAttribute("imgList", imgList);
            System.out.println("controller - studioDetail: " + studioDetail);

            List<OptionDto> optionList = companyService.getOption(category);
            m.addAttribute("optionList", optionList);
            System.out.println("controller - optionList: " + optionList);
        }
        catch (Exception e) {
            e.printStackTrace();
            return "company/studio/studioList";
        }
        return "company/studio/studioDetail";
    }

    @GetMapping (value = "dress")
    public String dressList(@RequestParam(value = "page", defaultValue = "1") int page,
                            @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                            @RequestParam(value = "companyName", required = false) String companyName, Model m) {
        String category = "드레스";
        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);

            // 페이지네이션
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);
            m.addAttribute("pagination", pagination);

            // 검색어 포함 업체 리스트
            List<CompanyDto> dressList = companyService.getCompanyList(pagination, companyName, category);
            m.addAttribute("dressList", dressList);

            // 디버깅 로그
            System.out.println("Controller - startList: " + pagination.getStartList());
            System.out.println("Controller - pageSize: " + pagination.getPageSize());
            System.out.println("Controller - page: " + pagination.getPage());
            System.out.println("Controller - companyName: " + companyName);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "company/dress/dressList";
    }

    @GetMapping(value = "dress/detail/{companyId}")
    public String dressDetail(@PathVariable("companyId") int companyId, Model m) {
        String category = "드레스";

        try {
            List<CompanyDto> dressDetail = companyService.getDressDetail(companyId);
            m.addAttribute("dressDetail", dressDetail);

            List<CompanyImageDto> imgList = companyService.getCompanyImages(companyId);
            m.addAttribute("imgList", imgList);

            System.out.println("controller - dressId: " + companyId);
            System.out.println("controller - dressDetail: " + dressDetail);
        }
        catch (Exception e) {
            e.printStackTrace();
            return "company/dress/dressList";
        }
        return "company/dress/dressDetail";
    }

    @GetMapping(value = "makeup")
    public String makeupList(@RequestParam(value = "page", defaultValue = "1") int page,
                             @RequestParam(value = "pageSize", defaultValue = "9") int pageSize,
                             @RequestParam(value = "companyName", required = false) String companyName, Model m) {
        String category = "메이크업";
        try {
            // 게시글 총 갯수
            int totalListCnt = companyService.getCompanyListCnt(companyName, category);

            // 페이지네이션
            Pagination pagination = new Pagination();
            pagination.doPaging(page, pageSize, totalListCnt);
            m.addAttribute("pagination", pagination);

            // 검색어 포함 업체 리스트
            List<CompanyDto> makeupList = companyService.getCompanyList(pagination, companyName, category);
            m.addAttribute("makeupList", makeupList);

            // 디버깅 로그
            System.out.println("Controller - startList: " + pagination.getStartList());
            System.out.println("Controller - pageSize: " + pagination.getPageSize());
            System.out.println("Controller - page: " + pagination.getPage());
            System.out.println("Controller - companyName: " + companyName);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "company/makeup/makeupList";
    }

    @GetMapping(value = "makeup/detail/{companyId}")
    public String makeupDetail(@PathVariable("companyId") int companyId, Model m) {
        String category = "메이크업";

        try {
            List<CompanyDto> makeupDetail = companyService.getMakeupDetail(companyId);
            m.addAttribute("makeupDetail", makeupDetail);

            List<CompanyImageDto> imgList = companyService.getCompanyImages(companyId);
            m.addAttribute("imgList", imgList);

            System.out.println("controller - makeupId: " + companyId);
            System.out.println("controller - makeupDetail: " + makeupDetail);
        }
        catch (Exception e) {
            e.printStackTrace();
            return "company/makeup/makeupList";
        }
        return "company/makeup/makeupDetail";
    }
}
