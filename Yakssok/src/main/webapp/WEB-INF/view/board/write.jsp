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

		<form name="write" onsubmit="return check()" action="${pageContext.request.contextPath }/board/write" method="POST">
			<div>
				<c:if test="${!empty loginMember }">
					닉네임: <label>${loginMember.nickname }</label>
				</c:if>
			</div>
			<div>
				제목: <input type="text" name="title" placeholder="제목을 입력하세요.">
				<span class="error" id="titleMsg" style="display: none" role="alert"></span>
			</div>
			<div>
				내용:<br>
				<textarea name="contents" rows="5" cols="30" placeholder="내용을 입력하세요."></textarea>
			</div>
			<input type="submit" value="작성완료" >
			<input type="button" value="작성취소" onclick="location.href='${pageContext.request.contextPath }/board/'">
		
		</form>
	</div>
</div>



<script type="text/javascript">
function check(){
	if(document.write.title.value == 0){
		alert("제목을 입력해 주세요.");
		document.write.title.focus();
		return false;
	}else{
		return true;
	}
}
</script>

</body>
</html>