/* 방문 시간 선택 */
document.addEventListener("DOMContentLoaded", function() {
    document.querySelectorAll(".time-btn").forEach((item) => {
        item.addEventListener("click", () => {
            if (item.classList.contains("time-btn-selected")) {
                document.querySelectorAll(".time-btn").forEach((btn) => {
                    btn.classList.remove("time-btn-selected");
                });
            } else {
                document.querySelectorAll(".time-btn").forEach((btn) => {
                    btn.classList.remove("time-btn-selected");
                });
                item.classList.add("time-btn-selected");
            }
        });
    });
});

