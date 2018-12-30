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

<!-- 혹시 모를 비정상 접근 차단 -->
<c:if test="${empty loginMember }">
	<script type="text/javascript">
		alert("잘못된 접근입니다.");
		location.href="${pageContext.request.contextPath }/board/notice";
	</script>
</c:if>

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>
			<!-- 게시글 작성 -->
			<div>
				<h3>팁 & 정보공유 수정</h3>
				<form class="form-horizontal" action="${pageContext.request.contextPath }/board/share/modify" method="POST" >
				<!-- 게시글 b_idx 를 숨겨서 같이 넘겨줌 -->
				<input type="hidden" name="b_idx" value="${result.b_idx }">
					<div class="form-group">
						<div class="col-md-12">
							<input class="form-control" type="text" name="title" value="${result.title }" maxlength="255">
							<textarea class="form-control" rows="13" name="contents" maxlength="1000">${result.contents }</textarea>
						</div>
					</div>
					<button type="button" class="btn btn-success pull-left" onclick="location.href='${pageContext.request.contextPath }/board/share'">목록</button>
					<button type="submit" class="btn btn-primary pull-right">작성</button>
				</form>
			</div>
			<!-- 게시글 작성 끝 -->
			
			
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->
		
</body>
</html>