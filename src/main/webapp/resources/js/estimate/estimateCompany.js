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
        const companyId = $(this).data("companyId");
        const companyName = $(this).data("companyName");
        const basicPrice = Number($(this).data("basicPrice")); // 회사의 기본 가격을 숫자로 변환

        // // 해당 카테고리에서 이미 선택된 회사가 있는지 확인
        // if (selectedCompanies[category] === null) {
        //     // 선택되지 않은 경우 추가
        //     selectedCompanies[category] = { id: companyId, name: companyName, basicPrice: basicPrice };
        //     addCompanyToList(category, companyId, companyName, basicPrice);
        // } else {
        //     // 이미 선택된 경우 삭제
        //     removeCompanyFromList(category, companyId);
        //     selectedCompanies[category] = null;
        // }

        // 동일 카테고리에서 이미 선택된 항목이 있는지 확인
        if (selectedCompanies[category] !== null) {
            // 동일 카테고리에서 이미 선택된 항목이 있을 경우, 알림을 띄우고 추가하지 않음
            alert("이미 해당 카테고리에서 선택한 업체가 있습니다. 다른 카테고리를 선택하세요.");
            return; // 추가 동작을 막음
        }

        // 선택된 회사를 해당 카테고리에 추가
        selectedCompanies[category] = { id: companyId, name: companyName, basicPrice: basicPrice };
        addCompanyToList(category, companyId, companyName, basicPrice);

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
    function addCompanyToList(category, companyId, companyName, basicPrice) {
        const listItem = `<div id="${category}-${companyId}" class="selected-item">
                            <a href="javascript:void(0);" class="selected-company-link" data-category="${category}" data-company-id="${companyId}">
                                ${companyName} (${category}) - ${basicPrice.toLocaleString()}원
                            </a>
                          </div>`;
        $("#select-item").append(listItem);

        // 선택한 항목 클릭 시 삭제
        $(`#${category}-${companyId} .selected-company-link`).on("click", function() {
            removeCompanyFromList(category, companyId);
            selectedCompanies[category] = null;
            updatePrice();
        });

    }

    // 선택된 목록에서 회사 삭제
    function removeCompanyFromList(category, companyId) {
        $(`#${category}-${companyId}`).remove();
    }

    // 가격 업데이트 로직
    function updatePrice() {
        let totalPrice = 0;
        for (const category in selectedCompanies) {
            if (selectedCompanies[category] !== null) {
                totalPrice += selectedCompanies[category].basicPrice; // 선택된 회사의 basicPrice를 합산
            }
        }
        // toLocaleString()을 사용하여 천 단위 구분
        // $("#price-regular").text(`${totalPrice.toLocaleString()}원`);
        $("#price-total").text(`${totalPrice.toLocaleString()}원`);
    }

    // "업체 다시 선택" 버튼을 누르면 목록 초기화
    $(".reselection a").on("click", function(event) {
        event.preventDefault(); // 링크의 기본 동작(페이지 이동) 방지

        // 선택된 목록을 초기화
        selectedCompanies = {
            studio: null,
            dress: null,
            makeup: null
        };

        // 화면에 표시된 선택 항목들 삭제
        $("#select-item").empty();

        // 가격 초기화
        updatePrice();
    });
});
