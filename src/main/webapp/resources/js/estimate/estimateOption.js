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

$(document).ready(function() {
    // 옵션 선택 버튼 클릭 시
    $(".select-option").on("click", function() {
        var optionId = $(this).data("option-id");
        var category = $(this).data("category");

        // 옵션 선택 AJAX 요청
        $.ajax({
            url: "/estimate/selectOption",
            method: "POST",
            contentType: "application/json",
            data: JSON.stringify({
                optionId: optionId,
                category: category
            }),
            success: function(response) {
                alert("옵션이 성공적으로 선택되었습니다.");
                // 선택된 옵션 목록 갱신 로직 추가 가능
            }
        });
    });
});