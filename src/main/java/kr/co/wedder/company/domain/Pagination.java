package kr.co.wedder.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Pagination {
//    private int page;
//    private int pageSize;
    private SearchItem sc;
    private int totalListCnt;     // 게시물 총 건수
    public final int NAV_SIZE = 10;  // page navigation size
    private int totalPageCnt;       // 전체 페이지 갯수

    private int beginPage;          // 화면에 보여줄 첫 페이지
    private int endPage;            // 화면에 보여줄 마지막 페이지
    private int limitStart;         // LIMIT 시작 위치
    private boolean showNext = false;   // 이후 보여줄지 여부
    private boolean showPrev = false;   // 이전 보여줄지 여부

    public Pagination(SearchItem sc, int totalListCnt) {
        if (totalListCnt > 0) {
            this.sc = sc;
            this.totalListCnt = totalListCnt;
            doPaging(totalListCnt, sc);
        }
    }
    private void doPaging(int totalRecordCnt, SearchItem sc) {
        // 전체 페이지 수
        this.totalPageCnt = totalRecordCnt / sc.getPageSize() + (totalRecordCnt % sc.getPageSize() == 0 ? 0 : 1);			//전체 페이지 갯수
        //
        this.sc.setPage(Math.min(sc.getPage(), totalPageCnt));				// page가 tatalPage보다 크지 않음
        this.beginPage = (this.sc.getPage()-1) / NAV_SIZE * NAV_SIZE + 1;							//첫 페이지 숫자
        this.endPage = Math.min(this.beginPage + this.NAV_SIZE - 1, totalPageCnt);	//마지막 페이지 숫자
        this.limitStart = (sc.getPage() - 1) * sc.getRecordPerPage();
        this.showPrev = beginPage != 1;
        this.showNext = endPage != totalPageCnt;

        // 현재 페이지 번호가 전체 페이지 수보다 큰 경우, 현재 페이지 번호에 전체 페이지 수 저장
        if (sc.getPage() > totalPageCnt) {
            sc.setPage(totalPageCnt);
        }
    }






}
