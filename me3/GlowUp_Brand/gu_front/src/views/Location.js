import React, {useEffect} from "react";
import "../css/main.css";

// 스크립트로 kakao maps api를 심어서 가져오면 window전역 객체에 들어가게 되서 이를 바로 인식하지 못함
// kakao가 함수형 컴포넌트인지 인지시키고 window에서 kakao객체로 뽑아서 사용
const {kakao} = window;

const Location = () => {
    useEffect(()=> {
        const mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(37.5213, 127.0222), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };
        
        const map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
        
        // 마커가 표시될 위치입니다 
        const markerPosition  = new kakao.maps.LatLng(37.5213, 127.0222); 
        
        // 마커를 생성합니다
        const marker = new kakao.maps.Marker({
            position: markerPosition
        });
        
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        const iwContent = '<div style="padding:10px 30px;">Glow Up</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        iwPosition = new kakao.maps.LatLng(37.5213, 127.0222); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        const infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : iwContent 
        });
  
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        infowindow.open(map, marker); 
    }, [])
    return (
        <>
        <div className="container-xxl">
            <span id="directions" className="d-block pt200"></span>
            <div>
                <p className="display-5">오시는길</p>
            </div>
        </div>
        {/* 카카오지도표시 */}
        <div id="map"></div>
        </>
    );
};
export default Location;