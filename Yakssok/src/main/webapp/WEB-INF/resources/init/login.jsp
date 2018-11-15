<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<c:if test="${empty m_Session }">
	<div style="float: right;">
		<span>로그인해주세요.</span>
		<div>
			<button class="btn btn-default" type="button" onclick="${pageContext.request.contextPath}/member/login">로그인</button>
			<button class="btn btn-default" type="button" onclick="${pageContext.request.contextPath}/member/join">회원가입</button>
		</div>
	
	</div>
</c:if>
<c:if test="${!empty m_Session }">
	<div style="float: right;">
		<span>${m_Session.id }님 환영합니다!</span>
		<div>
			<%-- <button type="button" onclick="${pageContext.request.contextPath}/member/login">로그인</button>
			<button type="button" onclick="${pageContext.request.contextPath}/member/join">회원가입</button> --%>
		</div>
	
	</div>
</c:if>