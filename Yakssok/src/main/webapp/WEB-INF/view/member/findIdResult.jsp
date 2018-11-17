<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기 결과</title>
</head>
<body>

<c:if test="${findResult eq 0 }">
<script type="text/javascript">
alert("존재하지 않는 회원이거나 아이디 또는 이메일이 틀렸습니다.")
location.href="findid"
</script>
</c:if>
<div align="center">
<c:if test="${findResult eq 1}">
사용자의 아이디는<strong>${findMember.id}</strong>  입니다.<br/>
<a href="${pageContext.request.contextPath}/member/login">[로그인]</a>
</c:if>
</div>
</body>
</html>