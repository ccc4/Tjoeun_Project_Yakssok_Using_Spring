<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<!-- 게시글 작성 -->
			<div>
				<h3>공지사항 작성</h3>
				<form class="form-horizontal" action="${pageContext.request.contextPath }/board/notice/write" method="POST" >
					<div class="form-group">
						<div class="col-md-12">
							<input class="form-control" type="text" name="title" placeholder="제목" maxlength="255">
							<textarea class="form-control" rows="13" name="contents" placeholder="내용" maxlength="1000"></textarea>
						</div>
					</div>
					<button type="button" class="btn btn-success pull-left" onclick="location.href='${pageContext.request.contextPath }/board/notice/'">목록</button>
					<button type="submit" class="btn btn-primary pull-right">작성</button>
				</form>
			</div>
			<!-- 게시글 작성 끝 -->
			
			
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->
		
</body>
</html>