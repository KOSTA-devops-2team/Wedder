document.addEventListener("DOMContentLoaded", function () {
    var reviewLink = document.getElementById("review-link");

    // 후기 보러가기 링크 클릭 시 모달 로드 및 열기
    reviewLink.onclick = function (event) {
        event.preventDefault();
        loadModal();
    };

    // 모달 파일 로드 및 모달 열기
    function loadModal() {
        fetch("../../html/weddingHall/reviewSearchModal.html")
            .then((response) => response.text())
            .then((data) => {
                // 모달 컨테이너에 모달 HTML을 삽입
                var modalContainer = document.getElementById("modal-container");
                modalContainer.innerHTML = data;

                var modal = document.getElementById("modal");
                var span = document.getElementsByClassName("close")[0];

                // 모달 열기
                modal.style.display = "block";

                // 모달 닫기
                span.onclick = function () {
                    modal.style.display = "none";
                };

                // 모달 외부 클릭 시 닫기
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                };
            })
            .catch((error) => {
                console.error("Error loading modal:", error);
            });
    }
});
