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

<c:if test="${write eq 1 }">
	<script type="text/javascript">
		alert("등록 완료");
		location.href= "${pageContext.request.contextPath}/board/share"
	</script>
</c:if>
	
<c:if test="${write eq 0 }">
	<script type="text/javascript">
		alert("등록 실패");
		location.href= "${pageContext.request.contextPath}/"
	</script>
</c:if>

<c:if test="${delete eq 0 }">
	<script type="text/javascript">
		alert("삭제실패");
		location.href= "${pageContext.request.contextPath}/board/share"
	</script>
</c:if>
	
<c:if test="${delete eq 1 }">
	<script type="text/javascript">
		alert("삭제완료");
		location.href= "${pageContext.request.contextPath}/board/share"
	</script>
</c:if>

<c:if test="${modify eq 0 }">
	<script type="text/javascript">
		alert("수정실패");
		location.href= "${pageContext.request.contextPath}/board/share"
	</script>
</c:if>

<c:if test="${modify eq 1 }">
	<script type="text/javascript">
		alert("수정완료");
		location.href= "${pageContext.request.contextPath}/board/share/view/" + ${b_idx};
	</script>
</c:if>

</body>
</html>