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

		<h4>[게시글 수정]</h4>
		<form action="${pageContext.request.contextPath }/board/modify" method="post">
			<input type="hidden" name="idx" value="${board.idx}" >
			<div>
				번호:${board.idx}
			</div>
			<div>
				제목: <input type="text" name="title" value="${board.title }" >
				<c:if test="${errors.title }">제목을 입력 하세요.</c:if>
			</div>
			<div>
				내용:<br>
				<textarea name="contents" rows="5" cols="30">${board.contents }</textarea>
			</div>
			<input type="button" value="목록보기" onclick="location.href='${pageContext.request.contextPath }/board/'">
			<input type="submit" value="수정완료">
			<input type="button" value="수정취소" onclick="location.href='${pageContext.request.contextPath }/board/view/${board.idx}'">
			
		</form>
	</div>
</div>

</body>
</html>