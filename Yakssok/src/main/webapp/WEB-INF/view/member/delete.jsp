<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
</head>
<body>

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
		
	
		<!-- article 시작 -->
		<article>
	
	
	
			<div>
				<form action="${pageContext.request.contextPath}/member/delete" method="post">
					<table>
						<caption>회원탈퇴</caption>
						<tr>
							<td>아이디:</td>
							<td><input type="text" name="id"></td>
						</tr>
							<tr>
							<td>비밀번호:</td>
							<td><input type="password" name="pw"></td>
						</tr>
					</table>
					<input type="submit" value="탈퇴">
				</form>
			</div>


		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->

</body>
</html>