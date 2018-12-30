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

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>

			<div>
				<h3>회사 등록</h3>
				<form action="${pageContext.request.contextPath }/pill/add_company" method="POST">
					<div>
						<input type="text" name="name" placeholder="회사이름">
					</div>
					<div>
						<textarea rows="1" cols="40" name="address" placeholder="주소"></textarea>
					</div>
					<div>
						<input type="text" name="tel" placeholder="전화번호">
					</div>
					<div>
						<input type="text" name="fax" placeholder="팩스">
					</div>
					<div>
						<input type="url" name="url" placeholder="홈페이지">
					</div>
					<input type="submit" value="등록">
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