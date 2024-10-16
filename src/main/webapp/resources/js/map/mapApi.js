// 지도 API
const mapScript = document.createElement('script');

mapScript.async = true;
mapScript.src = `//dapi.kakao.com/v2/maps/sdk.js?appkey=49002230661bfc60fba4b0f1cfab9f60&autoload=false`;

document.head.appendChild(mapScript);

document.addEventListener('DOMContentLoaded', function() {

    const infoMap = document.getElementById("map")
    const companyId = infoMap.getAttribute("data-company-id")
    const category = infoMap.getAttribute("data-category");

    console.log("카테고리 값:", category);

    const categoryMap = {
        "웨딩홀": "weddinghall",
        "스튜디오": "studio",
        "메이크업": "makeup",
        "드레스": "dress"
    };
    // 한글 카테고리를 영어로 변환
    const categoryEng = categoryMap[category];

    if (!categoryEng) {
        console.error("카테고리 매핑 실패:", category);
        return; // 잘못된 카테고리 값 처리
    }

    // 동적으로 URL 생성
    const url = `/${categoryEng}/detail/${companyId}/getCoordinates`;

    console.log("Company ID:", companyId);
    console.log("동적으로 생성된 URL:", url);

    const onLoadKakaoMap = (latitude, longitude, companyName) => {
        console.log("companyName 확인:", companyName);
        window.kakao.maps.load(() => {
            const mapContainer = document.getElementById('map');
            if (!mapContainer) {
                console.error("지도를 표시할 컨테이너를 찾을 수 없습니다.");
            }
            const mapOption = {
                center: new window.kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
                level: 3, // 지도의 확대 레벨
            };
            var map = new window.kakao.maps.Map(mapContainer, mapOption);
            console.log("지도 생성 완료");

            var marker = new kakao.maps.Marker({
                map: map,
                position: new kakao.maps.LatLng(latitude, longitude)
            });
            console.log("마커 생성 완료");

            var iwContent = `
                <div class="info">
                    <div class="title">${companyName}</div>
                    <a href="https://kko.kakao.com/1jDBYn95CC" class="map-view" target="_blank">지도보기</a>
                    <a href="https://map.kakao.com/link/to/${companyName},${latitude},${longitude}" class="direction" target="_blank">길찾기</a>
                </div>`;

            var iwRemoveable = true;

            // 마커 위에 인포윈도우 표시
            var infowindow = new kakao.maps.InfoWindow({
                content: iwContent,
                map: map,
                position: marker.getPosition(),
                removable: iwRemoveable
            });
            infowindow.open(map, marker);

            // 마커 클릭시 인포윈도우 띄우기
            kakao.maps.event.addListener(marker, 'click', function () {
                infowindow.open(map, marker);
            });
        });
    };
    console.log(window.kakao);
    mapScript.addEventListener('load', onLoadKakaoMap);

    // DB에서 업체의 위도와 경도 가져오기
    $.ajax({
        url: url,
        type: 'GET',
        success: function (response) {
            console.log("서버 응답:", response);

            const {latitude, longitude, companyName} = response; // 서버에서 반환한 위도, 경도
            onLoadKakaoMap(latitude, longitude, companyName);    // 동적으로 지도에 마커 표시
        },
        error: function (error) {
            console.error("데이터 가져오기 실패:", error);
        }
    });
});
