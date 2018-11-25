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

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
		<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
		<!-- article 시작 -->
		<article style="margin-right: 20%">
	
			<!-- 의약품 검색 시작-->
			<div>
				<form class="form-inline" action="${pageContext.request.contextPath }/pill/list" method="GET" style="margin-bottom: 20px">
					<select class="form-control" name="type">
						<option selected>약품명</option>
						<option>효능/효과</option>
						<option>회사</option>
						<option>성분(영문/한글)</option>
					</select>
					
					<input class="form-control" type="text" name="keyword" placeholder="검색어 입력">
					<button class="btn btn-default" type="submit">검색</button>
				</form>
			</div>
			<!-- 의약품 검색 끝-->
	
	
			<!-- 공지사항 시작-->
			<div>
				<table class="table table-hover" style="table-layout:fixed; word-break:break-all;">
					<thead>
						<tr>
							<th width="35px" style="background-color: #eeeeee; text-align: center;">번호</th>
							<th width="150px" style="background-color: #eeeeee; text-align: center;">제목</th>
							<th width="35px" style="background-color: #eeeeee; text-align: center;">날짜</th>
						</tr>
					</thead>
					<tbody>
						<!-- 이거 쓰면 한국시간으로 제대로 나옴 -->
						<fmt:timeZone value="KST">
							<fmt:formatDate value="<%=new java.util.Date() %>" pattern="MM-dd" var="toDay"/>
							<c:forEach var="bn" items="${bNotice }">
							<tr>
								<td>${bn.b_idx }</td>
								<td class="title"><a href="${pageContext.request.contextPath}/board/notice/view/${bn.b_idx}">${bn.title }</a></td>
								<td>
									<fmt:formatDate value="${bn.writeDate }" pattern="MM-dd" var="date"/>
									<fmt:formatDate value="${bn.writeDate }" pattern="HH:mm" var="time"/>
									<c:choose>
										<c:when test="${date == toDay }">
											<c:out value="${time }"></c:out>
										</c:when>
										<c:otherwise>
											<c:out value="${date }"></c:out>
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
							</c:forEach>
						</fmt:timeZone>
					</tbody>
				</table>
			</div>
			<!-- 공지사항 끝-->
	
	
	
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->



</body>
</html>