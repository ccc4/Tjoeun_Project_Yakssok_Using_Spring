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
<jsp:include page="/WEB-INF/resources/init/header.jsp"/>

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
	<div>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${menu }'">처음으로</button>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${menu }/${first }'">${first } 전체목록</button>
	</div>
	
	<div>
		<c:forEach var="sv" items="${secondValues }">
			<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/allDay/${first }/${sv }'">${sv }</button>&nbsp;
		</c:forEach>
	</div>
	
	<div style="text-align: center">
		<c:if test="${empty list }">
			<c:forEach var="sv" items="${secondValues }">
				<table border="1" style="width: 100%">
					<caption class="h3">${sv }</caption>
					<tr>
						<th width="150px" style="background-color: #eeeeee; text-align: center;">약국명</th>
						<th width="100px" style="background-color: #eeeeee; text-align: center;">연락처</th>
						<th width="100px" style="background-color: #eeeeee; text-align: center;">주소</th>
						<th width="150px" style="background-color: #eeeeee; text-align: center;">토,일,공휴일 운영시간</th>
						<th width="150px" style="background-color: #eeeeee; text-align: center;">비고(세부 운영시간)</th>
						<th width="70px" style="background-color: #eeeeee; text-align: center;">지도보기</th>
					</tr>
					<c:forEach var="l" items="${map[sv] }">
						<tr>
							<td style="text-align: left;">${l.name }</td>
							<td>${l.tel }</td>
							<td style="text-align: left;">${l.address }</td>
							<td>${l.weekend }</td>
							<td style="text-align: left;">${l.remarks }</td>
							<td><a href="${pageContext.request.contextPath}/drugstore/showMap/${l.address}">지도링크</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:forEach>
		</c:if>
		<c:if test="${!empty list }">
			<table border="1"  style="width: 100%">
				<caption class="h3">${second }</caption>
				<tr>
					<th width="150px" style="background-color: #eeeeee; text-align: center;">약국명</th>
					<th width="100px" style="background-color: #eeeeee; text-align: center;">연락처</th>
					<th width="100px" style="background-color: #eeeeee; text-align: center;">주소</th>
					<th width="150px" style="background-color: #eeeeee; text-align: center;">토,일,공휴일 운영시간</th>
					<th width="150px" style="background-color: #eeeeee; text-align: center;">비고(세부 운영시간)</th>
					<th width="70px" style="background-color: #eeeeee; text-align: center;">지도보기</th>
				</tr>
				<c:forEach var="l" items="${list }">
					<tr>
						<td style="text-align: left;">${l.name }</td>
						<td>${l.tel }</td>
						<td style="text-align: left;">${l.address }</td>
						<td>${l.weekend }</td>
						<td style="text-align: left;">${l.remarks }</td>
						<td><a href="${pageContext.request.contextPath}/drugstore/showMap/${l.address}">지도링크</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	
	</div>

</div>



</body>
</html>