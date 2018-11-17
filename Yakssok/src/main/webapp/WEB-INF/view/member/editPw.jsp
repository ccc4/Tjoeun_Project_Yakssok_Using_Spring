<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 수정</title>
</head>
<body>
<div align="center">
<form action="${pageContext.request.contextPath}/member/editPwResult" method="post">
	<table>
		<caption>비밀번호 수정</caption>
		<tr>
			<td>아이디:</td>
			<td><input type="text" name="id"></td>
			</tr>
		<tr>
			<td>기존 비밀번호:</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td>변경 비밀번호</td>
			<td><input type="password" name = "newPw"></td>
		</tr>
	</table>
	<br/>
	<input type="submit" value="수정">
</form>
</div>
</body>
</html>