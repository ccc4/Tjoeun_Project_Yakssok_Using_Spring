<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
<link href="${pageContext.request.contextPath }/resources/css/board.css" rel="stylesheet">
</head>
<body>

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>
			<!-- 게시판 시작 -->
			<div class="_board_list">
				<div class="_board_list_subject">
					<a class="h3" href="${pageContext.request.contextPath }/board/free/">자유게시판</a>
				</div>
				
				<!-- 검색폼 -->
				<div style="margin-bottom: 10px">
					<form class="form-inline" action="${pageContext.request.contextPath }/board/free/" method="GET">
						<select class="form-control" name="option">
							<option value="t">제목</option>
							<option value="n">글쓴이</option>
							<option value="c">내용</option>
							<option value="tc">제목+내용</option>
						</select>
						<input class="form-control" type="text" name="keyword" placeholder="검색어 입력">
						<button class="btn btn-default" type="submit">검색</button>
					</form>
				</div>
				<!-- 검색폼 끝 -->
		
				<!-- 게시판 목록-->
				<div class="_board_list_table">
					<table class="table table-hover" style="table-layout:fixed; word-break:break-all;">
						<thead>
							<tr>
								<th width="35px" style="background-color: black; color: white; text-align: center;">번호</th>
								<th width="300px" style="background-color: black; color: white; text-align: center;">제목</th>
								<th width="100px" style="background-color: black; color: white; text-align: center;">글쓴이</th>
								<th width="35px" style="background-color: black; color: white; text-align: center;">날짜</th>
								<th width="35px" style="background-color: black; color: white; text-align: center;">조회</th>
							</tr>
						</thead>
						<tbody>
							<fmt:formatDate value="<%=new java.util.Date() %>" pattern="MM-dd" var="toDay"/>
							<c:forEach var="l" items="${p.list }">
							<tr>
								<td>${l.b_idx }</td>
								<td class="_board_list_title"><a href="${pageContext.request.contextPath}/board/free/view/${l.b_idx}">${l.title }</a></td>
								<td>${l.nickname }</td>
								
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
								
								<td>${l.read_cnt }</td>
							</tr>
							</c:forEach>
							<!-- 페이지 존재여부 확인하여 없다면 게시판 제목과 같이 출력 -->
								<tr>
								  <td style="text-align: center;" colspan="5">
								    <c:if test="${empty p.list }">
					                    <span>데이터가 존재하지 않습니다.</span>
				                    </c:if>
				                    <c:if test="${!empty p.list }"></c:if>
								  </td>
								</tr>
						</tbody>
					</table>
					
					<!-- 로그인 체크 -->
					<c:if test="${!empty loginMember }">
						<input type="button" class="btn btn-default btn-sm pull-right" value="글작성" onclick="location.href='${pageContext.request.contextPath }/board/free/write'">
					</c:if>
				</div>
				<!-- 게시판 목록 끝 -->					
				
				<!-- 페이징 시작 -->
				<div class="_board_list_pagenation">
					<nav style="text-align: center;">
						<ul class="pagination pagination-sm">
							<c:if test="${p.page != 1 }">
								<c:if test="${empty p.option }">
									<li><a href="${pageContext.request.contextPath }/board/free">처음</a></li>
								</c:if>
								<c:if test="${!empty p.option }">
									<li><a href="${pageContext.request.contextPath }/board/free?option=${p.option}&keyword=${p.keyword}">처음</a></li>
								</c:if>
							</c:if>
							<c:if test="${p.page == 1 }">
								<li class="disabled"><a>처음</a></li>
							</c:if>
							
							<c:if test="${p.startPage != 1 }">
								<c:if test="${empty p.option }">
									<li><a href="${pageContext.request.contextPath }/board/free?page=${p.startPage - 1}">이전</a></li>
								</c:if>
								<c:if test="${!empty p.option }">
									<li><a href="${pageContext.request.contextPath }/board/free?page=${p.startPage - 1}&option=${p.option}&keyword=${p.keyword}">이전</a></li>
								</c:if>
							</c:if>
							<c:if test="${p.startPage == 1 }">
								<li class="disabled"><a>이전</a></li>
							</c:if>
							
							<c:forEach var="i" begin="${p.startPage }" end="${p.endPage }">
								<c:if test="${i == p.page }">
									<li class="active"><a><b>${i }</b></a></li>
								</c:if>
								<c:if test="${i != p.page }">
									<c:if test="${empty p.option }">
										<li><a href="${pageContext.request.contextPath }/board/free?page=${i}">${i }</a></li>
									</c:if>
									<c:if test="${!empty p.option }">
										<li><a href="${pageContext.request.contextPath }/board/free?page=${i}&option=${p.option}&keyword=${p.keyword}">${i }</a></li>
									</c:if>
								</c:if>
							</c:forEach>
							
							<c:if test="${p.endPage != p.totalPage }">
								<c:if test="${empty p.option }">
									<li><a href="${pageContext.request.contextPath }/board/free?page=${p.endPage + 1}">다음</a></li>
								</c:if>
								<c:if test="${!empty p.option }">
									<li><a href="${pageContext.request.contextPath }/board/free?page=${p.endPage + 1}&option=${p.option}&keyword=${p.keyword}">다음</a></li>
								</c:if>
							</c:if>
							<c:if test="${p.endPage == p.totalPage }">
								<li class="disabled"><a>다음</a></li>
							</c:if>
							
							<c:if test="${p.page != p.totalPage }">
								<c:if test="${empty p.option }">
									<li><a href="${pageContext.request.contextPath }/board/free?page=${p.totalPage}">끝</a></li>
								</c:if>
								<c:if test="${!empty p.option }">
									<li><a href="${pageContext.request.contextPath }/board/free?page=${p.totalPage}&option=${p.option}&keyword=${p.keyword}">끝</a></li>
								</c:if>
							</c:if>
							<c:if test="${p.page == p.totalPage }">
								<li class="disabled"><a>끝</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
				<!-- 페이징 끝 -->
			
			</div>
			<!-- 게시판 끝 -->
			
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->

</body>
</html>
