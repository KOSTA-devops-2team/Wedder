function goToPage(page) {

    console.log("goToPage 함수 호출됨, 페이지 번호:", page);
    const pageSize = 9; // 페이지당 보여줄 업체 수
    const keyword = $('#keyword').val(); // 검색어
    const url = keyword ? '/weddinghall/search' : '/weddinghall/page'; // 검색어가 있으면 POST, 없으면 GET

    console.log("goToPage 호출, page: " + page + ", keyword: " + keyword);

    $.ajax({
        url: url,
        type: 'GET',
        data: {
            page: page,
            pageSize: pageSize,
            companyName: keyword
        },
        success: function (response) {
            console.log('AJAX 응답 데이터:', response);
            updateHallList(response.hallList);
            updatePagination(response.pagination);
        },
        error: function (status, error) {
            console.log('AJAX 요청 실패', status, error);
        }
    });
}

// 리스트 데이터 함수
function updateHallList(hallList) {
    if (!hallList || hallList.length === 0) {
        console.error("hallList가 비어 있습니다.");
        $('.list-all').html('<p>표시할 항목이 없습니다.</p>');  // 항목이 없는 경우 처리
        return;
    }
    let html = '';
    hallList.forEach(function (hall) {
        html += `<div class="card">
                        <a href="/weddinghall/detail/${hall.companyId}">
                            <img src="${hall.imgUrl}" alt="웨딩홀 이미지"/>
                        </a>
                        <div class="card-info">
                            <div class="weddinghall-name">${hall.companyName}
                            <a href="${hall.instagramUrl}"
                               target="_blank"
                               class="instagram">
                            <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/instagram.png"
                                 alt="인스타 이미지"/></a>
                            </div>
                            <div class="weddinghall-address">주소 : ${hall.companyAddress}</div>
                            <div class="phone-num">연락처 : ${hall.phoneNum}</div>
                            <div class="operation-hours">영업시간 : ${hall.operationHours}</div>
                            <div class="meal-price">식사비 : ${hall.hallDto.mealPrice}</div>
                            <div class="minimum-guarantee">최소보증인원 : ${hall.hallDto.minPeople}</div>
                        </div>
                    </div>`;
    });
    $('.list-all').html(html);  // 새로운 목록으로 교체
}

// 페이지네이션 갱신 함수
function updatePagination(pagination) {
    console.log("현재 페이지 번호:", pagination.page);
    let paginationHtml = '';
    if (pagination && pagination.page && pagination.totalPageCnt) {
        console.log("Total Page Count: ", pagination.totalPageCnt);
        console.log("Current Page: ", pagination.page);

        // '처음' 버튼
        if (pagination.showPrev) {
            paginationHtml += `<li><a href="#" class="page-btn" onclick="goToPage(1)">&laquo;&laquo;</a></li>`;
        } else {
            paginationHtml += `<li><a href="#" class="page-btn disabled">&laquo;&laquo;</a></li>`;
        }
        // '이전' 버튼
        if (pagination.showPrev) {
            paginationHtml += `<li><a href="#" class="page-btn" onclick="goToPage(${pagination.page - 1})">&laquo;</a></li>`;
        } else {
            paginationHtml += `<li><a href="#" class="page-btn disabled">&laquo;</a></li>`;
        }

        // 페이지 번호
        for (let p = pagination.startPage; p <= pagination.endPage; p++) {
            paginationHtml += `<div class="page-btns" id="paginationLinks">
                                    <li>
                                        <a href="#" class="page-btn ${pagination.page === p ? 'active' : ''}" 
                                           onclick="goToPage(${p})">${p}
                                        </a>
                                    </li>
                                    </div>`;
        }

        // '다음' 버튼
        if (pagination.showNext) {
            paginationHtml += `<li>
                    <a href="#" class="page-btn" onclick="goToPage(${pagination.page + 1})">&raquo;</a></li>`;
        } else {
            paginationHtml += `<li><a href="#" class="page-btn disabled">&raquo;</a></li>`;
        }

        // '끝' 버튼
        if (pagination.page != pagination.totalPageCnt) {
            paginationHtml += `<li><a href="#" class="page-btn" onclick="goToPage(${pagination.totalPageCnt})">&raquo;&raquo;</a></li>`;
        } else {
            paginationHtml += `<li><a href="#" class="page-btn disabled">&raquo;&raquo;</a></li>`;
        }

    } else {
        console.error("Pagination 객체가 없습니다.");
    }
    $('#pagination').html(paginationHtml);
}
