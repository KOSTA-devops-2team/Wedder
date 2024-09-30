// 1. autoComplete을 이용한 업체명 자동완성 기능
$('#autoComplete').autocomplete({
    source: function (request, response) { //source: 입력시 보일 목록
        $.ajax({
            url: "/package/ajax/autocomplete",
            type: "POST",
            dataType: "JSON",
            data: {value: request.term},	// 검색 키워드
            success: function (data) { 	// 성공
                console.log("Response Data:", data);  // 전체 응답 데이터 확인

                response(
                    $.map(data, function (item) {
                        return {
                            label: item.packageName,    	// 목록에 표시되는 값
                            value: item.packageName, 		// 선택 시 input창에 표시되는 값
                            idx: item.packageId 			// 패키지 ID
                        };
                    })
                );    //response

            },
            error: function () { //실패
                //alert("오류가 발생했습니다.");
                Swal.fire({
                    title: '오류가 발생했습니다..',
                    text: '재입고 알림을 신청하시겠습니까?',
                    confirmButtonText: '신청하기',
                    cancelButtonText: '취소',
                    showCancelButton: true
                })
            }
        });
    },
    focus: function (event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌
        return false;
    },
    minLength: 1, // 최소 글자수
    autoFocus: true, // true == 첫 번째 항목에 자동으로 초점이 맞춰짐
    delay: 100,	//autocomplete 딜레이 시간(ms)
    select: function (evt, ui) {
        // 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, label/value/idx를 가짐
        console.log(ui.item.label); // 패키지 이름 출력
        console.log(ui.item.idx);   // 패키지 ID 출력
    }
})


// 2. 검색 버튼 클릭 시 전체 패키지 목록 동적으로 갱신
$(".form-container").on('submit', function (e) {

    e.preventDefault();
    const searchTerm = $('#autoComplete').val();
    console.log("2. 검색어 " + searchTerm);

    $.ajax({
        url: "/package/search",
        type: "POST",
        dataType: "JSON",
        data: {companyName: searchTerm}, // 검색창에 입력된 업체명
        success: function (data) {
            console.log("검색 결과  :" + data);

            //받아온 패키지 목록을 화면에 보여주기
            updatePackageList(data);

        },
        error: function () {
            alert("오류가 발생했습니다.");
        }
    });
});


function updatePackageList(packages) {

    let packageHtml = '';

    packages.forEach(function (packageItem) {
        packageHtml += `
        <div class="grid-content">
            <div class="grid-pic">
                <img src="${packageItem.packageImg}" alt="패키지 이미지">
            </div>
            <p class="name">${packageItem.studioName} + ${packageItem.dressName} + ${packageItem.makeupName}</p>
            <p class="cost">${packageItem.finalPrice ? packageItem.finalPrice.toLocaleString() : 0}원</p>  
        </div>`;
    });

    $('.package-search-container').html(packageHtml);
}

// 3. 금액별 범위에 따른 패키지 필터링
$(".btn-price").click(function (e) {

    e.preventDefault();
    const minPrice = $(this).data("min")
    const maxPrice = $(this).data("max")

    $.ajax({
        url: "/package/filter",
        type: "GET",
        dataType: "JSON",
        data: {minPrice: minPrice, maxPrice: maxPrice},
        success: function (data) {
            if (data.length > 1) {
                console.log("금액별 필터링된 패키지 리스트:", data);
                updatePackageList(data)
            } else {
                Swal.fire({
                    title: "조건에 해당하는 결과가 없습니다.",
                    icon  : "warning",
                    text: "다른 조건으로 검색하겠습니까?",
                    confirmButtonText: "검색하기",
                    cancelButtonText: "취소",
                    showCancelButton: true,
                    closeOnClickOutside : false // 백그라운드 클릭해도 안꺼짐
                });
            }
        },
        error: function () {
            alert("금액별 패키지 필터링 실패");
        }
    })
})
