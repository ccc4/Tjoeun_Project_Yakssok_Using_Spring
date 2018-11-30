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
	
		<div style="width: 100%; text-align: center">
			<div style="display: inline-block; text-align: left; width: 250px">
	
				<form action="${pageContext.request.contextPath}/member/editPw" method="post">
					<h3>비밀번호 수정</h3>
						<div class="form-group">
							<input type="text" class="form-control" name="id" placeholder="아이디">
						</div>
				
						<div class="form-group" >
							<input type="password" class="form-control" name="pw" placeholder="기존 비밀번호">
						</div>
			
						<div class="form-group">
							<input type="password" class="form-control" name = "newPw" placeholder="변경 비밀번호">
						</div>
						<div>
							<input type="submit" class="btn btn-default pull-right" value="수정">
						</div>
				</form>
			</div>

		</div>
</div>

</body>
</html>