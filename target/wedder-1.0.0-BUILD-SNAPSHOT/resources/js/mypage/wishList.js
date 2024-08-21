function SliderBox1__init() {
    const swiper = new Swiper(".slider-box-1 .swiper", {
      // Optional parameters
      loop: true,
  
      // If we need pagination
      pagination: {
        el: ".slider-box-1 .swiper-pagination"
      },
  
      // Navigation arrows
      navigation: {
        nextEl: ".slider-box-1 .swiper-button-next",
        prevEl: ".slider-box-1 .swiper-button-prev"
      }
    });
  }
  
  function SliderBox2__init() {
    const swiper = new Swiper(".slider-box-2 .swiper", {
      // Optional parameters
      loop: true,
  
      // If we need pagination
      pagination: {
        el: ".slider-box-2 .swiper-pagination"
      },
  
      // Navigation arrows
      navigation: {
        nextEl: ".slider-box-2 .swiper-button-next",
        prevEl: ".slider-box-2 .swiper-button-prev"
      }
    });
  }
  
  
  SliderBox1__init();
  SliderBox2__init();



  