/* 필터 탭 */
document.addEventListener("DOMContentLoaded", function() {
    const tabs = document.querySelectorAll(".tab");
    const contents = document.querySelectorAll(".body");

    // 첫 번째 탭 활성화
    if (tabs.length > 0 && contents.length > 0) {
        tabs[0].classList.add("tab-selected");
        contents[0].classList.add("contents-active");
    }

    tabs.forEach((tab, index) => {
        tab.addEventListener("click", () => {
            tabs.forEach((btn) => {
                btn.classList.remove("tab-selected");
            });
            contents.forEach((content) => {
                content.classList.remove("contents-active");
            });

            tab.classList.add("tab-selected");

            contents[index].classList.add("contents-active");
        });
    });
});

/* 모달창 */
document.addEventListener("DOMContentLoaded", function () {
    const modal1 = document.querySelector(".modal-region");
    const modal3 = document.querySelector(".modal-budget");
    const modalBtn1 = document.querySelector(".region-btn");
    const modalBtn3 = document.querySelector(".budget-btn");
    const closeBtn = document.querySelector(".cancel-btn");

    modalBtn1.addEventListener("click", function() {
        modal1.classList.add("show");
    });
    modalBtn3.addEventListener("click", function() {
        modal3.classList.add("show");
    });

    closeBtn.addEventListener("click", function() {
        modal1.classList.remove("show");
        modal3.classList.remove("show");
    });

    /* 외부 클릭 시 모달창 닫기 */ 
    window.addEventListener("click", function(event) {
        if (event.target === modal) {
            modal.classList.remove("show");
        }
        if (event.target === modal2) {
            modal3.classList.remove("show");
        }
    });
});
