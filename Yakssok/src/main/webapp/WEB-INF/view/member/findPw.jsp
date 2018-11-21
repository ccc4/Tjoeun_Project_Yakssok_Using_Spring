<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/member/findPw" method="post">
<table>
	<caption>임시 비밀번호 발송</caption>
	<tr>
		<td>아이디:</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>이메일:</td>
		<td><input type="email" name="email"></td>
	</tr>	
</table>
<input type="submit" value="전송">
</form>

</body>
</html>