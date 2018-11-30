<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp" />
<link href="${pageContext.request.contextPath }/resources/css/firstAid.css" rel="stylesheet">
<!--  메인은 호환성이 불필요하기 때문에 내부css로 처리 -->

<style type="text/css">
	.list-group {
		border: 1px solid;
		width: 550px;
		text-align: center;
		font-family: 'Nanum Gothic Coding', monospace;
		font-size: 20px;
		padding: 0;
		margin-top: 100px;
	}
	
	.main_list {
		font-family: 'Sunflower', sans-serif;
		font-size: 20px; 
		padding: 10px;
		background: Gainsboro;
	}
</style>
</head>
<body>

	<!-- 컨테이너 시작 -->
	<div class="container">
		<jsp:include page="/WEB-INF/resources/init/header.jsp" />
		<!-- 본문 시작 -->
		<div style="width: 100%">

			<!-- article 시작 -->
			<article>

				<!-- ~~ 시작-->
				<div>
					<div class="container list-group">
						<a class="list-group-item list-group-item-info"> <strong>응급처치
								목록</strong>
						</a>

						<div class="main_list">
							<a
								href="${pageContext.request.contextPath }/firstAid/heart"
								class="list-group-item list-group-item-action">심폐소생술</a> <a
								href="${pageContext.request.contextPath }/firstAid/gido"
								class="list-group-item list-group-item-action">기도 폐쇄</a> <a
								href="${pageContext.request.contextPath }/firstAid/lifetime"
								class="list-group-item list-group-item-action">생활 응급처치</a>
						</div>
					</div>
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