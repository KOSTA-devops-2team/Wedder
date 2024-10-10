package kr.co.wedder.company.domain;

import lombok.*;
import org.springframework.web.util.UriComponentsBuilder;

import static java.lang.Math.max;
import static java.lang.Math.min;
import static java.util.Objects.requireNonNullElse;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SearchItem {
    public static final int DEFAULT_PAGE_SIZE = 12;
    public static final int MIN_PAGE_SIZE = 5;
    public static final int MAX_PAGE_SIZE = 50;

    private int page = 1;					// 현재 페이지
    private int recordPerPage = DEFAULT_PAGE_SIZE;	// 한 페이지당 게시물 건수
    private int pageSize;           // 화면 하단에 출력할 페이지 개수
    private String searchType = "";
    private String keyword = "";
    //private Integer offset;

//    public SearchItem(Integer page, Integer recordPerPage) {
//        this(page, recordPerPage, "", "");
//    }

    // 페이지 지정해주지 않은 경우
    public String getQueryString() {
        return getQueryString(page);
    }

    // 페이지 지정해 주는 경우
    // ?page=10&pageSize=10&option=A&keyword=title
    public String getQueryString(Integer page) {
        return UriComponentsBuilder.newInstance()
                .queryParam("page", page)
                .queryParam("pageSize", pageSize)
                .queryParam("searchType", searchType)
                .queryParam("keyword", keyword)
                .build().toString();
    }

    public void setPageSize(int pageSize) {
        this.pageSize = requireNonNullElse(pageSize, DEFAULT_PAGE_SIZE);
        //   MIN_PAGE_SIZE <=  pageSize <= MAX_PAGE_SIZE
        this.pageSize = max(MIN_PAGE_SIZE, min(this.pageSize, MAX_PAGE_SIZE));
    }

    public Integer getOffset() {
        int result = (page-1) * pageSize;
        if(result < 0) result = 0;
        return result;
    }
}
