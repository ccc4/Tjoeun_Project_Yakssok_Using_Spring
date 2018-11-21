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
		<form action="${pageContext.request.contextPath }/pill/add_company" method="POST">
			<div>
				<input type="text" name="name" placeholder="회사이름">
			</div>
			<div>
				<textarea rows="1" cols="40" name="address" placeholder="주소"></textarea>
			</div>
			<div>
				<input type="text" name="tel" placeholder="전화번호">
			</div>
			<div>
				<input type="text" name="fax" placeholder="팩스">
			</div>
			<div>
				<input type="url" name="url" placeholder="홈페이지">
			</div>
			<input type="submit" value="등록">
		</form>
	</div>


</div>



</body>
</html>