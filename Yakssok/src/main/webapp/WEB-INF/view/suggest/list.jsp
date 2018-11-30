<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
</head>
<body>

<style type="text/css">
	.title{
		width: 300px;
		text-overflow: ellipsis;
		overflow: hidden;
		white-space: nowrap;
	}
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
	
		<!-- article 시작 -->
		<article>
	
			<!-- ~~ 시작-->
			<div>
				<!-- 테이블 시작 -->
				<div style="margin-top: 10px" id="review_div">
					<c:if test="${empty p }">
						<span>작성된 제안이 없습니다.</span>
					</c:if>
					<c:if test="${!empty p }">
						<table class="table table-hover table-condensed" id="review_table" style="table-layout:fixed; word-break:break-all;">
							<thead>
								<tr>
									<th width="20px" style="background-color: black; color: white; text-align: center;">상태</th>
									<th width="55px" style="background-color: black; color: white; text-align: center;">닉네임</th>
									<th width="150px" style="background-color: black; color: white; text-align: center;">제목</th>
									<th width="35px" style="background-color: black; color: white; text-align: center;">작성일</th>
								</tr>
							</thead>
							<tbody>
								<fmt:timeZone value="KST">
								<fmt:formatDate value="<%=new java.util.Date() %>" pattern="MM-dd" var="toDay"/>
									<c:forEach var="l" items="${p.list }">
									<tr>
										<c:if test="${l.state == '검토중' }">
											<td><span class="label label-warning">${l.state }</span></td>
										</c:if>
										<c:if test="${l.state == '완료' }">
											<td><span class="label label-primary">${l.state }</span></td>
										</c:if>
										<td>${l.nickname }</td>
										<td class="title"><a href="${pageContext.request.contextPath}/suggest/view/${l.idx}">${l.title }</a></td>
										<td>
											<fmt:formatDate value="${l.writeDate }" pattern="MM-dd" var="date"/>
											<fmt:formatDate value="${l.writeDate }" pattern="HH:mm" var="time"/>
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
						
						
						<!-- 페이징 시작 -->
						<nav style="text-align: center;">
							<ul class="pagination pagination-sm">
								<c:if test="${p.page != 1 }">
									<li><a href="${pageContext.request.contextPath }/suggest/list/${p_idx}">처음</a></li>
								</c:if>
								<c:if test="${p.page == 1 }">
									<li class="disabled"><a>처음</a></li>
								</c:if>
								
								<c:if test="${p.startPage != 1 }">
									<li><a href="${pageContext.request.contextPath }/suggest/list/${p_idx}?page=${p.startPage - 1}">이전</a></li>
								</c:if>
								<c:if test="${p.startPage == 1 }">
									<li class="disabled"><a>이전</a></li>
								</c:if>
								
								<c:forEach var="i" begin="${p.startPage }" end="${p.endPage }">
									<c:if test="${i == p.page }">
										<li class="active"><a><b>${i }</b></a></li>
									</c:if>
									<c:if test="${i != p.page }">
										<li><a href="${pageContext.request.contextPath }/suggest/list/${p_idx}?page=${i}">${i }</a></li>
									</c:if>
								</c:forEach>
								
								<c:if test="${p.endPage != p.totalPage }">
									<li><a href="${pageContext.request.contextPath }/suggest/list/${p_idx}?page=${p.endPage + 1}">다음</a></li>
								</c:if>
								<c:if test="${p.endPage == p.totalPage }">
									<li class="disabled"><a>다음</a></li>
								</c:if>
								
								<c:if test="${p.page != p.totalPage }">
									<li><a href="${pageContext.request.contextPath }/suggest/list/${p_idx}?page=${p.totalPage}">끝</a></li>
								</c:if>
								<c:if test="${p.page == p.totalPage }">
									<li class="disabled"><a>끝</a></li>
								</c:if>
							</ul>
						</nav>
						<!-- 페이징 끝 -->
					</c:if>
				</div>
				<!-- 테이블 끝 -->
			
			
			
			</div>
			<!-- ~~ 끝-->
	
			
	
	
	
	
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->



</body>
</html>