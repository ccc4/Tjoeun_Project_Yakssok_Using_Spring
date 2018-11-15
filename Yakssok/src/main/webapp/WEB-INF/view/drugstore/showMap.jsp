<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/resources/init/header.jsp"/>

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
	<button type="button" onclick="history.back()">뒤로가기</button>
	<p style="margin-top:12px">
	    <em class="link">
	        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
	            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
	        </a>
	    </em>
	</p>
	<div id="map" style="width:100%;height:350px;"></div>

</div>


<script type="text/javascript">
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center: new daum.maps.LatLng(37.570967, 126.989478), // 지도의 중심좌표
			level: 4 // 지도의 확대 레벨
	};  

	//지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 

	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	//주소로 좌표를 검색합니다
	geocoder.addressSearch('${address}', function(result, status) {

		// 정상적으로 검색이 완료됐으면 
		if (status === daum.maps.services.Status.OK) {
	
			var coords = new daum.maps.LatLng(result[0].y, result[0].x);
		
		    // 결과값으로 받은 위치를 마커로 표시합니다
			var marker = new daum.maps.Marker({
				map: map,
				position: coords
			});
		
		    // 인포윈도우로 장소에 대한 설명을 표시합니다
			var infowindow = new daum.maps.InfoWindow({
				content: '<div style="width:150px;text-align:center;padding:6px 0;">약국위치</div>'
			});
			infowindow.open(map, marker);
			
				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			map.setCenter(coords);
		}
	}); 
</script>
</body>
</html>