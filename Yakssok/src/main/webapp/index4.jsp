<!-- 현재위치 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약쏙</title>

<jsp:include page="/WEB-INF/resources/init/init.jsp"/>


</head>
<body>
<jsp:include page="/WEB-INF/resources/init/header.jsp"/>


<div style="width: 100%; text-align: center;">

	<!-- <div style="margin-bottom: 20px;">
		<form action="">
			<input type="text" name="search" placeholder="검색할 장소" size="50">
			<input type="submit" value="검색">
		</form>
	</div> -->
	
	
	
	<div>
		<span>로그인해주세요.</span>
		<div>
			<button type="button" onclick="${pageContext.request.contextPath}/member/login">로그인</button>
			<button type="button" onclick="${pageContext.request.contextPath}/member/join">회원가입</button>
		</div>
	
	</div>
	
	<div>
		<p style="margin-top:-12px">
		    <b>Chrome 브라우저는 https 환경에서만 geolocation을 지원합니다.</b> 참고해주세요.
		</p>
		<div id="map" style="width:100%;height:350px;"></div>
	
	</div>
	
	<div>
		<input type="text" id="searchTarget" placeholder="검색할 장소">
		<button type="button" onclick="test()">검색</button>
	</div>


</div>








<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=769b0855ff503f0c21d8ca6171bac898&libraries=services"></script>
<script type="text/javascript">

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 10 // 지도의 확대 레벨 
}; 

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {

// GeoLocation을 이용해서 접속 위치를 얻어옵니다
navigator.geolocation.getCurrentPosition(function(position) {
    
    var lat = position.coords.latitude, // 위도
        lon = position.coords.longitude; // 경도
    
    var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
        message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
    
    // 마커와 인포윈도우를 표시합니다
    displayMarker(locPosition, message);
        
  });

} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

var locPosition = new daum.maps.LatLng(33.450701, 126.570667),    
    message = 'geolocation을 사용할수 없어요..'
    
displayMarker(locPosition, message);
}

//지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

// 마커를 생성합니다
var marker = new daum.maps.Marker({  
    map: map, 
    position: locPosition
}); 

var iwContent = message, // 인포윈도우에 표시할 내용
    iwRemoveable = true;

// 인포윈도우를 생성합니다
var infowindow = new daum.maps.InfoWindow({
    content : iwContent,
    removable : iwRemoveable
});

// 인포윈도우를 마커위에 표시합니다 
infowindow.open(map, marker);

// 지도 중심좌표를 접속위치로 변경합니다
map.setCenter(locPosition);      
}    

</script>
</body>
</html>