$(document).ready(function () {
    $(".search-btn").on("click", function (e) {
        e.preventDefault()
        performSearch()
    })
    $("#keyword").on("keypress",function(e){
        if (e.which === 13){ //Enter 키 코드 13
            e.preventDefault()
            performSearch()
        }
    })
    function performSearch() {
        // 입력된 검색어 가져오기
        const keyword = $('#keyword').val()
        const category = $('#category').val();
        console.log("중간 확인" + keyword)
        $.ajax({
            type: 'POST',
            url: '/studio',
            data: {companyName: keyword, category: category},
            dataType: 'json',
            success: function (data, status, xhr) {
                if (data.length > 1) {
                    console.log("상태:", status);  // 요청 상태
                    console.log("응답 데이터:", data);  // 서버에서 반환된 데이터
                    searchCompanyList(data);
                } else {
                    Swal.fire({
                        title: "검색 결과가 없습니다.",
                        icon  : "warning",
                        text: "다른 조건으로 검색해주세요.",
                        confirmButtonText: "확인",
                        confirmButtonColor: '#ca1a5a',
                        closeOnClickOutside : false // 백그라운드 클릭해도 안꺼짐
                    })
                }
            },
            error: function (xhr, status, error) {
                console.log("Error function reached");
                console.log("검색 실패" + status + error)
                console.log("xhr :" +xhr )
                alert("검색 중 오류가 발생했습니다.")
            }
        })
    }

    // 검색 결과를 처리하는 함수
    function searchCompanyList(companyList) {
        // $('.list-all').empty();
        let companyHtml = '';
        companyList.forEach(function (company) {
            companyHtml += `
                    <div class="card">
                    <a href="/studio/detail/${company.companyId}">
                    <img class="card-img" src ="${company.imgUrl}"/></a>
                    <div class="card-info">
                        <div class="studio-name">
                            ${company.companyName}
                            <a
                                    href="${company.instagramUrl}"
                                    target="_blank"
                                    class="instagram"
                            >
                                <img
                                        src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/instagram.png"
                                        alt="인스타 이미지"
                                />
                            </a>
                        </div>
                        <div class="studio-address">주소 : ${company.companyAddress}</div>
                        <div class="phone-num">연락처 : ${company.phoneNum}</div>
                        <div class="operation-hours">영업시간 : ${company.operationHours}</div>
                        <div class="composition">상품 구성 : ${company.studioDto.product}</div>
                        <div class="budget">촬영소요시간 : ${company.studioDto.shootDuration}</div>
                    </div>
                    </div>`;
        })
        $('.list-all').html(companyHtml);
    }
})