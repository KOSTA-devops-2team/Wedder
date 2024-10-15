$(document).ready(function () {
    // goToPage(1)
    $(".search-btn").on("click", function (e) {
        e.preventDefault()
        performSearch()
    })
    $("#keyword").on("keypress", function (e) {
        if (e.which === 13) { //Enter 키 코드 13
            e.preventDefault()
            performSearch()
        }
    })

    function performSearch() {
        // 입력된 검색어 가져오기
        const keyword = $('#keyword').val()
        const category = $('#category').val();
        const page = 1; // 검색 시에는 첫 페이지로 고정
        const pageSize = 9; // 한 페이지에 표시할 개수
        const url = keyword ? '/dress/search' : '/dress/page'; // 검색어가 있으면 POST, 없으면 GET

        console.log("검색 실행: keyword = " + keyword + ", page = " + page);

        $.ajax({
            url: url,
            type: keyword ? 'POST' : 'GET',
            data: {
                page: page, pageSize: pageSize,
                companyName: keyword, category: category
            },
            dataType: 'json',
            success: function (data, status) {
                if (data.dressList.length > 0) {
                    console.log("search 상태:", status);  // 요청 상태
                    console.log("search 데이터:", data);  // 서버에서 반환된 데이터
                    searchCompanyList(data.dressList);
                    updatePagination(data.pagination);
                } else {
                    Swal.fire({
                        title: "검색 결과가 없습니다.",
                        icon: "warning",
                        text: "다른 조건으로 검색해주세요.",
                        confirmButtonText: "확인",
                        confirmButtonColor: '#ca1a5a',
                        closeOnClickOutside: false // 백그라운드 클릭해도 안꺼짐
                    })
                }
            },
            error: function (xhr, status, error) {
                console.log("검색 실패" + status + error)
                console.log("xhr :" + xhr)
            }
        });
    }
});

    function goToPage(page) {

        const pageSize = 9; // 페이지당 보여줄 업체 수
        const keyword = $('#keyword').val(); // 검색어
        const url = keyword ? '/dress/search' : '/dress/page'; // 검색어가 있으면 POST, 없으면 GET

        console.log("goToPage 호출, page: " + page + ", keyword: " + keyword);

        $.ajax({
            url: url,
            type: keyword ? 'POST' : 'GET',
            data: {
                page: page,
                pageSize: pageSize,
                companyName: keyword
            },
            success: function (response) {
                console.log('pagination 응답 데이터:', response);
                searchCompanyList(response.dressList);
                updatePagination(response.pagination);
            },
            error: function (status, error) {
                console.log('AJAX 요청 실패', status, error);
            }
        });
    }

    // 검색 결과를 처리하는 함수
    function searchCompanyList(dressList) {
        // dressList가 null이나 undefined일 경우 빈 배열로 설정
        dressList = dressList || [];
        // $('.list-all').empty();
        let companyListHtml = '';
        dressList.forEach(function (company) {
            companyListHtml += `
                        <div class="card">
                        <a href="/dress/detail/${company.companyId}">
                        <img class="card-img" src ="${company.imgUrl}"/></a>
                        <div class="card-info">
                            <div class="studio-name">
                                ${company.companyName}
                                <a
                                        href="${company.instagramUrl}"
                                        target="_blank"
                                        class="instagram"
                                >
                                    <img
                                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/instagram.png"
                                            alt="인스타 이미지"
                                    />
                                </a>
                            </div>
                            <div class="dress-address">주소 : ${company.companyAddress}</div>
                            <div class="phone-num">연락처 : ${company.phoneNum}</div>
                            <div class="operation-hours">영업시간 : ${company.operationHours}</div>
                            <div class="dress-type">상품 유형 : ${company.dressDto.dressType}</div>
                            <div class="composition">상품 구성 : ${company.dressDto.composition}</div>
                        </div>
                        </div>`;
        })
        $('.list-all').html(companyListHtml);
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
