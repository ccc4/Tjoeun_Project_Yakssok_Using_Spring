<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
<link href="${pageContext.request.contextPath }/resources/css/API_Daum_Map_Drugstore.css" rel="stylesheet">
</head>
<body>

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
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
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/API_Daum_Map_Drugstore.js"></script>

</body>
</html>