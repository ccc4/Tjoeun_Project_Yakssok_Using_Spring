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
		<table>
			<tr>
				<td><button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/editPw'">비밀번호 수정</button></td>
				<td><button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/editProfile'">프로필 수정</button></td>
			</tr>
			<tr>
				<td><button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/delete'">회원탈퇴</button></td>
				<td><button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/'"></button></td>
			</tr>
		</div>
		</table>
	</div>
</div>

</body>
</html>