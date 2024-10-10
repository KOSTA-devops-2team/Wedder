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
    const optionDescription = $(this).find('.option-description').text();

    toggleOption(category, optionName, optionPrice, optionDescription);
});

document.addEventListener("DOMContentLoaded", function() {
    // HTML 요소에서 기본 가격을 가져옴
    const studioPrice = parseInt(document.querySelector('#selected-studio .company-price').dataset.price) || 0;
    const dressPrice = parseInt(document.querySelector('#selected-dress .company-price').dataset.price) || 0;
    const makeupPrice = parseInt(document.querySelector('#selected-makeup .company-price').dataset.price) || 0;

    // 기본 가격 설정 함수 호출
    setBasicPrices(studioPrice, dressPrice, makeupPrice);
});

// 기본 가격을 설정하는 함수
let totalBasicPrice = 0;

function setBasicPrices(studioPrice, dressPrice, makeupPrice) {
    totalBasicPrice = studioPrice + dressPrice + makeupPrice;
    updateTotalPrice(); // 초기 기본 가격으로 총합 계산
}

function updateTotalPrice() {
    // 초기값은 모든 업체의 기본 가격의 합계
    let totalPrice = totalBasicPrice;

    // 각 카테고리의 선택된 옵션들의 가격을 합산하여 totalPrice에 더함
    for (const category in selectedOptions) {
        selectedOptions[category].forEach(option => {
            totalPrice += option.price;
        });
    }

    // 화면에 업데이트
    $("#price-total").text(`${totalPrice.toLocaleString()}원`);
}

// 옵션 추가/삭제 처리 함수 (여러 개 선택 가능하게 수정)
function toggleOption(category, optionName, optionPrice, optionDescription) {
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
            optionPrice: optionPrice,
            optionDescription: optionDescription
        }),
        success: function(response) {
            console.log("AJAX 응답 데이터:", response);
            updateSelectedOptions(category, options); // 서버에서 받은 최신 목록으로 업데이트
            updateTotalPrice();
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
                <p class="option-item-added" data-name="${option.name}" data-price="${option.price}">
                    <span class="option-info">${option.name}</span>
                    <span class="option-price">${option.price.toLocaleString()}원</span>
                </p>
            `;
            $selectedContainer.append(optionElement);
        });

        // 동적으로 생성된 요소에 이벤트 바인딩
        $selectedContainer.find('.option-item, .option-item-added').on('click', function() {
            const optionName = $(this).data('name');
            const optionPrice = $(this).data('price');
            const optionDescription = $(this).data('optionDescription');
            toggleOption(category, optionName, optionPrice, optionDescription); // 옵션 제거를 위한 요청
        });
    }
    updateTotalPrice(); // 전체 가격 업데이트
}

/* 옵션선택 초기화 */
function resetSelectedOptions() {
    // 선택된 옵션 객체 초기화
    selectedOptions.studio = [];
    selectedOptions.dress = [];
    selectedOptions.makeup = [];

    // 선택된 옵션을 표시하는 컨테이너 비우기
    $('#selected-studio-options').empty();
    $('#selected-dress-options').empty();
    $('#selected-makeup-options').empty();

    // 전체 가격 초기화
    updateTotalPrice();
}
// 업체 다시 선택 버튼 클릭 시 모든 옵션 초기화
document.addEventListener("DOMContentLoaded", function() {
    $('#reset-button').on('click', function() {
        resetSelectedOptions();
    });
});

document.addEventListener("DOMContentLoaded", function() {
    const nextButton = document.querySelector(".next");

    nextButton.addEventListener("click", function(event) {
        event.preventDefault();

        // 기본 정보 가져오기
        const studioName = document.querySelector('#selected-studio .company-info').innerText;
        const studioPrice = document.querySelector('#selected-studio .company-price').dataset.price;
        const studioImgUrl = document.querySelectorAll('.main')[0].dataset.imgUrl;

        const dressName = document.querySelector('#selected-dress .company-info').innerText;
        const dressPrice = document.querySelector('#selected-dress .company-price').dataset.price;
        const dressImgUrl = document.querySelectorAll('.main')[1].dataset.imgUrl;

        const makeupName = document.querySelector('#selected-makeup .company-info').innerText;
        const makeupPrice = document.querySelector('#selected-makeup .company-price').dataset.price;
        const makeupImgUrl = document.querySelectorAll('.main')[2].dataset.imgUrl;

        // 옵션 데이터를 JSON 문자열로 변환
        const selectedOptions = {
            studio: [],
            dress: [],
            makeup: []
        };

        ['studio', 'dress', 'makeup'].forEach(category => {
            const options = document.querySelectorAll(`#selected-${category}-options .option-item-added`);
            options.forEach(option => {
                const optionData = {
                    name: option.querySelector('.option-info').innerText,
                    price: option.querySelector('.option-price').innerText.replace('원', '').replace(',', ''),
                };
                selectedOptions[category].push(optionData);
            });
        });

        const optionsJSON = encodeURIComponent(JSON.stringify(selectedOptions));

        // URL 구성
        let url = `/estimate/estimateFinal?studioName=${encodeURIComponent(studioName)}&studioPrice=${studioPrice}&studioImgUrl=${encodeURIComponent(studioImgUrl)}`;
        url += `&dressName=${encodeURIComponent(dressName)}&dressPrice=${dressPrice}&dressImgUrl=${encodeURIComponent(dressImgUrl)}`;
        url += `&makeupName=${encodeURIComponent(makeupName)}&makeupPrice=${makeupPrice}&makeupImgUrl=${encodeURIComponent(makeupImgUrl)}`;
        url += `&options=${optionsJSON}`;

        // 최종 URL 확인용 콘솔 출력
        console.log("Generated URL:", url);

        // 다음 페이지로 이동
        location.href = url;
    });
});