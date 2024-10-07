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
// 선택된 옵션을 저장하는 객체 (카테고리별로 여러 개의 옵션 추가 가능)
const selectedOptions = {
    studio: [],
    dress: [],
    makeup: []
};

// 스튜디오, 드레스, 메이크업 옵션 클릭 시 공통으로 사용
$('.studio-option, .dress-option, .makeup-option').on('click', function () {
    const category = $(this).hasClass('studio-option') ? 'studio' :
        $(this).hasClass('dress-option') ? 'dress' : 'makeup';
    const optionName = $(this).find('.option-name').text();
    const optionPrice = parseInt($(this).find('.option-price').text().replace('원', '').replace(',', ''));

    toggleOption(category, optionName, optionPrice);
});

// 옵션 추가/삭제 처리 함수 (여러 개 선택 가능하게 수정)
function toggleOption(category, optionName, optionPrice) {
    // 선택된 옵션 목록 가져오기
    const options = selectedOptions[category];

    // 옵션이 이미 선택되었는지 확인
    const existingIndex = options.findIndex(option => option.name === optionName);

    if (existingIndex > -1) {
        // 이미 선택된 옵션이 있으면 제거
        options.splice(existingIndex, 1);
    } else {
        // 새로 선택한 옵션이면 추가
        options.push({ name: optionName, price: optionPrice });
    }

    // 서버로 선택된 옵션 목록을 전송
    $.ajax({
        url: `/estimate/updateOption`,
        type: 'POST',
        contentType: 'application/json',
        dataType: 'json',
        data: JSON.stringify({
            category: category,
            optionName: optionName,
            optionPrice: optionPrice
        }),
        success: function(response) {
            console.log("AJAX 응답 데이터:", response);
            updateSelectedOptions(category, options); // 서버에서 받은 최신 목록으로 업데이트
        },
        error: function(xhr, status, error) {
            console.error("AJAX 요청 오류:", status, error);
            alert('옵션 처리 중 오류가 발생했습니다.');
        }
    });
}

// 선택된 옵션 목록을 업데이트하는 함수
function updateSelectedOptions(category, options) {
    const $selectedContainer = $(`#selected-${category}-options`);
    $selectedContainer.empty(); // 기존 옵션을 모두 지움

    if (options && options.length > 0) {
        options.forEach(option => {
            // 선택된 옵션을 화면에 표시
            const optionElement = `
                <p class="option-item" data-name="${option.name}" data-price="${option.price}">
                    ${option.name}: ${option.price.toLocaleString()}원
                </p>
            `;
            $selectedContainer.append(optionElement);
        });

        // 동적으로 생성된 요소에 이벤트 바인딩
        $selectedContainer.find('.option-item').on('click', function() {
            const optionName = $(this).data('name');
            const optionPrice = $(this).data('price');
            toggleOption(category, optionName, optionPrice); // 옵션 제거를 위한 요청
        });
    } else {
        // 선택된 옵션이 없을 때
        $selectedContainer.append(`<p>선택된 옵션이 없습니다.</p>`);
    }
}
