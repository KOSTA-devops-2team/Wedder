/* 예약 확인 모달창 */
document.addEventListener("DOMContentLoaded", function () {
    const modal = document.querySelector(".modal");
    const modalBtn = document.querySelector(".btn-nxt");
    const closeBtn = document.querySelector(".cancel-btn");

  
    modalBtn.addEventListener("click", function() {
        modal.classList.add("show");
        modal2.classList.remove("show2");
    });

    closeBtn.addEventListener("click", function() {
        modal.classList.remove("show");
    });

    /* 예약 완료 모달창 */
    const modalNxt = document.querySelector(".check-btn");
    const modal2 = document.querySelector(".modal2");

    modalNxt.addEventListener("click", function() {
        modal.classList.remove("show");
        modal2.classList.add("show2");
    })

    /* 외부 클릭 시 모달창 닫기 */ 
    window.addEventListener("click", function(event) {
        if (event.target === modal) {
            modal.classList.remove("show");
        }
        /* if (event.target === modal2) {
            modal2.classList.remove("show2");
        } */
    });
  });
