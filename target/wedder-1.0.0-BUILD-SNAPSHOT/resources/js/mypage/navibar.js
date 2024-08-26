document.addEventListener("DOMContentLoaded", function () {
    includeSidebar2();
});

function includeSidebar2() {
    fetch("../../components/sidebar/navibar.html")
        .then((response) => response.text())
        .then((data) => {
            document.getElementById("navibar-placeholder").innerHTML =
                data;
        });
}
