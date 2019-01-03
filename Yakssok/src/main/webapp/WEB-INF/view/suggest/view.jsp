<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
<link href="${pageContext.request.contextPath }/resources/css/suggest.css" rel="stylesheet">
</head>
<body>

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>

			<!-- 게시글 보기 -->
			<div class="_suggest_view">
				<div class="_suggest_view_state">
					<c:if test="${result.state == '검토중' }">
						<span class="label label-warning">${result.state }</span>
					</c:if>
					<c:if test="${result.state == '완료' }">
						<span class="label label-primary">${result.state }</span>
					</c:if>
				</div>
				<div class="row _suggest_view_info">
					<strong>닉네임 : </strong>
					${result.nickname } | 
					<strong>연락처 : </strong>
					${result.tel } | 
					<strong>이메일 : </strong>
					${result.email }
				</div>
				<div class="_suggest_view_title">
					${result.title }
				</div>
				<div class="_suggest_view_contents">
					${result.contents }
				</div>
				<div class="_suggest_view_images">
					<c:if test="${!empty result.imgPath1 }">
						<div>
							<a href="${pageContext.request.contextPath }/resources/img/suggest/${result.imgPath1}" download>${result.imgPath1}</a>					
						</div>
					</c:if>
					<c:if test="${!empty result.imgPath2 }">
						<div>
							<a href="${pageContext.request.contextPath }/resources/img/suggest/${result.imgPath2}" download>${result.imgPath2}</a>					
						</div>
					</c:if>
				</div>
				
			</div>
			<div>
				<c:if test="${!empty loginMember && loginMember.type == 2}">
					<button type="button" class="btn btn-primary pull-right" onclick="check_delete()">확인</button>
				</c:if>
				<input type="button" class="btn btn-success pull-right" value="목록" onclick="location.href='${pageContext.request.contextPath}/suggest/list'">			
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
	var idx = ${result.idx};

	function check_delete() {
		var check = confirm("정말 확인처리 하시겠습니까?");
		if(check == 1) {
			$.ajax({
				type: 'POST', 
				url: '${pageContext.request.contextPath}/suggest/confirm/' + idx, 
				data: {idx : idx}, 
				success: function(result) {
					if(result == 1) {
						alert("확인처리 되었습니다.");
						window.location.reload();
					} else{
						alert("확인처리에 실패했습니다.");
						return false;
					}
					
				}
			})
		
		} else{
			return false;
		}
	}
</script>

</body>
</html>