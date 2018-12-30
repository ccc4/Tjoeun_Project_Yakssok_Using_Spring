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
	
	<div>
		<form action="${pageContext.request.contextPath}/member/findId" method="post">
			<table>
				<caption>아이디 찾기</caption>
				<tr>
					<td>이름:</td>
					<td><input type="text" name="name"></td>
				</tr>
				
				<tr>
					<td>E-MAIL :</td> 
					<td><input type="email" name="email"></td>
				</tr>
				
				<tr>
					<td colspan="2">
					<input type="submit" value="ID찾기">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>


</body>
</html>