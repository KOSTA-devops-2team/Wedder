$(document).ready(function () {
    $(".search-btn").on("click", function (e) {
        e.preventDefault()
        console.log("검색 기능")
        // 입력된 검색어 가져오기
        const keyword = $('#keyword').val()
        const category = $('#category').val();
        console.log("중간 확인" + keyword)
        $.ajax({
            type: 'POST',
            url: '/weddinghallList',
            dataType: 'json',
            data: {companyName: keyword},
            success: function (data, status, xhr) {
                console.log("상태:", status);  // 요청의 상태
                console.log("응답 데이터:", data);  // 서버에서 반환된 데이터
                console.log("응답 헤더:", xhr.getAllResponseHeaders());
                searchCompanyList(data);
            },
            error: function () {
                console.log("검색 실패")
                alert("검색 중 오류가 발생했습니다.")
            }
        })
    })

    // 검색 결과를 처리하는 함수
    function searchCompanyList(companyList) {
        // $('.list-all').empty();
            let companyHtml = '';
            companyList.forEach(function (company) {
                companyHtml += `
                    <div class="card">
                    <a href="weddinghallDetail">
                    <img src ="${company.imgUrl}"/></a>
                    <div class="card-info">
                        <div class="weddinghall-name">
                            ${company.companyName}
                            <a
                                    href="${company.instagramUrl}"
                                    target="_blank"
                                    class="instagram"
                            >
                                <img
                                        src="resources/images/instagram2.png"
                                        alt="인스타 이미지"
                                />
                            </a>
                        </div>
                        <div class="weddinghall-address">주소 : ${company.companyAddress}</div>
                        <div class="phone-num">연락처 : ${company.phoneNum}</div>
                        <div class="operation-hours">영업시간 : ${company.operationHours}</div>
                        <div class="meal-price">식사비 : ${company.hallDto.mealPrice}</div>
                        <div class="minimum-guarantee">최소보증인원 : ${company.hallDto.minPeople}</div>
                    </div>
                    </div>`;
            })
        $('.list-all').html(companyHtml);
        }
})
