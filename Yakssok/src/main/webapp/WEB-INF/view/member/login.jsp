<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
</head>
<body>

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	
	<div style="width: 100%; text-align: center;">
		<div style="display: inline-block; text-align: left; width: 250px">
 			<%-- <form action="${pageContext.request.contextPath}/member/login" method="post">
				<table>
					<caption>LOGIN</caption>
					<tr>
						<td>ID:</td>
						<td><input type="text" name="id" placeholder="아이디를 입력해주세요"></td>
					</tr>
					<tr>
						<td>PW:</td>
						<td><input type="password" name="pw" placeholder="비밀번호를 입력해주세요"></td>
					</tr>
		
					<tr>
						<td><input class="btn btn-default" type="submit" value="로그인"></td>
						<td></td>
					</tr>
				</table>
			
			</form>
			<a href="${pageContext.request.contextPath}/member/findId">ID찾기</a>
			<a href="${pageContext.request.contextPath}/member/findPw">비밀번호 찾기</a> --%>
			
			<h3>로그인</h3>
			<form action="${pageContext.request.contextPath}/member/login" method="post">
				<div class="form-group">
					<c:if test="${!empty cookie.saveId }">
						<input type="text" class="form-control" id="inputID" name="id" value="${cookie.saveId.value }">
					</c:if>
					<c:if test="${empty cookie.saveId }">
						<input type="text" class="form-control" id="inputID" name="id" placeholder="아이디를 입력해주세요">
					</c:if>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="inputPW" name="pw" placeholder="비밀번호를 입력해주세요">
				</div>
				<div class="checkbox">
				<label>
					<c:if test="${!empty cookie.saveId }">
						<input type="checkbox" name ="saveId" checked> 아이디 기억하기
					</c:if>
					<c:if test="${empty cookie.saveId }">
						<input type="checkbox" name ="saveId"> 아이디 기억하기
					</c:if>
				</label>
				</div>
				<div>
					<button class="btn btn-default" type="submit">로그인</button>
					<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/join'">회원가입</button>
				</div>
				<div>
					<a href="${pageContext.request.contextPath}/member/findId">ID찾기</a> / 
					<a href="${pageContext.request.contextPath}/member/findPw">비밀번호 찾기</a>
				</div>
			</form>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
</body>
</html>