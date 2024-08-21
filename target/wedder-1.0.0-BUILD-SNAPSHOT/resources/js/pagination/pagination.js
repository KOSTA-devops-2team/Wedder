let currentPage = 1;
const totalItems = 100; // 전체 아이템 수
const itemsPerPage = 16; // 페이지당 아이템 수
const totalPages = Math.ceil(totalItems / itemsPerPage);

document.addEventListener("DOMContentLoaded", () => {
    loadPagination();
});

function loadPagination() {
    fetch("../../components/pagination/pagination.html")
        .then((response) => response.text())
        .then((data) => {
            document.getElementById("pagination-placeholder").innerHTML = data;
            addPaginationEventListeners();
            updatePagination();
        });
}

function addPaginationEventListeners() {
    document
        .getElementById("startBtn")
        .addEventListener("click", () => goToPage(1));
    document
        .getElementById("prev")
        .addEventListener("click", () => goToPage(currentPage - 1));
    document
        .getElementById("next")
        .addEventListener("click", () => goToPage(currentPage + 1));
    document
        .getElementById("endBtn")
        .addEventListener("click", () => goToPage(totalPages));
}

function goToPage(page) {
    if (page < 1 || page > totalPages) return;
    currentPage = page;
    updatePagination();
}

// 페이지 로드 되자마자 숫자 생성
function updatePagination() {
    const paginationLinks = document.getElementById("paginationLinks");
    paginationLinks.innerHTML = "";

    for (let i = 1; i <= totalPages; i++) {
        const link = document.createElement("a");
        link.href = "#";
        link.className = "link" + (i === currentPage ? " active" : "");
        link.textContent = i;
        link.addEventListener("click", (e) => {
            e.preventDefault();
            goToPage(i);
        });
        paginationLinks.appendChild(link);
    }
}
