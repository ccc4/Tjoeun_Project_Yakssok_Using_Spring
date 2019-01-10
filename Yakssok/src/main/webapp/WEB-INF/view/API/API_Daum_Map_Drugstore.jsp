<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/img/Yakssok_Icon.ico">
<title>약쏙</title>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/API_Daum_Map_Drugstore.css" rel="stylesheet">
</head>
<body>

<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>
	
			<h2>내 주변 약국</h2>
			<div class="map_wrap">
				<div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
				<ul id="category" style="display: none;">
			        <li id="PM9" data-order="2"> 
			            <span class="category_bg pharmacy"></span>
			            약국
			        </li>  
			    </ul>
			</div>
	
	
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 카카오 맵 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=769b0855ff503f0c21d8ca6171bac898&libraries=services"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/API_Daum_Map_Drugstore_M.js"></script>
<!-- 
<script type="text/javascript">
	var lat = ${lat};
	var lon = ${lon};
	
	if (lat != null && lon != null) {
		var locPosition = new daum.maps.LatLng(lat, lon);
		displayMarker(locPosition);
	} else {
	    /* var locPosition = new daum.maps.LatLng(37.3218, 127.0817); */
	    var locPosition = new daum.maps.LatLng(33.450701, 126.570667);
	    displayMarker(locPosition);
	}
	
	function displayMarker(locPosition) {
		var marker = new daum.maps.Marker({
			map: map, 
		    position: locPosition
		});
	    map.setCenter(locPosition);
	}
</script>
 -->
</body>
</html>