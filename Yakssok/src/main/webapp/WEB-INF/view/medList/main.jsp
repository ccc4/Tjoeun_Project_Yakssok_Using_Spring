<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp" />
<link href="${pageContext.request.contextPath }/resources/css/medList.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic+Coding|Sunflower:300" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!--  웹폰트 3가지 불러오기 -->

<style type="text/css">
.col-lg-3 {
text-align: center;
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
			<h2 class="page-header">편의점 상비약</h2>
	         <div class="row">
                  <div class="col-lg-3">
                    <img class="img-circle" src="${pageContext.request.contextPath }/resources/img/medList/1.png" alt="Generic placeholder image" width="140" height="140">
                    <h2>감기약</h2>
                    <p>기침, 콧물, 열 등 감기 증상이 심할 때</p>
                    <p><a class="btn btn-default" href="${pageContext.request.contextPath }/medList/cold" role="button">자세히 보기 &raquo;</a></p>
                  </div>
                  <div class="col-lg-3">
                    <img class="img-circle" src="${pageContext.request.contextPath }/resources/img/medList/2.png" alt="Generic placeholder image" width="140" height="140">
                    <h2>해열제</h2>
                    <p>체온이 높아져 열을 내리기 위할 때 </p>
                    <p><a class="btn btn-default" href="${pageContext.request.contextPath }/medList/fever" role="button">자세히 보기 &raquo;</a></p>
                  </div>
                  <div class="col-lg-3">
                    <img class="img-circle" src="${pageContext.request.contextPath }/resources/img/medList/3.png" alt="Generic placeholder image" width="140" height="140">
                    <h2>소화제</h2>
                    <p>위와 장의 소화기능을 높일 때</p>
                    <p><a class="btn btn-default" href="${pageContext.request.contextPath }/medList/peptic" role="button">자세히 보기 &raquo;</a></p>
                  </div>
                  <div class="col-lg-3">
                    <img class="img-circle" src="${pageContext.request.contextPath }/resources/img/medList/4.png" alt="Generic placeholder image" width="140" height="140">
                    <h2>파스</h2>
                    <p>근육통, 관절통, 어깨결림 등이 있을 때</p>
                    <p><a class="btn btn-default" href="${pageContext.request.contextPath }/medList/path" role="button">자세히 보기 &raquo;</a></p>
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