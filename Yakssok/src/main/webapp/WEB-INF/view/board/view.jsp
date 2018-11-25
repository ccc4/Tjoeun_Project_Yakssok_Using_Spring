<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>  
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
		<form action="${pageContext.request.contextPath }/board/modify" method="post">
			<input type="hidden" name="b_idx" value="${board.b_idx}" >
			<div>
				번호:${board.b_idx}
				<fmt:timeZone value="KST">
				작성일: <fmt:formatDate value="${board.writeDate}" pattern="yyyy년 MM월 dd일  HH:mm:ss" />
				</fmt:timeZone>
				조회수: ${board.read_cnt }
			</div>
			<div>
				제목: <input type="text" name="title" value="${board.title }" readOnly>
			</div>
			<div>
				내용:<br>
				<textarea name="contents" rows="5" cols="30" readOnly>${board.contents }</textarea>
			</div>
			<input type="button" value="목록보기" onclick="location.href='${pageContext.request.contextPath }/board/'">
			
			<c:if test="${loginMember.m_idx == board.m_idx }">
				<input type="button" value="수정하기" onclick="location.href='${pageContext.request.contextPath}/board/modify?b_idx=${board.b_idx }'">
				<input type="button" value="삭제하기" onclick="deleteConfirm()">
			</c:if>
			<c:if test="${empty loginMember || loginMember.m_idx != board.m_idx }">
				<input type="button" value="수정하기" disabled>
				<input type="button" value="삭제하기" disabled>
			</c:if>
		</form>
	</div>
</div>






<script type="text/javascript">
	function deleteConfirm(){
		var check = confirm("정말 삭제하시겠습니까?");
		if(check){
			location.href='${pageContext.request.contextPath}/board/delete?b_idx=${board.b_idx }';
		}
	}
</script>

</body>
</html>