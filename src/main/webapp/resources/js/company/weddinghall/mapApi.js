// 지도 API
const mapScript = document.createElement('script');

mapScript.async = true;
mapScript.src = `//dapi.kakao.com/v2/maps/sdk.js?appkey=49002230661bfc60fba4b0f1cfab9f60&autoload=false`;

const infoMap = document.getElementById("map")
const companyName = infoMap.getAttribute("data-company-name")

console.log("Company name:", companyName);

document.head.appendChild(mapScript);

const onLoadKakaoMap = () => {
    window.kakao.maps.load(() => {
        const mapContainer = document.getElementById('map');
        const mapOption = {
            center: new window.kakao.maps.LatLng(37.522029, 127.036594), // 지도의 중심좌표
            level: 3, // 지도의 확대 레벨
        };
        var map = new window.kakao.maps.Map(mapContainer, mapOption);

        // 지도에 마커를 표시
        var marker = new kakao.maps.Marker({
            map: map,
            position: new kakao.maps.LatLng(37.522029, 127.036594)
        });

        var iwContent = '<div class="info">' +
            '        <div class="title">' +
            '            마리아쥬 스퀘어' +
            '        </div>' +
            '        <a href="https://kko.to/LwMPV-AWmS" class="map-view" target="_blank">지도보기</a>' +
            '        <a href="https://map.kakao.com/link/to/마리아쥬 스퀘어,37.522029,127.036594" class="direction" target="_blank">길찾기</a>' +
            '</div>';

        var iwRemoveable = true;

        // 마커 위에 인포창 표시
        var infowindow = new kakao.maps.InfoWindow({
            content: iwContent,
            map: map,
            position: marker.getPosition(),
            removable : iwRemoveable
        });
        infowindow.open(map, marker);

        // 마커 클릭시 커스텀 오버레이 표시
        kakao.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map, marker);
        });
    });
};
mapScript.addEventListener('load', onLoadKakaoMap);