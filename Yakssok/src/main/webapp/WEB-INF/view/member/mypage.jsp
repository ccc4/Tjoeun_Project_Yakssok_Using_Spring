<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
</head>
<body>
<div align="center">
<table>
<tr>
<td><button type="button"onclick="location.href='${pageContext.request.contextPath}/member/editPw'">비밀번호 수정</button></td>
<td><button type="button"onclick="location.href='${pageContext.request.contextPath}/member/editProfile'">프로필 수정</button></td>
</tr>
<tr>
<td><button type="button"onclick="location.href='${pageContext.request.contextPath}/member/delete'">회원탈퇴</button></td>
<td><button type="button"onclick="location.href='${pageContext.request.contextPath}/'"></button></td>
</tr>
</div>
</table>
</body>
</html>