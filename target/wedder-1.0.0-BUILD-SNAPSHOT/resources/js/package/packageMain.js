function SliderBox1__init() {
  const swiper = new Swiper(".slider-box .swiper", {
    // Optional parameters
    loop: true,
      
    // If we need pagination
    pagination: {
      el: ".slider-box .swiper-pagination"
    },

      // Navigation arrows
    navigation: {
      nextEl: ".slider-box .swiper-button-next",
      prevEl: ".slider-box .swiper-button-prev"
    }
  });
}

SliderBox1__init();
