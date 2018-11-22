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
	
	<div>
		<form action="${pageContext.request.contextPath}/member/editPw" method="post">
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
</div>


</body>
</html>