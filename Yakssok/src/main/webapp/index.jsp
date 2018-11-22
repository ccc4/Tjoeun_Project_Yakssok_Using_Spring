<!-- 주소로 좌표 찾기 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	
	
	
</div>





</body>
</html>