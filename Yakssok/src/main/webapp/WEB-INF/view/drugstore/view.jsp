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
	.table{
		font-size: 12px;
	}
</style>

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>
		
		
			<!-- 메뉴 구분 시작 -->
			<div>
				<c:if test="${type == 'allDay' }">
					<h2>연중무휴</h2>
				</c:if>
				<c:if test="${type == 'night' }">
					<h2>심야약국</h2>
				</c:if>
			</div>
			<!-- 메뉴 구분 끝 -->
			
			<div style="margin-bottom: 10px">
				<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${type }'">처음으로</button>
				<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${type }/${first }'">${first } 전체목록</button>
			</div>
			
			<!-- 두번째 주소 값 시작 -->
			<div style="margin-bottom: 30px">
				<c:forEach var="sv" items="${secondValues }">
					<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${type }/${first }/${sv }'">${sv }</button>&nbsp;
				</c:forEach>
			</div>
			<!-- 두번째 주소 값 끝 -->
			
			<!-- 리스트 시작 -->
			<div style="text-align: center">
				<c:if test="${empty list }">
					<c:forEach var="sv" items="${secondValues }">
						<div class="panel panel-default">
							<div class="panel-heading" style="text-align: left;"><strong class="h3">${sv }</strong></div>
							<table class="table table-bordered table-hover table-responsive" style="table-layout:fixed; word-break:break-all;">
								<tr>
									<th width="110px" style="text-align: center;">약국명</th>
									<th width="80px" style="text-align: center;">연락처</th>
									<th width="170px" style="text-align: center;">주소</th>
									<th width="100px" style="text-align: center;">토,일,공휴일</th>
									<th width="150px" style="text-align: center;">세부 운영시간</th>
									<th width="50px" style="text-align: center;">지도보기</th>
								</tr>
								<c:forEach var="l" items="${map[sv] }">
									<tr>
										<td style="text-align: left;">${l.name }</td>
										<td>${l.tel }</td>
										<td style="text-align: left;">${l.address }</td>
										<td>${l.weekend }</td>
										<td style="text-align: left;">${l.remarks }</td>
										<td><a href="${pageContext.request.contextPath}/drugstore/showMap/${type }/${l.idx}">지도링크</a></td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${!empty list }">
					<div class="panel panel-default">
						<div class="panel-heading" style="text-align: left;"><strong class="h3">${second }</strong></div>
						<table class="table table-bordered table-hover table-responsive" style="table-layout:fixed; word-break:break-all;">
							<tr>
								<th width="110px" style="text-align: center;">약국명</th>
								<th width="80px" style="text-align: center;">연락처</th>
								<th width="170px" style="text-align: center;">주소</th>
								<th width="100px" style="text-align: center;">토,일,공휴일</th>
								<th width="150px" style="text-align: center;">세부 운영시간</th>
								<th width="50px" style="text-align: center;">지도보기</th>
							</tr>
							<c:forEach var="l" items="${list }">
								<tr>
									<td style="text-align: left;">${l.name }</td>
									<td>${l.tel }</td>
									<td style="text-align: left;">${l.address }</td>
									<td>${l.weekend }</td>
									<td style="text-align: left;">${l.remarks }</td>
									<td><a href="${pageContext.request.contextPath}/drugstore/showMap/${type }/${l.idx}">지도링크</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</c:if>
			</div>
			<!-- 리스트 끝 -->
	
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->



</body>
</html>