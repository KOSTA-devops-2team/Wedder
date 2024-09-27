// function SliderBox1__init() {
//   const swiper = new Swiper(".slider-box .swiper", {
//     // Optional parameters
//     loop: true,
//
//     // If we need pagination
//     pagination: {
//       el: ".slider-box .swiper-pagination"
//     },
//
//       // Navigation arrows
//     navigation: {
//       nextEl: ".slider-box .swiper-button-next",
//       prevEl: ".slider-box .swiper-button-prev"
//     }
//   });
// }
//
// SliderBox1__init();
$(document).ready(function () {

    const swiper = new Swiper('.swiper-container', {
        // Navigation arrows 설정
        navigation: {
            nextEl: '.swiper-next',   // 다음 버튼
            prevEl: '.swiper-prev',   // 이전 버튼
        },

        // Optional parameters
        loop: true,  // 무한 반복

        // If we need pagination (페이지네이션)
        pagination: {
            el: '.swiper-pagination',
            clickable: true,  // 페이지네이션을 클릭해서 슬라이드 이동 가능
        }
    });

});
