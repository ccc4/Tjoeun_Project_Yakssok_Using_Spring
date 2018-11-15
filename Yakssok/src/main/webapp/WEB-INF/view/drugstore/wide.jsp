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
<jsp:include page="/WEB-INF/resources/init/header.jsp"/>

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	<c:forEach var="fv" items="${firstValues }">
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${menu }/${fv }'">${fv }</button>
	</c:forEach>
</div>

</body>
</html>