<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/resources/init/header.jsp"/>


<c:if test="${!empty menu }">
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${menu }'">처음으로</button>
</c:if>

<c:if test="${first == '서울' }">
	<c:if test="${empty list }">
		<script type="text/javascript">
			alert("해당 자료가 아직 없습니다.");
			history.back();
		</script>
	</c:if>
</c:if>
<c:if test="${first == '경기'}">
	<c:if test="${empty list }">
		<script type="text/javascript">
			alert("해당 자료가 아직 없습니다.");
			history.back();
		</script>
	</c:if>
	<div>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/allDay/경기/가평'">가평</button>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/allDay/경기/고양덕양'">고양덕양</button>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/allDay/경기/고양일산동'">고양일산동</button>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/allDay/경기/고양일산서'">고양일산서</button>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/allDay/경기/과천'">과천</button>
		<button type="button" onclick="notyet()">광명</button>
	</div>
</c:if>




<table border="1">
	<tr>
		<th>번호</th>
		<th>약국명</th>
		<th>연락처</th>
		<th>주소</th>
		<th>토,일,공휴일 운영시간</th>
		<th>비고(세부 운영시간)</th>
		<th>지도보기</th>
	</tr>
	<c:forEach var="l" items="${list }" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td>${l.name }</td>
			<td>${l.tel }</td>
			<td>${l.address }</td>
			<td>${l.weekend }</td>
			<td>${l.remarks }</td>
			<td>지도링크</td>
		</tr>
	</c:forEach>
</table>



<script type="text/javascript">
	function notyet() {
		alert("준비중");
	}
	
	
	
</script>
</body>
</html>