<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<script type="text/javascript">
	function show(str) {
		alert(str);
		home();
	}
	function home() {
		location.href="${pageContext.request.contextPath}/board/free";
	}
</script>
<c:if test="${wrong == 1 }">
	<script type="text/javascript">
		alert("잘못된 접근입니다.");
		location.href= "${pageContext.request.contextPath}/";
	</script>
</c:if>

<c:if test="${none == 1 }">
	<script type="text/javascript">
		alert("게시물이 존재하지 않습니다.");
		location.href= "${pageContext.request.contextPath}/";
	</script>
</c:if>

<c:if test="${write == 1 }">
	<script type="text/javascript">
		show("작성 완료");
	</script>
</c:if>
<c:if test="${write == 0 }">
	<script type="text/javascript">
		show("작성 실패");
	</script>
</c:if>

<c:if test="${modify == 1 }">
	<script type="text/javascript">
		alert("수정 완료");
		location.href= "${pageContext.request.contextPath}/board/free/view/" + ${b_idx};
	</script>
</c:if>
<c:if test="${modify == 0 }">
	<script type="text/javascript">
		show("수정 실패");
	</script>
</c:if>

<c:if test="${delete == 1 }">
	<script type="text/javascript">
		show("삭제 완료");
	</script>
</c:if>
<c:if test="${delete == 0 }">
	<script type="text/javascript">
		show("삭제 실패");
	</script>
</c:if>


</body>
</html>