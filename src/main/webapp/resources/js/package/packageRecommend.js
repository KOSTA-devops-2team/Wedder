$('#autoComplete').autocomplete({
    source : function(request, response) { //source: 입력시 보일 목록
        console.log("autoComplete!!!");
        $.ajax({
            url : "/package/ajax/autocomplete.do",
            type : "POST",
            dataType: "JSON",
            data : { value: request.term },	// 검색 키워드
            success : function(data){ 	// 성공
                console.log("Response Data:", data);  // 전체 응답 데이터 확인
                console.log("Result List:", data.resultList); // resultList만 확인

                response(
                    $.map(data.resultList, function(item) {
                        return {
                            label : item.packageName,    	// 목록에 표시되는 값 (예: 패키지 이름)
                            value : item.packageName, 		// 선택 시 input창에 표시되는 값 (예: 패키지 이름)
                            idx : item.packageId 			// 패키지 ID (고유 식별자)
                        };
                    })
                );    //response

            },
            error : function() { //실패
                alert("오류가 발생했습니다.");
            }
        });
    },
    focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌
        return false;
    },
    minLength: 1, // 최소 글자수
    autoFocus : true, // true == 첫 번째 항목에 자동으로 초점이 맞춰짐
    delay: 100,	//autocomplete 딜레이 시간(ms)
    select : function(evt, ui) {
        // 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, label/value/idx를 가짐
        console.log(ui.item.label); // 패키지 이름 출력
        console.log(ui.item.idx);   // 패키지 ID 출력
    }
});
