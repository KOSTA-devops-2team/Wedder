package kr.co.wedder.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Pagination {
    public static final int DEFAULT_PAGE_SIZE = 9;
    public static final int DEFAULT_BUTTON_SIZE = 5;

    private int page;         // 현재 페이지
    private int pageSize = DEFAULT_PAGE_SIZE;         // 페이지 당 보여줄 게시물 수
    private int totalListCnt;     // 게시물 총 건수
    public final int NAV_SIZE = DEFAULT_BUTTON_SIZE;  // 버튼 갯수
    private int totalPageCnt;       // 전체 페이지 갯수

    private int startPage;          // 화면에 보여줄 첫 페이지
    private int endPage;            // 화면에 보여줄 마지막 페이지
    private int startList;         // 시작 위치 (게시판 시작 번호 sql에서필요)
    private boolean showPrev;   // 이전 보여줄지 여부
    private boolean showNext;   // 이후 보여줄지 여부

    public Pagination(int page, int pageSize, int totalListCnt) {
        System.out.println("Constructor - page before doPaging: " + page);
        System.out.println("Pagination 생성자 - pageSize: " + pageSize);
        if (totalListCnt > 0) {
            this.page = page;
            this.pageSize = pageSize;
            this.totalListCnt = totalListCnt;
            doPaging(page, pageSize, totalListCnt);
        }
        System.out.println("Constructor - page after doPaging: " + this.page);
    }

    public void doPaging(int page, int pageSize, int totalListCnt) {
        // 전체 페이지 수
        this.totalPageCnt = (int) Math.ceil((double) totalListCnt / pageSize);

        // 현재 페이지가 1보다 작을 경우 1로 설정
        if (page < 1) {
            page = 1;
        }
        if (this.totalPageCnt == 0) {
            this.totalPageCnt = 1; // 최소 페이지 수를 1로 설정
        }
        System.out.println("totalPageCnt: " + totalPageCnt);
        // 현재 페이지가 전체 페이지 수보다 크면 전체 페이지 수로 설정
//        if (page > totalPageCnt) {
//            page = totalPageCnt;
//        }
        // this.page에 유효한 page 값 저장
        this.page = page;
        // page가 tatalPage보다 크지 않음
        //this.page(Math.min(page, totalPageCnt));
        // 현재 페이지에 보여줄 시작 페이지 숫자
        this.startPage = (int) (Math.ceil((double) page / NAV_SIZE) - 1) * NAV_SIZE + 1;
        System.out.println("startPage: " + startPage);
        // 현재 페이지에 보여줄 마지막 페이지 숫자
        this.endPage = startPage + NAV_SIZE - 1;
        System.out.println("endPage: " + endPage);
        System.out.println("dto before - page :" + page);
        // 마지막 페이지가 전체 페이지 수를 초과하지 않도록 설정
        if (endPage > totalPageCnt) {
            endPage = totalPageCnt;
        }
        this.startList = (page - 1) * pageSize;
        System.out.println("dto after - startList: " + startList);
        this.showPrev = startList > 1;
        this.showNext = page < totalPageCnt;

        System.out.println("dto after - page: " + this.page);
    }
}
