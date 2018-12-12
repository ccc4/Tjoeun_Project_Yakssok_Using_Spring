<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp" />
<link href="${pageContext.request.contextPath }/resources/css/firstAid.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!--  메인은 호환성이 불필요하기 때문에 내부css로 처리 -->

<style type="text/css">
.col-lg-4 {
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
				<h2 class="page-header">응급처치</h2>
				   <!-- ~~ 시작-->
	               <div class="row">
                        <div class="col-lg-4">
                          <img class="img-circle" src="${pageContext.request.contextPath }/resources/img/firstAid/1.png" alt="Generic placeholder image" width="140" height="140">
                          <h2>심폐소생술</h2>
                          <p>정지된 심장을 대신해 심장과 뇌에 산소가 <br> 포함된 혈액을 공급해주는 응급처치</p>
                          <p><a class="btn btn-default" href="${pageContext.request.contextPath }/firstAid/heart" role="button">자세히 보기 &raquo;</a></p>
                        </div>
                        <div class="col-lg-4">
                          <img class="img-circle" src="${pageContext.request.contextPath }/resources/img/firstAid/2.png" alt="Generic placeholder image" width="140" height="140">
                          <h2>기도 폐쇄</h2>
                          <p>여러 원인으로 인해 기도가 막히는 현상이 <br> 발생 하였을 때 응급처치  </p>
                          <p><a class="btn btn-default" href="${pageContext.request.contextPath }/firstAid/gido" role="button">자세히 보기 &raquo;</a></p>
                        </div>
                        <div class="col-lg-4">
                          <img class="img-circle" src="${pageContext.request.contextPath }/resources/img/firstAid/3.png" alt="Generic placeholder image" width="140" height="140">
                          <h2>생활 응급처치</h2>
                          <p>일상생활에서 사용할 수 있는 응급처치</p>
                          <p><a class="btn btn-default" href="${pageContext.request.contextPath }/firstAid/lifetime" role="button">자세히 보기 &raquo;</a></p>
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