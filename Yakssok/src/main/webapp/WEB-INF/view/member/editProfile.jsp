<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<form action="${pageContext.request.contextPath}/member/editProfile" method="post">
			<table>
				<caption>회원정보 수정<button class="btn btn-default pull-right" type="button" onclick="location.href='${pageContext.request.contextPath}/member/delete'">회원탈퇴</button></caption>
				<tr>
					<td>아이디:</td>
					<td><input type="text" name ="id" value="${loginMember.id}" readonly></td>
				</tr>
				<tr>
					<td>닉네임:</td>
					<td><input type="text" name ="nickname" value="${loginMember.nickname }"></td>
				</tr>
				<tr>
					<td>이름:</td>
					<td><input type="text" name="name" value="${loginMember.name }"></td>
				</tr>
				<tr>
					<td>나이:</td>
					<td><input type="number" name="age" value="${loginMember.age}" min="1" max="150"></td>
				</tr>
				<tr>
					<td>번호:</td>
					<td><input type="tel" name="tel" value="${loginMember.tel }"></td>
				</tr>
				<tr>
					<td>메일:</td>
					<td><input type="email" name="email" value="${loginMember.email }"></td>
				</tr>
				<tr>
					<td>주소:</td>
					<td><input type="text" name="address" value="${loginMember.address }"></td>
				</tr>
			</table>
			<button class="btn btn-default pull-right" type="submit" onclick="location.href='history.back()'">뒤로</button>
			<button class="btn btn-default pull-right" type="submit">수정</button>
		</form>
	</div>
</div>


</body>
</html>