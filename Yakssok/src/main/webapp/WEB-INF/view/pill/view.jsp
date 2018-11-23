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

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<jsp:include page="/WEB-INF/resources/init/login.jsp"/>


	<div>
		<button class="btn btn-default" type="button" onclick="location.href='history.back()'">뒤로가기</button>
		<button class="btn btn-default" type="button" onclick="location.href='#'">수정건의</button>
	</div>

	<!-- 약 정보 페이지 시작 -->
	<div>
			<!-- 상단 -->	
			<div>
				<!-- 사진 -->
				<div>
					<c:if test="${!empty result.imgPath }">
							<img src="${pageContext.request.contextPath }/resources/pill/img/${result.imgPath}" alt="${result.imgPath}" width="200" style="margin: 0">
					</c:if>
					<c:if test="${empty result.imgPath }">
							<img src="${pageContext.request.contextPath }/resources/init/img/1.png" alt="이미지없음" width="200" style="margin: 0">
					</c:if>
				</div>
				<!-- info1 -->
				<div>
					<!-- 평가 -->
					<div>
						<c:if test="${result.rating == -1}">
				        	<button class="btn btn-primary" type="button">
				        		Good&nbsp;<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
				        	</button> 
				        	<button class="btn btn-danger" type="button">
				        		Bad&nbsp;<span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
				        	</button> 
				        </c:if>
				        <c:if test="${result.rating != -1}">
				        	<div>
						        <c:if test="${result.rating >= 50}">
						        	<img alt="" src="${pageContext.request.contextPath }/resources/pill/rating/good.png" width="30">
					        		<span>${result.rating } %</span>
					        	</c:if>
						        <c:if test="${result.rating < 50}">
						        	<img alt="" src="${pageContext.request.contextPath }/resources/pill/rating/bad.png" width="30">
					        		<span>${result.rating } %</span>
					        	</c:if>
				        	</div>
				        </c:if>
					</div>
					<!-- 이름 -->
					<div>
						이름: ${result.name }
					</div>
					<!-- 성분/함량 -->
					<div>
						성분/함량: 
						<c:forEach var="ri" items="${result.ingredients }">
							<div>
								<span>${ri.eng } | ${ri.kor } | ${ri.content }</span>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- 상단 끝 -->
			
			<!-- 중간 -->
			<div>
				<div>
					회사이름: 
					<button type="button" class="btn btn-default" data-toggle="popover" title="${l.company_name }" 
						data-content="주소: ${result.company_address }<br>tel: ${result.company_tel}<br>fax: ${result.company_fax}<br>url: ${result.company_url}">
						${result.company_name }
					</button>
				</div>	
				<div>
					<div>전문/일반 : ${result.sg }</div>
					<div>투입경로 : ${result.route }</div>
				</div>
				<div>
					생김새: ${result.look }
				</div>
				<div>
					포장단위: ${result.packing }
				</div>
				<div>
					효능/효과
					<div>주 효과: ${result.effect_main }</div>
					<c:if test="${!empty result.effect_etc }">
						<div>그 외: 
							${result.effect_etc }
						</div>
					</c:if>
				</div>
				<div>
					참고정보: 
					<c:if test="${empty result.detail_2 }">
						참고정보가 존재하지 않습니다.
					</c:if>
					<c:if test="${!empty result.detail_2 }">
						<c:forEach var="rd" items="${result.detail_2 }">
							<img alt="" src="${pageContext.request.contextPath }${rd }"  width="100px" height="120px">
						</c:forEach>
					</c:if>
				</div>
			</div>
			<!-- 중간 끝 -->
			
			<!-- 하단 -->
			<div>
			
			</div>
			<!-- 하단 끝 -->
		
	</div>
	<!-- 약 정보 페이지 끝 -->


</div>



</body>
</html>