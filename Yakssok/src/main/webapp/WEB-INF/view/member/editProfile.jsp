<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<!-- 
<script type="text/javascript">
	function check_onclick() {
		F=document.form;
		if(F.nickname.value==""||F.name.value==""||
			F.age.value==""||F.tel.value==""||
			F.email.value==""||F.address.value==""){
				alert("입력란을 모두 작성하세요.")
				location.href='${pageContext.request.contextPath}/editProfile'
			}else{
				alert("수정완료")
				location.href='/Yakssok'
			}
	}
</script>
 -->
 
<script type="text/javascript">

</script>


<body>
<div align="center">
<form action="${pageContext.request.contextPath}/member/editProfileResult" method="post">
<table>
<caption>회원정보 수정</caption>
	<tr>
		<td>아이디:</td>
		<td><input type="text" name ="id" value="${loginMember.id}" readonly></td>
	</tr>
	<tr>
		<td>닉네임:</td>
		<td><input type="text" name ="nickname" value="${loginMember.nickname }"></td>
	</tr>
	<tr>
		<td>이름:</td>
		<td><input type="text" name="name" value="${loginMember.name }"></td>
	</tr>
	<tr>
		<td>나이:</td>
		<td><input type="number" name="age" value="${loginMember.age}"></td>
	</tr>
	<tr>
		<td>번호:</td>
		<td><input type="tel" name="tel" value="${loginMember.tel }"></td>
	</tr>
	<tr>
		<td>메일:</td>
		<td><input type="email" name="email" value="${loginMember.email }"></td>
	</tr>
	<tr>
		<td>주소:</td>
		<td><input type="text" name="address" value="${loginMember.address }"></td>
	</tr>
</table>
	<input type="submit" value="수정">
</form>
</div>
</body>
</html>