<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>


<c:if test="${result eq 0}">
<script type="text/javascript">
alert("회원탈퇴 실패, 아이디 또는 비밀번호가 틀렸습니다.")
location.href='delete'
</script>
</c:if>

<c:if test="${result ne 0}">
<script type="text/javascript">
alert("회원탈퇴완료")
location.href="/Yakssok"
</script>
</c:if>

</body>
</html>