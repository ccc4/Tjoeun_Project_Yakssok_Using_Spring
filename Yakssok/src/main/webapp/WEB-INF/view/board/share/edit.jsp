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
		<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
		<!-- article 시작 -->
		<article style="margin-right: 20%">
	
			<!-- ~~ 시작-->
			<div>
			<form action="${pageContext.request.contextPath}/board/share/edit" method="post">
				<h3>팁&정보 작성</h3>
					<input type="hidden" name="b_idx" value="${result.b_idx }">
					<div  class="form-group">
						<div class="col-md-12">
							<input class="form-control" type="text" name = "title" value="${result.title }" maxlength="255"><br/>
							<textarea class="form-control" rows="13" name="contents" maxlength="1000" style="resize:none;">${result.contents }</textarea><br/>
						</div>
					</div>
				<button type="button" class="btn btn-success pull-left" onclick="location.href='${pageContext.request.contextPath }/board/share/'">목록</button>
				<button type="submit"  class="btn btn-primary pull-right">수정</button>
			</form>
			</div>
			<!-- ~~ 끝-->

		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->



</body>
</html>