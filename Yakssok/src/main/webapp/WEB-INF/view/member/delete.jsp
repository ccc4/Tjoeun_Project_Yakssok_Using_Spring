<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/member/delete" method="post">
<div align="center">
<table>
	<caption>회원탈퇴</caption>
	<tr>
		<td>아이디:</td>
		<td><input type="text" name="id"></td>
	</tr>
		<tr>
		<td>비밀번호:</td>
		<td><input type="password" name="pw"></td>
	</tr>
</table>
<br/>
<input type="submit" value="탈퇴">
</div>
</form>
</body>
</html>