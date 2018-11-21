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
		location.href="${pageContext.request.contextPath}/";
	}
</script>

<c:if test="${join eq 1 }">
	<script type="text/javascript">
		show("회원가입완료!\n 회원가입한 아이디로 로그인해주세요.");
	</script>
</c:if>

<c:if test="${join eq 0 }">
	<script type="text/javascript">
		show("회원가입실패");
	</script>
</c:if>

<c:if test="${login == 1 }">
	<script type="text/javascript">
		home();
	</script>
</c:if>

<c:if test="${login == 0 }">
	<script type="text/javascript">
		show("로그인실패");
		location.href="login";
	</script>
</c:if>

<c:if test="${logout == 1 }">
	<script type="text/javascript">
		home();
	</script>
</c:if>


<c:if test="${findId eq 0 }">
	<script type="text/javascript">
	show("존재하지 않는 회원이거나 아이디 또는 이메일이 틀렸습니다.");
	location.href="findId";
	</script>
</c:if>

<c:if test="${findId eq 1}">
사용자의 아이디는 <strong>${findIdResult.id}</strong> 입니다.
<a href="${pageContext.request.contextPath}/member/login">[로그인]</a>
</c:if>

<c:if test="${modify eq 1 }">
	<script type="text/javascript">
		show("수정 완료");
		home();
	</script>
</c:if>


<c:if test="${modify eq 0 }">
	<script type="text/javascript">
		show("수정 실패");
		home();
	</script>
</c:if>

<c:if test="${failmodify eq 0 }">
	<script type="text/javascript">
		show("입력란을 모두 채워주세요");
		location.href= "editProfile";
	</script>
</c:if>

<c:if test="${delete eq 0}">
	<script type="text/javascript">
		show("회원탈퇴 실패, 아이디 또는 비밀번호가 틀렸습니다.");
		location.href='delete';
	</script>
</c:if>

<c:if test="${delete eq 1}">
	<script type="text/javascript">
		show("회원탈퇴완료");
		home();
	</script>
</c:if>

<c:if test="${findPw eq 0}">
	<script type="text/javascript">
	show("회원정보가 틀렸거나 존재하지 않습니다.");
	location.href='findPw';
	</script>
</c:if>

<c:if test="${findPw eq 1}">
	<script type="text/javascript">
	show("이메일로 임시비밀번호를 전송하였습니다.");
	home();
	</script>
</c:if>
	
</body>
</html>