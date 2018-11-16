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
	<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
	<div>
		<c:if test="${menu == 'allDay' }">
			<h2>연중무휴</h2>
		</c:if>
		<c:if test="${menu == 'night' }">
			<h2>심야약국</h2>
		</c:if>
	</div>
	
	<div style="margin-bottom: 10px">
		<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${menu }'">처음으로</button>
		<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${menu }/${first }'">${first } 전체목록</button>
	</div>
	
	<div style="margin-bottom: 30px">
		<c:forEach var="sv" items="${secondValues }">
			<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/allDay/${first }/${sv }'">${sv }</button>&nbsp;
		</c:forEach>
	</div>
	
	<div style="text-align: center">
		<c:if test="${empty list }">
			<c:forEach var="sv" items="${secondValues }">
				<div class="panel panel-default">
					<div class="panel-heading" style="text-align: left;"><strong class="h3">${sv }</strong></div>
					<table class="table table-bordered table-hover table-condensed table-responsive" style="table-layout:fixed; word-break:break-all;">
						<tr>
							<th width="110px" style="text-align: center;">약국명</th>
							<th width="80px" style="text-align: center;">연락처</th>
							<th width="170px" style="text-align: center;">주소</th>
							<th width="100px" style="text-align: center;">토,일,공휴일 운영시간</th>
							<th width="150px" style="text-align: center;">비고(세부 운영시간)</th>
							<th width="50px" style="text-align: center;">지도보기</th>
						</tr>
						<c:forEach var="l" items="${map[sv] }">
							<tr>
								<td style="text-align: left;">${l.name }</td>
								<td>${l.tel }</td>
								<td style="text-align: left;">${l.address }</td>
								<td>${l.weekend }</td>
								<td style="text-align: left;">${l.remarks }</td>
								<td><a href="${pageContext.request.contextPath}/drugstore/showMap/${l.idx}">지도링크</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${!empty list }">
			<div class="panel panel-default">
				<div class="panel-heading" style="text-align: left;"><strong class="h3">${second }</strong></div>
				<table class="table table-bordered table-hover table-condensed table-responsive" style="table-layout:fixed; word-break:break-all;">
					<tr>
						<th width="110px" style="text-align: center;">약국명</th>
						<th width="80px" style="text-align: center;">연락처</th>
						<th width="170px" style="text-align: center;">주소</th>
						<th width="100px" style="text-align: center;">토,일,공휴일 운영시간</th>
						<th width="150px" style="text-align: center;">비고(세부 운영시간)</th>
						<th width="50px" style="text-align: center;">지도보기</th>
					</tr>
					<c:forEach var="l" items="${list }">
						<tr>
							<td style="text-align: left;">${l.name }</td>
							<td>${l.tel }</td>
							<td style="text-align: left;">${l.address }</td>
							<td>${l.weekend }</td>
							<td style="text-align: left;">${l.remarks }</td>
							<td><a href="${pageContext.request.contextPath}/drugstore/showMap/${l.idx}">지도링크</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
	
	</div>

</div>



</body>
</html>