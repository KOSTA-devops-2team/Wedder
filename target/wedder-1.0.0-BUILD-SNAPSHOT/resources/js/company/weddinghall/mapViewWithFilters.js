let currentIndex = 0;

const carousel = document.querySelector(".slide-inner");
const totalItems = document.querySelectorAll(".slide-item").length;
const itemsPerSlide = 4;

document.getElementById("prevButton").addEventListener("click", () => {
    if (currentIndex > 0) {
        currentIndex--;
    } else {
        // currentIndex = totalItems - itemsPerSlide;
        Event.preventDefault();
    }
    updateCarousel();
});

document.getElementById("nextButton").addEventListener("click", () => {
    if (currentIndex < totalItems - itemsPerSlide) {
        currentIndex++;
    } else {
        // currentIndex = 0;
        Event.preventDefault();
    }
    updateCarousel();
});

function updateCarousel() {
    const offset = -currentIndex * 25; // 25% 이동
    carousel.style.transform = `translateX(${offset}%)`;
}
