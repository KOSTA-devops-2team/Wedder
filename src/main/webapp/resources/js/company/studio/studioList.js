$(document).ready(function () {
    $(".search-btn").on("click", function (e) {
        e.preventDefault()
        performSearch()
    })
    $("#keyword").on("keypress",function(e){
        if (e.which === 13){ //Enter 키 코드 13
            e.preventDefault()
            performSearch()
        }
    })
    function performSearch() {
        // 입력된 검색어 가져오기
        const keyword = $('#keyword').val()
        const category = $('#category').val();
        console.log("중간 확인" + keyword)
        $.ajax({
            type: 'POST',
            url: '/studio',
            data: {companyName: keyword, category: category},
            dataType: 'json',
            success: function (data, status, xhr) {
                if (data.length > 1) {
                    console.log("상태:", status);  // 요청 상태
                    console.log("응답 데이터:", data);  // 서버에서 반환된 데이터
                    searchCompanyList(data);
                } else {
                    Swal.fire({
                        title: "검색 결과가 없습니다.",
                        icon  : "warning",
                        text: "다른 조건으로 검색해주세요.",
                        confirmButtonText: "확인",
                        confirmButtonColor: '#ca1a5a',
                        closeOnClickOutside : false // 백그라운드 클릭해도 안꺼짐
                    })
                }
            },
            error: function (xhr, status, error) {
                console.log("Error function reached");
                console.log("검색 실패" + status + error)
                console.log("xhr :" +xhr )
                alert("검색 중 오류가 발생했습니다.")
            }
        })
    }

    // 검색 결과를 처리하는 함수
    function searchCompanyList(companyList) {
        // $('.list-all').empty();
        let companyHtml = '';
        companyList.forEach(function (company) {
            companyHtml += `
                    <div class="card">
                    <a href="/studio/detail/${company.companyId}">
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
                        <div class="studio-address">주소 : ${company.companyAddress}</div>
                        <div class="phone-num">연락처 : ${company.phoneNum}</div>
                        <div class="operation-hours">영업시간 : ${company.operationHours}</div>
                        <div class="composition">상품 구성 : ${company.studioDto.product}</div>
                        <div class="budget">촬영소요시간 : ${company.studioDto.shootDuration}</div>
                    </div>
                    </div>`;
        })
        $('.list-all').html(companyHtml);
    }
})

    function goToPage(page) {

        console.log("goToPage 함수 호출됨, 페이지 번호:", page);
        const pageSize = 9; // 페이지당 보여줄 업체 수
        $.ajax({
            url: '/studio/ajax',
            type: 'GET',
            data: {
                page: page,
                pageSize: pageSize
            },
            success: function (response) {
                console.log('AJAX 응답 데이터:', response);
                updateStudioList(response.studioList);
                updatePagination(response.pagination);
            },
            error: function (xhr, status, error) {
                console.log('AJAX 요청 실패', status, error);
            }
        });
    }

    // 리스트 데이터 함수
    function updateStudioList(studioList) {
        if (!studioList || studioList.length === 0) {
            console.error("studioList가 비어 있습니다.");
            $('.list-all').html('<p>표시할 항목이 없습니다.</p>');  // 항목이 없는 경우 처리
            return;
        }
        let html = '';
        studioList.forEach(function (studio) {
            html += `<div class="card">
                        <a href="/studio/detail/${studio.companyId}">
                            <img src="${studio.imgUrl}" alt="스튜디오 이미지"/>
                        </a>
                        <div class="card-info">
                            <div class="studio-name">${studio.companyName}
                            <a href="${studio.instagramUrl}"
                               target="_blank"
                               class="instagram">
                            <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/instagram.png"
                                 alt="인스타 이미지"/></a>
                            </div>
                            <div class="studio-address">주소 : ${studio.companyAddress}</div>
                            <div class="phone-num">연락처 : ${studio.phoneNum}</div>
                            <div class="operation-hours">영업시간 : ${studio.operationHours}</div>
                            <div class="composition">상품 구성 : ${studio.studioDto.product}</div>
                            <div class="budget">촬영소요시간 : ${studio.studioDto.shootDuration}</div>
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
                paginationHtml += `<li><a href="#" class="page-btn" onclick="goToPage(1)"}>&laquo;&laquo;</a></li>`;
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
                paginationHtml += `<li><a href="#" class="page-btn" onclick="goToPage(${pagination.totalPageCnt})"}>&raquo;&raquo;</a></li>`;
            } else {
                paginationHtml += `<li><a href="#" class="page-btn disabled">&raquo;&raquo;</a></li>`;
            }

        } else {
            console.error("Pagination 객체가 없습니다.");
        }
        $('#pagination').html(paginationHtml);
    }
