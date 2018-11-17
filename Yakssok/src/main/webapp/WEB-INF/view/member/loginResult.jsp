<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<c:if test="${loginResult eq 0 }">
	<script type="text/javascript">
		alert("로그인실패")
		location.href="login";
	</script>
</c:if>


	<c:if test="${loginResult eq 1 }">
	<script type="text/javascript">
		alert("아이디 또는 비밀번호를 확인해주세요 ")
		location.href="login";
	</script>
</c:if>

	<c:if test="${loginResult eq 2}">
	<script type="text/javascript">
	alert("로그인성공")
	location.href="${pageContext.request.contextPath}/";
</script>
</c:if>

</body>
</html>