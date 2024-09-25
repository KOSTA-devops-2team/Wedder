/* 필터 탭 */
document.addEventListener("DOMContentLoaded", function() {
    const tabs = document.querySelectorAll(".tab");
    const contents = document.querySelectorAll(".body");

    // 첫 번째 탭 활성화
    if (tabs.length > 0 && contents.length > 0) {
        tabs[0].classList.add("tab-selected");
        contents[0].classList.add("contents-active");
    }

    tabs.forEach((tab, index) => {
        tab.addEventListener("click", () => {
            tabs.forEach((btn) => {
                btn.classList.remove("tab-selected");
            });
            contents.forEach((content) => {
                content.classList.remove("contents-active");
            });

            tab.classList.add("tab-selected");

            contents[index].classList.add("contents-active");
        });
    });
});

// /* 모달창 */
// document.addEventListener("DOMContentLoaded", function () {
//     const modal1 = document.querySelector(".modal-region");
//     const modal3 = document.querySelector(".modal-budget");
//     const modalBtn1 = document.querySelector(".region-btn");
//     const modalBtn3 = document.querySelector(".budget-btn");
//     const closeBtn = document.querySelector(".cancel-btn");
//
//     modalBtn1.addEventListener("click", function() {
//         modal1.classList.add("show");
//     });
//     modalBtn3.addEventListener("click", function() {
//         modal3.classList.add("show");
//     });
//
//     closeBtn.addEventListener("click", function() {
//         modal1.classList.remove("show");
//         modal3.classList.remove("show");
//     });
//
//     /* 외부 클릭 시 모달창 닫기 */
//     window.addEventListener("click", function(event) {
//         if (event.target === modal) {
//             modal.classList.remove("show");
//         }
//         if (event.target === modal2) {
//             modal3.classList.remove("show");
//         }
//     });
// });


console.log("${studioList}");
alert("${studioList}");

/* 선택하신 목록 Ajax */
$(document).ready(function() {
    // 각 카테고리별로 선택된 회사 저장
    let selectedCompanies = {
        studio: null,
        dress: null,
        makeup: null
    };

    // 회사명을 클릭하면 선택 목록에 추가하거나 삭제
    $(".company-link").on("click", function() {
        const category = $(this).data("category");
        const companyId = $(this).data("company-id");
        const companyName = $(this).data("company-name");

        // 해당 카테고리에서 이미 선택된 회사가 있는지 확인
        if (selectedCompanies[category] === null) {
            // 선택되지 않은 경우 추가
            selectedCompanies[category] = { id: companyId, name: companyName };
            addCompanyToList(category, companyId, companyName);
        } else {
            // 이미 선택된 경우 삭제
            removeCompanyFromList(category, companyId);
            selectedCompanies[category] = null;
        }

        // AJAX로 서버에 선택된 목록 업데이트
        $.ajax({
            url: "/estimate/updateSelectedCompanies",
            method: "POST",
            contentType: "application/json",
            data: JSON.stringify(selectedCompanies),
            success: function(response) {
                console.log("선택된 목록이 서버에 성공적으로 업데이트되었습니다.");
                updatePrice();
            },
            error: function() {
                console.log("서버에 선택된 목록을 업데이트하는 데 실패했습니다.");
            }
        });
    });

    // 선택된 목록에 회사 추가
    function addCompanyToList(category, companyId, companyName) {
        $("#selected-company-list").append(
            `<div id="${category}-${companyId}" class="selected-item">
                    ${companyName} (${category})
                </div>`
        );
    }

    // 선택된 목록에서 회사 삭제
    function removeCompanyFromList(category, companyId) {
        $(`#${category}-${companyId}`).remove();
    }

    // 가격 업데이트 로직 (예시)
    function updatePrice() {
        let totalPrice = 0;
        for (const category in selectedCompanies) {
            if (selectedCompanies[category] !== null) {
                totalPrice += 100000; // 각 선택당 100,000원 가정
            }
        }
        $("#price-regular").text(`${totalPrice.toLocaleString()}원`);
        $("#price-total").text(`${totalPrice.toLocaleString()}원`);
    }
});