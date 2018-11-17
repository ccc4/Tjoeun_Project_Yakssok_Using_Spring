<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${ result eq 0 }"> 
		<script type="text/javascript">
			alert("변경실패")
			location.href = "editPw"
		</script>
	</c:if>

	<c:if test="${ result ne 0 }">
		<script type="text/javascript">
			alert("변경완료")
			location.href = "/Yakssok"
		</script>
	</c:if>

</body>
</html>