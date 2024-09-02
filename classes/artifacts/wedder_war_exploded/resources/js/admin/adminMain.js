document.addEventListener("DOMContentLoaded", function () {
    includeSidebar();
});

function includeSidebar() {
    fetch("../../components/sidebar/sidebarAdmin.html")
        .then((response) => response.text())
        .then((data) => {
            document.getElementById("admin-sidebar-placeholder").innerHTML =
                data;
        });
}

// 전달사항 더보기 & 닫기
document.querySelectorAll(".text-wrapper").forEach((wrapper) => {
    const text = wrapper.querySelector(".text");
    const moreText = wrapper.querySelector(".more-text");
    const lessText = wrapper.querySelector(".less-text");

    // 더보기 클릭 시
    moreText.addEventListener("click", (event) => {
        event.preventDefault();
        event.stopPropagation();
        moreText.style.display = "none";
        lessText.style.display = "block";
        text.style.display = "inline-block";
    });

    // 닫기 클릭 시
    lessText.addEventListener("click", (event) => {
        event.preventDefault();
        event.stopPropagation();
        lessText.style.display = "none";
        moreText.style.display = "block";
        text.style.display = "-webkit-box";
    });
});
