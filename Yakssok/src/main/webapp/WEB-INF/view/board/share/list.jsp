<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
<style type="text/css">
	/* 게시글 제목 길면 알아서 생략하게 */
	.title{
		width: 300px;
		text-overflow: ellipsis;
		overflow: hidden;
		white-space: nowrap;
	}
	/* 링크는 다 검은색 유지되게 */
	a, a:hover{
		color: #000000;
	}
	a.h3{
		text-decoration: none;
	}
</style>
<title>팁 & 정보 공유</title>
</head>
<body>

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
		<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
		<!-- article 시작 -->
		<article style="margin-right: 20%">
			<div style="margin-bottom: 10px">
				<a class ="h3" href="${pageContext.request.contextPath}/board/share/">팁&정보공유</a>
			</div>
			<!-- 검색폼 -->
			<div style ="margin-bottom: 10px">
				<form class ="form-inline" action="${pageContext.request.contextPath}/board/share/" method="get">
					<select class="form-control" name = "option">
						<option>제목</option>
						<option>글쓴이</option>
						<option>내용</option>
						<option>제목+내용</option>
					</select>
					<input class="form-control" type="text" name="keyword" placeholder="검색어 입력">
					<button class="btn btn-default" type="submit">검색</button>
				</form>
			</div>
		
			<!-- 검색폼 끝 -->
			
			<!--게시글 리스트  -->
			<form action="${pageContext.request.contextPath}/board/share/list" method="get">
			<c:if test="${empty list}">
				<span>등록된 게시글이 없습니다.</span>
			</c:if>
			<c:if test="${!empty list }">
				<table class="table table-hover" style="">
					<thead>
					<tr>	
						<th width="35px" style="background-color: #eeeeee; text-align: center;">번호</th>
						<th width="300px" style="background-color: #eeeeee; text-align: center;">제목</th>
						<th width="100px" style="background-color: #eeeeee; text-align: center;">글쓴이</th>
						<th width="35px" style="background-color: #eeeeee; text-align: center;">날짜</th>
						<th width="35px" style="background-color: #eeeeee; text-align: center;">조회</th>
					</tr>
					</thead>
					<thead>
					<c:forEach var="list" items="${list}">
						<fmt:timeZone value="KST">
							<fmt:formatDate value="<%=new java.util.Date() %>" pattern="MM-dd" var="toDay"/>
						<tr>
							<td>${list.b_idx}</td>
							<td class="title">
								<a href="${pageContext.request.contextPath}/board/share/view/${list.b_idx}">${list.title}</a></td>
							<td>${list.nickname}</td>
							
							<%-- <td>${list.writeDate}</td> --%>
							
							<td>
								<fmt:formatDate value="${list.writeDate}" pattern="MM-dd" var="date"/>
								<fmt:formatDate value="${list.writeDate}" pattern="HH:mm" var="time"/>
							<c:choose>
								<c:when test="${date == toDay}">
									<c:out value="${time}"/>
								</c:when>
								<c:otherwise>
									<c:out value="${date}"/>
								</c:otherwise>
							</c:choose>
							<td>${list.read_cnt}</td>
						</tr>
						</fmt:timeZone>
					</c:forEach>
				</table>
			</c:if>
			<c:if test="${!empty loginMember }">
			<button type="button" class="btn btn-default btn-sm pull-right" onclick="location.href='${pageContext.request.contextPath}/board/share/write'">글쓰기</button>
			</c:if>
			</form>
			
			<!-- 페이징 시작 -->
			
			
			
			
			
			
			
			
			
			<!-- ~~ 끝-->
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->

</body>
</html>