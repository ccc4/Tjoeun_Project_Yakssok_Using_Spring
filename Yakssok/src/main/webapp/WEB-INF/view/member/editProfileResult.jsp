<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>

<c:if test="${editProfile eq 0 }">
<script type="text/javascript">
alert("정보를 모두 입력해주세요")
location.href='editProfile'
</script>
</c:if>


<c:if test="${editProfile ne 0 }">
<script type="text/javascript">
alert("수정완료")
location.href='/Yakssok'
</script>
</c:if>

</body>
</html>