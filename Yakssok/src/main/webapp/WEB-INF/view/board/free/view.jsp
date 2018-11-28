<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
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


			<!-- 게시글 보기 -->
			<div>
				<table class="table" style="table-layout:fixed; word-break:break-all;">
					<thead>
						<tr>
							<th style="background-color: #eeeeee;">${board.title }</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								글쓴이: ${board.nickname } &nbsp;
								<fmt:timeZone value="KST">
									<fmt:formatDate value="${board.writeDate }" pattern="yyyy-MM-dd HH:mm:ss" var="writeDate"/>
								</fmt:timeZone>
								등록일: ${writeDate } &nbsp;
								조회수: ${board.read_cnt }
							</td>
						</tr>
						<c:if test="${!empty board.modifyDate }">
							<tr>
								<td>
									<fmt:timeZone value="KST">
										<fmt:formatDate value="${board.modifyDate }" pattern="yyyy-MM-dd HH:mm:ss" var="modifyDate"/>
									</fmt:timeZone>
									수정일: ${modifyDate }
								</td>
							</tr>
						</c:if>
						<tr>
							<td height="300">${board.contents }</td>
						</tr>
					</tbody>
				</table>
				<input type="button" class="btn btn-success pull-left" value="목록" onclick="location.href='${pageContext.request.contextPath }/board/free'">
				<!-- 로그인 되어있고 작성자와 현재 접속자의 m_idx 가 같은지 체크 -->
				<c:if test="${!empty loginMember && loginMember.m_idx == board.m_idx }">
					<button type="button" class="btn btn-danger pull-right" onclick="check_delete()">삭제</button>
					<button type="button" class="btn btn-primary pull-right" onclick="location.href='${pageContext.request.contextPath}/board/free/modify/${board.b_idx}'">수정</button>
				</c:if>
			</div>
			<!-- 게시글 보기 끝 -->
			
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->


<script type="text/javascript">
	function check_delete(){
		var check = confirm("정말 삭제하시겠습니까?");
		if(check){
			location.href='${pageContext.request.contextPath}/board/free/delete?b_idx=${board.b_idx }';
		}
	}
</script>

</body>
</html>