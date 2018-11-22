<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>

<style>
	.text-ellipsis { 
		width	: 150px; /*원하는 길이*/
		display	: block; 
		overflow	: hidden; 
		text-overflow 	: ellipsis; 
		white-space	: nowrap; 
	}
</style>

</head>
<body>


<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
	<!-- 게시판 전체 -->
	<div>
		<!-- 검색창 -->
		<div>
			<form action="${pageContext.request.contextPath }/board" method="get">
				<select name="searchOption">
			
					<option value="t"
						<c:out value="${map.searchOption eq 't'?'selected':''}"/>>제목</option>
			
					<option value="c"
						<c:out value="${map.searchOption eq 'c'?'selected':''}"/>>내용</option>
			
					<option value="tc"
						<c:out value="${map.searchOption eq 'tc'?'selected':''}"/>>제목+내용</option>
			
				</select>
			
				<input type="text" name='keyword' value='${map.keyword}'>
			    <input class="btn btn-default" id="searchBtn" type="submit" value="검색">	
			</form>
		</div>
		<!-- 검색창 끝 -->
	
		<!-- 게시글 목록 -->
		<div>
			${count}개의 게시물이 있습니다.
			<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath }/board/write'">글쓰기</button>
			<table class="table" style="border: 1px solid; whidth:60%; margin:auto; text-align: center;">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>닉네임</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<fmt:timeZone value="KST">
					<fmt:formatDate value="<%=new java.util.Date() %>" pattern="MM월 dd일" var="toDay"/>
						<c:forEach var="l" items="${list }" >
							<tr class="data">
								<td><p>${l.idx }</p></td>
								<td><a class="text-ellipsis" href="${pageContext.request.contextPath}/board/view/${l.idx }">${l.title }</a></td>
								<td><p>${l.nickname }</td>
								<td>
									<p>
										<fmt:formatDate value="${l.writeDate }" pattern="MM월 dd일" var="date"/>
										<fmt:formatDate value="${l.writeDate }" pattern="HH시 mm분" var="time"/>
										<c:choose>
											<c:when test="${date == toDay }">
												<c:out value="${time }"></c:out>
											</c:when>
											<c:otherwise>
												<c:out value="${date }"></c:out>
											</c:otherwise>
										</c:choose>	
									</p> 
								</td>
								<td><p>${l.read_cnt }</p></td>
							</tr>
						</c:forEach>
					</fmt:timeZone>
				</tbody>
			</table>
		</div>
		<!-- 게시글 목록 끝 -->
		
		<!-- 페이징 -->
		<nav style="text-align: center;">
			<ul class="pagination pagination-sm">
				<c:if test="${p.page != 1 }">
					<li><a href="${pageContext.request.contextPath }/board?page=${p.startPage}&searchOption=${searchOption}&keyword=${keyword}"">처음</a></li>
				</c:if>
				<c:if test="${p.page == 1 }">
					<li class="disabled"><a href="#">처음</a></li>
				</c:if>
				
				<c:if test="${p.page != p.startPage }">
					<li><a href="${pageContext.request.contextPath }/board?page=${p.page - 1 }&searchOption=${searchOption}&keyword=${keyword}"">이전</a></li>
				</c:if>
				<c:if test="${p.page == p.startPage }">
					<li class="disabled"><a href="#">이전</a></li>
				</c:if>  
						
				<c:forEach var="i" begin="${p.startPage }" end="${p.endPage }">
					<c:if test="${i == p.page }">
						<li class="active"><a href="#"><b>${i }</b></a></li>
					</c:if>
					<c:if test="${i != p.page }">
						<li><a href="${pageContext.request.contextPath }/board?page=${i}&searchOption=${searchOption}&keyword=${keyword}">${i}</a></li>
					</c:if>
				</c:forEach>
				
				<c:if test="${p.page != p.endPage }">
					<li><a href="${pageContext.request.contextPath }/board?page=${p.page + 1}&searchOption=${searchOption}&keyword=${keyword}"">다음</a></li>
				</c:if>
				<c:if test="${p.page == p.endPage }">
					<li class="disabled"><a href="#">다음</a></li>
				</c:if>
				
				<c:if test="${p.page != p.totalPage }">
					<li><a href="${pageContext.request.contextPath }/board?page=${p.totalPage}&searchOption=${searchOption}&keyword=${keyword}"">끝</a></li>
				</c:if>
				<c:if test="${p.page == p.totalPage }">
					<li class="disabled"><a href="#">끝</a></li>
				</c:if>
			</ul>
		</nav>
		<!-- 페이징 끝 -->
		
	</div>
	<!-- 게시판 전체 끝 -->
		
		
</div>
	
	
</body>
</html>  