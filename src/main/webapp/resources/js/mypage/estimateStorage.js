/* 모달창 */
document.addEventListener("DOMContentLoaded", function () {
    const modal = document.querySelector(".modal");
    const closeBtn = document.querySelector(".modal-close-btn");

    document.querySelectorAll(".icon").forEach((icon) => {
        icon.addEventListener("click", () => {
            modal.classList.add("show");
        })
    });
    
    closeBtn.addEventListener("click", function() {
        modal.classList.remove("show");
    });

    /* 삭제 모달창 */
    const modal2 = document.querySelector(".modal2");
    const closeBtn2 = document.querySelector(".cancel-btn");
    const modal3 = document.querySelector(".modal3");
    const closeBtn3 = document.querySelector(".cancel-btn2");

    document.querySelectorAll(".storage-delete").forEach((item) => {
        item.addEventListener("click", () => {
            modal2.classList.add("show2");
        })
    });

    closeBtn2.addEventListener("click", function() {
        modal2.classList.remove("show2")
    }) 

    document.querySelectorAll(".del-list").forEach((item) => {
        item.addEventListener("click", () => {
            modal3.classList.add("show3");
        })
    });
    closeBtn3.addEventListener("click", function() {
        modal3.classList.remove("show3")
    }) 


    /* 외부 클릭 시 모달창 닫기 */
    window.addEventListener("click", function(event) {
        if (event.target === modal) {
            modal.classList.remove("show");
        }
        if (event.target === modal2) {
            modal2.classList.remove("show2");
        }
        if (event.target === modal3) {
            modal3.classList.remove("show3");
        }
    });
  });

