// 버튼을 선택하여 이벤트 리스너 추가
document.getElementById('add').addEventListener('click', function() {
    // Swal.fire 함수로 경고창 표시
    Swal.fire({
        title: '알림',
        text: '이 작업을 진행하시겠습니까?',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: '견적함에 담기',
        cancelButtonText: '아니요, 취소합니다'
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                title: '진행 완료!',
                text: '작업이 성공적으로 완료되었습니다.',
                icon: 'success',
                confirmButtonText: '확인'
            }).then(() => {
                // 마이페이지로 이동
                window.location.href = '/mypage/estimate-storage';
            });
        } else if (result.isDismissed) {
            Swal.fire('취소됨', '작업이 취소되었습니다.', 'info');
        }  });
});