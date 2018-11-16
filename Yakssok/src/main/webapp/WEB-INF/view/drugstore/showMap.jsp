<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
</head>
<style>
	.placeinfo_wrap {position:absolute;bottom:40px;left:-123px;width:250px;} /* 여기서 bottom 값으로 위아래 조절 */
.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #81e0d6;}
.placeinfo .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
.placeinfo .close:hover {cursor: pointer;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
</style>
<body>

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
	<h2>지도보기</h2>
	
	<button class="btn btn-default" type="button" onclick="history.back()">뒤로가기</button>
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
	
	var coords = new daum.maps.LatLng(37.570967, 126.989478);
	
	//주소로 좌표를 검색합니다
	geocoder.addressSearch('${model.address}', function(result, status) {

		// 정상적으로 검색이 완료됐으면 
		if (status === daum.maps.services.Status.OK) {
	
			coords = new daum.maps.LatLng(result[0].y, result[0].x);
		}
		
	}); 
	
	
	
	
	
	
	
	
	
	
	// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	map.setCenter(coords);
	
    // 결과값으로 받은 위치를 마커로 표시합니다
	var marker = new daum.maps.Marker({
		map: map,
		position: coords
	});

   /*  // 인포윈도우로 장소에 대한 설명을 표시합니다
	var infowindow = new daum.maps.InfoWindow({
		content: '<div style="width:150px;text-align:center;padding:6px 0;">약국위치</div>'
	});
	infowindow.open(map, marker); */
	
	// 기본 설정 설명 지움
	
	
	
	// 커스텀 오버레이 생성 과정
	
	var content = 
		'<div class="placeinfo_wrap">' + 
			'<div class="placeinfo">' + 
				'<div class="title">' + 
					'${model.name}' + 
					'<div class="close" onclick="closeOverlay()" title="닫기"></div>' +  
				'</div>' + 
		    	'<span title="${model.address}">${model.address}</span>' + 
			    '<span class="tel">${model.tel}</span>' + 
			'</div>' +
			'<div class="after"></div>' + 
		'</div>';
			
	
	overlay = new daum.maps.CustomOverlay({
		content: content,
		map: map, 
		position: marker.getPosition()
	});
	
	
	
	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	daum.maps.event.addListener(marker, 'click', function() {
	    overlay.setMap(map);
	});

	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	function closeOverlay() {
	    overlay.setMap(null);     
	}
	
	
</script>
</body>
</html>