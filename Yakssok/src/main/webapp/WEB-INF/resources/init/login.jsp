<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	.loginSection {
	 	top: 70px;
		right: 0px;
		width: 20%;
		/* margin-bottom: 10px; */
		text-align: center;
		position: absolute;
	
	}
</style>

<div class="loginSection">
	<c:if test="${empty loginMember }">
		<div style="margin-bottom: 10px">
			<span>로그인해주세요.</span>
		</div>
		<div>
			<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/login'">로그인</button>
			<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/join'">회원가입</button>
		</div>
	</c:if>
	<c:if test="${!empty loginMember }">
		<div style="margin-bottom: 10px">
			<span>${loginMember.nickname }님</span>
			<span>환영합니다!</span>
		</div>
		<div>
			<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/mypage'">회원정보</button>
			<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/logout'">로그아웃</button>
		</div>
	</c:if>
</div>