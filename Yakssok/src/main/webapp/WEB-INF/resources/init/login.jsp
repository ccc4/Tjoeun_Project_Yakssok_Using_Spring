<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div style="float: right; margin-bottom: 20px">
	<c:if test="${empty loginMember }">
			<span>로그인해주세요.</span>
			<div>
				<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/login'">로그인</button>
				<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/member/join'">회원가입</button>
			</div>
	</c:if>
	<c:if test="${!empty loginMember }">
			<span>${loginMember.nickname }님 환영합니다!</span>
			<div>
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/member/mypage'">회원정보</button>
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/member/logout'">로그아웃</button>
			</div>
	</c:if>
</div>