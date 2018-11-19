<!-- 주소로 좌표 찾기 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
</head>
<body>

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
	
	
	
	
	<div class="checkbox">
		<label>
			<input type="checkbox" name="test"><img alt="" src="${pageContext.request.contextPath }/resources/pill/img/dont/dont1.jpg" width="100px" height="120px">
		</label>
		<label>
			<input type="checkbox" name="test"><img alt="" src="${pageContext.request.contextPath }/resources/pill/img/dont/dont2.jpg" width="100px" height="120px">
		</label>
	</div>
	
</div>





</body>
</html>