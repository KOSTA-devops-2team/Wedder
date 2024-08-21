/* 예약 시간대 선택 */
document.addEventListener("DOMContentLoaded", function() {
    document.querySelectorAll(".time-slot").forEach((item) => {
        item.addEventListener("click", () => {
            if (item.classList.contains("time-slot-selected")) {
                document.querySelectorAll(".time-slot").forEach((btn) => {
                    btn.classList.remove("time-slot-selected");
                });
            } else {
                document.querySelectorAll(".time-slot").forEach((btn) => {
                    btn.classList.remove("time-slot-selected");
                });
                item.classList.add("time-slot-selected");
            }
        });
    });
});