document.addEventListener("DOMContentLoaded", function() {
    const checkboxes = document.querySelectorAll('.option-checkbox');
    const optionContainer = document.getElementById('option-container');
    const optionData = [
        { id: 'option1', name: '야간 촬영', description: '17시 이후부터 촬영 가능', price: '220,000원', imgSrc: '../../assets/images/option1.jpg' },
        { id: 'option2', name: '옥상씬 촬영', description: '옥상씬 촬영 시 발생하는 비용', price: '110,000원', imgSrc: '../../assets/images/option2.jpg' },
        { id: 'option3', name: '애견동반 촬영', description: '애견동반 촬영 시 발생하는 비용', price: '100,000원', imgSrc: '../../assets/images/option3.jpg' },
        { id: 'option4', name: '로드씬 촬영', description: '로드씬 촬영 시 발생하는 비용', price: '110,000원', imgSrc: '../../assets/images/option4.jpg' },
        { id: 'option5', name: '들러리 촬영', description: '스튜디오 촬영 / 본식 동반(1인)', price: '110,000원', imgSrc: '../../assets/images/option5.jpg' },
        { id: 'option6', name: '의상 대여', description: '대여 의상 1벌당 추가 비용', price: '100,000원', imgSrc: '../../assets/images/option6.jpg' },
        { id: 'option7', name: '앨범 추가', description: '앨범 페이지 1장당 추가 비용', price: '33,000원', imgSrc: '../../assets/images/option7.jpg' },
        { id: 'option8', name: '촬영 수정본 컨펌', description: '촬영 후 수정본 1번 더 컨펌 이용 가능', price: '110,000원', imgSrc: '../../assets/images/option8.jpg' },
        { id: 'option9', name: '작가 지정', description: '촬영 작가 지정 시 발생하는 비용', price: '220,000원', imgSrc: '../../assets/images/option9.jpg' },
        { id: 'option10', name: '촬영 시간 추가', description: '30분 추가당 발생하는 비용', price: '55,000원', imgSrc: '../../assets/images/option10.png' },
    ];

    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function() {
            const isChecked = checkbox.checked;
            const optionId = checkbox.id;
            const option = optionData.find(opt => opt.id === optionId);

            if (isChecked) {
                const newOption = `
                    <div class="select-option" data-option-id="${option.id}">
                        <div>
                            <img src="${option.imgSrc}" alt="${option.name}">
                        </div>
                        <div class="select-option-info">
                            <h6>${option.name}</h6>
                            <p>${option.description}</p>
                        </div>
                        <div class="option-price-div">
                            <h5 class="select-options-price">${option.price}</h5>
                        </div>
                    </div>
                `;
                optionContainer.insertAdjacentHTML('beforeend', newOption);
            } else {
                const optionToRemove = optionContainer.querySelector(`.select-option[data-option-id="${optionId}"]`);
                if (optionToRemove) {
                    optionToRemove.remove();
                }
            }
        });
    });
});

