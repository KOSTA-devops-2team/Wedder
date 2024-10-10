// section1. 태그 부분
document.addEventListener("DOMContentLoaded", function () {
    // 백엔드 구현할 때 AJAX 사용
    const tags = ["#강남웨딩홀", "#하우스웨딩", "#가든웨딩"];

    const tagsContainer = document.getElementById("tags-container");

    tags.forEach((tag) => {
        const tagElement = document.createElement("span");
        tagElement.className = "tag";
        tagElement.textContent = tag;
        tagsContainer.appendChild(tagElement);
    });
});

document.querySelectorAll(".time-list").forEach((item) => {
    item.addEventListener("click", () => {
        item.classList.toggle("time-list-selected");
    });
});

document.querySelectorAll(".month-grid").forEach((item) => {
    item.addEventListener("click", () => {
        item.classList.remove("month-grid");
        item.classList.toggle("month-grid-selected");
    });
});

// section1. 이미지 캐러셀 로직
const carouselInner = document.querySelector(".carousel-inner");
const carouselItems = document.querySelectorAll(".company-image-item");
let index = 0;

function showNextImage() {

    index = (index + 1) % carouselItems.length;
    carouselInner.style.transform = `translateX(-${index * 100}%)`;
}
// 3초마다 이미지 전환
setInterval(showNextImage, 3000);

// Section5. 슬라이드 하단 페이지
let currentIndex = 0;

const similarCarousel = document.querySelector(".similar-inner");
const similarTotalItems = document.querySelectorAll(".similar-item").length;

const itemsPerSlide = 4;

const similarCurrentPageElement = document.getElementById(
    "similar-currentPage"
);
const similarTotalPagesElement = document.getElementById("similar-totalPages");
similarCurrentPageElement.textContent = 1; // 현재 페이지
const similarTotalPages = Math.ceil(similarTotalItems / itemsPerSlide);
similarTotalPagesElement.textContent = similarTotalPages; // 총 페이지수

document.getElementById("similar-prevButton").addEventListener("click", () => {
    if (currentIndex > 0) {
        currentIndex--;
    } else {
        Event.preventDefault();
    }
    updateSimilarCarousel();
});

document.getElementById("similar-nextButton").addEventListener("click", () => {
    if (currentIndex < similarTotalItems / itemsPerSlide - 1) {
        currentIndex++;
    } else {
        Event.preventDefault();
    }
    updateSimilarCarousel();
});

function updateSimilarCarousel() {
    const offset = -currentIndex * 100; // 한 페이지 100%씩 이동
    similarCarousel.style.transform = `translateX(${offset}%)`;
    similarCurrentPageElement.textContent = currentIndex + 1;
}

// Section6. 슬라이드 하단 페이지

let currentIndex2 = 0;
const carousel = document.querySelector(".recommend-inner");
const totalItems = document.querySelectorAll(".recommend-item").length;

const currentPageElement = document.getElementById("currentPage");
const totalPagesElement = document.getElementById("totalPages");
currentPage.textContent = 1; // 현재 페이지
const totalPages = Math.ceil(totalItems / itemsPerSlide);
totalPagesElement.textContent = totalPages; // 총 페이지수

document.getElementById("prevButton").addEventListener("click", () => {
    if (currentIndex2 > 0) {
        currentIndex2--;
    } else {
        Event.preventDefault();
    }
    updateRecommendCarousel();
});

document.getElementById("nextButton").addEventListener("click", () => {
    if (currentIndex2 < totalItems / itemsPerSlide - 1) {
        currentIndex2++;
    } else {
        Event.preventDefault();
    }
    updateRecommendCarousel();
});

function updateRecommendCarousel() {
    const offset = -currentIndex2 * 100; // 한 페이지 100%씩 이동
    carousel.style.transform = `translateX(${offset}%)`;
    currentPageElement.textContent = currentIndex2 + 1;
}

