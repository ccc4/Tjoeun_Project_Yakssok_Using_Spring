<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/resources/init/header.jsp"/>


<div>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${menu }/서울'">서울</button>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/drugstore/${menu }/경기'">경기</button>
	<button type="button" onclick="notyet()">강원</button>
	<button type="button" onclick="notyet()">충북</button>
</div>


<script type="text/javascript">
	function notyet() {
		alert("준비중");
	}
	
	
	
</script>
</body>
</html>