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

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
	<div>
		<c:if test="${menu == 'allDay' }">
			<h2>연중무휴</h2>
		</c:if>
		<c:if test="${menu == 'night' }">
			<h2>심야약국</h2>
		</c:if>
	</div>
	
	<div>
		<c:forEach var="fv" items="${firstValues }">
			<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${menu }/${fv }'">${fv }</button>
		</c:forEach>
	</div>
</div>

</body>
</html>