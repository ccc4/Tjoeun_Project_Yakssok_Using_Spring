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
	
			<!-- ~~ 시작-->
			<div>
				<div>
					<c:if test="${!empty loginMember }">
						<button class="btn btn-primary" type="button" onclick="insert_myInfo()">내 정보 입력</button>
					</c:if>
					<c:if test="${empty loginMember }">
						<button class="btn btn-primary" type="button" disabled>내 정보 입력</button>
					</c:if>
				</div>
				<div>
					<form action="${pageContext.request.contextPath }/suggest/write" method="POST" enctype="multipart/form-data">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">닉네임</div>
								<input type="text" class="form-control" name="nickname" placeholder="닉네임을 입력해주세요.">
								<div class="input-group-addon">연락처</div>
								<input type="text" class="form-control" name="tel" placeholder="연락처를 입력해주세요.">
						    </div>
							<div class="input-group"> 
								<div class="input-group-addon">이메일</div>
								<input class="form-control" type="email" name="email" placeholder="이메일을 입력해주세요.">
							</div>
						</div>
						<div class="form-group">
							<div>
								<c:if test="${empty p_name }">
									<input class="form-control" type="text" name="title" value="${type } 등록하고 싶은 약 이름을 입력해주세요">
								</c:if>
								<c:if test="${!empty p_name }">
									<input class="form-control" type="text" name="title" value="${type } ${p_name}">
								</c:if>
								<textarea class="form-control" rows="10" name="contents" placeholder="내용을 입력해주세요."></textarea>
							</div>
							<div>
								<input type="file" name="file1">
								<input type="file" name="file2">
							</div>
						</div>
						<div>
							<button class="btn btn-default pull-right" type="submit">작성</button>
						</div>
					</form>
				
				</div>
			
			</div>
			<!-- ~~ 끝-->
	
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->


<script type="text/javascript">
	function insert_myInfo() {
		$("input[name=nickname]").val("${loginMember.nickname}");
		$("input[name=tel]").val("${loginMember.tel}");
		$("input[name=email]").val("${loginMember.email}");
	}
</script>


</body>
</html>