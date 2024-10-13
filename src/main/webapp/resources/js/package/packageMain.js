// $(document).ready(function () {
//
//     const swiper = new Swiper('.swiper-container', {
//         // Navigation arrows 설정
//         navigation: {
//             nextEl: '.swiper-next',   // 다음 버튼
//             prevEl: '.swiper-prev',   // 이전 버튼
//         },
//
//         // Optional parameters
//         loop: true,  // 무한 반복
//
//         // If we need pagination (페이지네이션)
//         pagination: {
//             el: '.swiper-pagination',
//             clickable: true,  // 페이지네이션을 클릭해서 슬라이드 이동 가능
//         }
//     });
// });


// 아래 -> 위 애니메이션 (패키지 설명 및 이용방법)
let observer = new IntersectionObserver((e) => {
    e.forEach((entry) => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = 1;
            entry.target.style.transform = "translateY(0)";
            entry.target.style.transition = "all 1.5s";
        }
    });
});

// .package-info와 각 recommendation 섹션에 애니메이션 적용
document.querySelectorAll(".package-info, .recommendation, .package-title").forEach((item) => {
    observer.observe(item);
});

// .steps와 .step-content에 대해 시간차 애니메이션 적용
let stepObserver = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
        if (entry.isIntersecting) {
            const delay = Array.from(entry.target.parentElement.children).indexOf(entry.target) * 300; // 300ms 간격으로 딜레이
            setTimeout(() => {
                entry.target.style.opacity = 1;
                entry.target.style.transform = "translateY(0)";
                entry.target.style.transition = "opacity 1s ease-out, transform 1s ease-out"; // 애니메이션 설정
            }, delay);
        }
    });
});

document.querySelectorAll(".step-content img").forEach((step) => {
    stepObserver.observe(step);
});


document.querySelectorAll(".step-content").forEach((step) => {
    stepObserver.observe(step);
});