document.addEventListener("DOMContentLoaded", function () {
    includeSidebar();
});

function includeSidebar() {
    fetch("../../components/sidebar/sidebarMyPage.html")
        .then((response) => response.text())
        .then((data) => {
            document.getElementById("myPage-sidebar-placeholder").innerHTML =
                data;
        });
}


