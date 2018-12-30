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

<c:if test="${empty result }">
	<script type="text/javascript">
		alert("트랜잭션 오류 발생!!\n메인으로 돌아갑니다.");
		location.href="${pageContext.request.contextPath }/";
	</script>
</c:if>


<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>


			<!-- 게시글 보기 -->
			<div>
				<table class="table" style="table-layout:fixed; word-break:break-all;">
					<thead>
						<tr>
							<th style="background-color: #eeeeee;">${result.title }</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								글쓴이: ${result.nickname } &nbsp;
								<fmt:formatDate value="${result.writeDate }" pattern="yyyy-MM-dd HH:mm:ss" var="writeDate"/>
								등록일: ${writeDate } &nbsp;
								조회수: ${result.read_cnt }
							</td>
						</tr>
						<c:if test="${!empty result.modifyDate }">
							<tr>
								<td>
									<fmt:formatDate value="${result.modifyDate }" pattern="yyyy-MM-dd HH:mm:ss" var="modifyDate"/>
									수정일: ${modifyDate }
								</td>
							</tr>
						</c:if>
						<tr>
							<td height="300">${result.contents }</td>
						</tr>
					</tbody>
				</table>
				<input type="button" class="btn btn-success pull-left" value="목록" onclick="location.href='${pageContext.request.contextPath }/board/share'">
				<!-- 로그인 되어있고 작성자와 현재 접속자의 m_idx 가 같은지 체크 -->
				<c:if test="${!empty loginMember && loginMember.m_idx == result.m_idx }">
					<button type="button" class="btn btn-primary pull-right" onclick="check_delete()">삭제</button>
					<button type="button" class="btn btn-primary pull-right" onclick="location.href='${pageContext.request.contextPath }/board/share/modify/${result.b_idx }'">수정</button>
				</c:if>
			</div>
			<!-- 게시글 보기 끝 -->
			
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->


<!-- 삭제 확인. 해당 글의 작성자한테만 버튼이 보이기 때문에 따로 인증절차는 안했음 -->
<script type="text/javascript">
	function check_delete() {
		var check = confirm("정말 삭제하시겠습니까?");
		if(check == 1) {
			location.href='${pageContext.request.contextPath }/board/share/delete/${result.b_idx }';
		} else{
			return false;
		}
	}
</script>

</body>
</html>