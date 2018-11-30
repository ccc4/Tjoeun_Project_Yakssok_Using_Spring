<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
</head>
<body>

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>
	
			<!-- 메뉴 구분 시작 -->
			<div>
				<c:if test="${type == 'allDay' }">
					<h2>연중무휴</h2>
				</c:if>
				<c:if test="${type == 'night' }">
					<h2>심야약국</h2>
				</c:if>
			</div>
			<!-- 메뉴 구분 끝 -->
			
			<!-- 첫번째 주소 값 시작 -->
			<div>
				<c:forEach var="fv" items="${firstValues }">
					<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${type }/${fv }'">${fv }</button>
				</c:forEach>
			</div>
			<!-- 두번째 주소 값 끝 -->
			
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->

</body>
</html>