<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
<title>글 작성</title>
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
		
		<div>
		<form class="form-horizontal" action="${pageContext.request.contextPath}/board/share/write" method="post">
			<h3>팁&정보 작성</h3>
			<div  class="form-group">
				<div class="col-md-12">
					<input class="form-control" type="text" name = "title" placeholder="제목" maxlength="255"><br/>
					<textarea class="form-control" rows="13" name="contents" placeholder="내용" maxlength="1000" style="resize:none;"></textarea><br/>
				</div>
			</div>
			<button type="button" class="btn btn-success pull-left" onclick="location.href='${pageContext.request.contextPath }/board/share/'">목록</button>
			<input type="submit" value = "등록" class="btn btn-primary pull-right">

			</form>
		
		</div>

		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->
		
</body>
</html>