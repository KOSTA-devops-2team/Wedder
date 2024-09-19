// 아래 -> 위 애니메이션
let observer = new IntersectionObserver((e) => {
    e.forEach((entry) => {
        // 감시 중인 요소가 화면에 등장하면 이 부분의 코드 실행
        if (entry.isIntersecting) {
            entry.target.style.opacity = 1;
            entry.target.style.transform = "translateY(0)";
            entry.target.style.transition = "all 1.5s";
        }
    });
});

document.querySelectorAll(".package-content").forEach((item) => {
    observer.observe(item); // html 요소가 화면에 등장하는지 감시
});

document.querySelectorAll(".hall-subtitle-item").forEach((hall) => {
    observer.observe(hall);
});

let mainTitle = document.querySelector(".main-content");
observer.observe(mainTitle);

document.querySelectorAll(".common-title").forEach((common) => {
    observer.observe(common);
});

// 우 -> 좌 애니메이션
let rightToLeftObserver = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = 1;
            entry.target.style.transform = "translateX(0)";
        }
    });
});

// 좌 -> 우 애니메이션
let leftToRightObserver = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = 1;
            entry.target.style.transform = "translateX(0)";
        }
    });
});

let hallImg = document.querySelector(".hall-image");
rightToLeftObserver.observe(hallImg);

let packageImgs = document.querySelectorAll(".package-img");
rightToLeftObserver.observe(packageImgs[0]);
leftToRightObserver.observe(packageImgs[1]);
rightToLeftObserver.observe(packageImgs[2]);

// 시간차를 둔 아래 -> 위 애니메이션
let imgObserver = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
        if (entry.isIntersecting) {
            const delay =
                Array.from(
                    entry.target.parentElement.parentElement.children
                ).indexOf(entry.target.parentElement) * 300; // 300ms 간격으로 딜레이
            setTimeout(() => {
                entry.target.style.opacity = 1;
                entry.target.style.transform = "translateY(0)";
            }, delay);
        }
    });
});

document.querySelectorAll(".estimate-item").forEach((estimate) => {
    observer.observe(estimate);
});

document.querySelectorAll(".estimate-item img").forEach((img) => {
    imgObserver.observe(img);
});
