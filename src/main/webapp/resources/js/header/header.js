let horizontalBar = document.getElementById("horizontal-underline");
let horizontalMenus = document.querySelectorAll(".header-cate ul li a");

function horizontalIndicator(e) {
    horizontalBar.style.left = e.currentTarget.offsetLeft + "px";
    horizontalBar.style.width = e.currentTarget.offsetWidth + "px";
    horizontalBar.style.top =
        e.currentTarget.offsetTop + e.currentTarget.offsetHeight + "px";
}

horizontalMenus.forEach((menu) =>
    menu.addEventListener("click", (e) => {
        horizontalIndicator(e);
    })
);
