// let currentPage = 1;
// const totalItems = 100; // 전체 아이템 수
// const itemsPerPage = 16; // 페이지당 아이템 수
// const totalPages = Math.ceil(totalItems / itemsPerPage);
//
// document.addEventListener("DOMContentLoaded", () => {
//     loadPagination();
// });
//
// function loadPagination() {
//     fetch("../../components/pagination/pagination.html")
//         .then((response) => response.text())
//         .then((data) => {
//             document.getElementById("pagination-placeholder").innerHTML = data;
//             addPaginationEventListeners();
//             updatePagination();
//         });
// }
//
// function addPaginationEventListeners() {
//     document
//         .getElementById("startBtn")
//         .addEventListener("click", () => goToPage(1));
//     document
//         .getElementById("prev")
//         .addEventListener("click", () => goToPage(currentPage - 1));
//     document
//         .getElementById("next")
//         .addEventListener("click", () => goToPage(currentPage + 1));
//     document
//         .getElementById("endBtn")
//         .addEventListener("click", () => goToPage(totalPages));
// }
//
// function goToPage(page) {
//     if (page < 1 || page > totalPages) return;
//     currentPage = page;
//     updatePagination();
// }
//
// // 페이지 로드 되자마자 숫자 생성
// function updatePagination() {
//     const paginationLinks = document.getElementById("paginationLinks");
//     paginationLinks.innerHTML = "";
//
//     for (let i = 1; i <= totalPages; i++) {
//         const link = document.createElement("a");
//         link.href = "#";
//         link.className = "link" + (i === currentPage ? " active" : "");
//         link.textContent = i;
//         link.addEventListener("click", (e) => {
//             e.preventDefault();
//             goToPage(i);
//         });
//         paginationLinks.appendChild(link);
//     }
// }

$(document).ready(function () {
    $(document).on("click", '.pagination .page-btn', function (e) {
        e.preventDefault();

        // 클릭된 페이지 번호 가져오기
        let page = $(this).data('page');

        if (!page || page < 1) {
            console.error("잘못된 페이지 값: " + page);
            page = 1;  // 기본적으로 1페이지로 설정
        }
        console.log("Clicked page:" +page);
        changePage(page);

        if (page) {
            $.ajax({
                url: "/weddinghall/ajax",
                type: "GET",
                data: {
                    page: page,
                    pageSize: 9
                },
                dataType: "json",
                success: function (data) {
                    console.log("받은 데이터: ", data);
                    console.log("ajax Page:", page);
                    updateHallList(data.hallList);
                    updatePagination(data.pagination);
                    console.log("Total List Count:", data.totalListCnt);
                },
                error: function (error,status,xhr) {
                    console.log("AJAX 요청 실패"+ error);
                    console.log("Status: " + status);
                    console.log("Error: " + error);
                    console.log("Response: " + xhr.responseText);
                }
            });
        } else {
            console.error("페이지 값이 undefined입니다.");
        }
    });

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
                            <img src="resources/images/instagram2.png"
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
        let html = '';
        if (pagination && pagination.page && pagination.totalPageCnt) {
            console.log("Total Page Count: ", pagination.totalPageCnt);
            console.log("Current Page: ", pagination.page);
            // '처음' 버튼
            html += `<li><a href="#" class="page-btn ${pagination.page > 1 ? '' : 'disabled'}" data-page="1">&laquo;&laquo;</a></li>`;

            // '이전' 버튼
            if (pagination.page > 1) {
                html += `<li><a href="#" class="page-btn" data-page="${pagination.page - 1}">&laquo;</a></li>`;
            } else {
                html += `<li><a href="#" class="page-btn disabled" data-page="${pagination.page - 1}">&laquo;</a></li>`;
            }

            // 페이지 번호
            for (let p = pagination.startPage; p <= pagination.endPage; p++) {
                html += `<li><a href="#" class="page-btn ${pagination.page === p ? 'active' : ''}" data-page="${p}">${p}</a>
                     </li>`;
            }

            // '다음' 버튼
            if (pagination.page < pagination.totalPageCnt) {
                html += `<li><a href="#" class="page-btn" data-page="${pagination.page + 1}">&raquo;</a></li>`;
            } else {
                html += `<li><a href="#" class="page-btn disabled" data-page="${pagination.totalPageCnt}">&raquo;</a></li>`;
            }

            // '끝' 버튼
            if (pagination.page < pagination.totalPageCnt) {
                html += `<li><a href="#" class="page-btn" data-page="${pagination.totalPageCnt}">&raquo;&raquo;</a></li>`;
            } else {
                html += `<li><a href="#" class="page-btn disabled">&raquo;&raquo;</a></li>`;
            }
            // html += `<li>
            //             <a href="#" class="page-btn" id="endBtn" data-page="${pagination.totalPageCnt}">&raquo;&raquo;</a>
            //         </li></ul>`;
        } else {
            console.error("Pagination 객체가 없습니다.");
        }
        $('.pagination').html(html);
    }

    // 페이지 이동 함수
    function changePage(page) {
        if (!page || isNaN(page)) {
            console.error("잘못된 페이지 값: " + page);
            return;
        }
        $.ajax({
            url: "/weddinghall/ajax",
            type: "GET",
            data: { page: page, pageSize: 9 },
            dataType: "json",
            success: function (data) {
                console.log("page data: " + data)
                updateHallList(data.hallList);
                updatePagination(data.pagination);
            },
            error: function (error) {
                console.error("페이지 AJAX 요청 실패", error);
            }
        });
    }
});