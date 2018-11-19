<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>의약품 추가</h3>

<form action="${pageContext.request.contextPath }/pill/add" method="POST" >
	<div>
		<input type="text" name="name" placeholder="약품명">
	</div>
	<div>
		<input type="file" name="img">
	</div>
	<div>
		<input type="text" name="effect_main" placeholder="주 효과">
	</div>
	<div>
		<input type="text" name="effect_etc" placeholder="그 외 효과">
	</div>
	<div>
		<input type="text" name="company_name" placeholder="회사이름(정확히)">
	</div>
	<div>
		<input type="radio" name="detail_1_sg" value="전문">전문
		<input type="radio" name="detail_1_sg" value="일반">일반
	</div>
	<div>
		<input type="text" name="route" placeholder="투여경로">
	</div>
	<div>
		<input type="text" name="look" placeholder="생김새">
	</div>
	<div>
		<input type="text" name="packinig" placeholder="포장단위">
	</div>
	
<c:forEach var="target" items="${map }">
	
	<h3>
		<c:if test="${target.key== 'dont'}">
			금지사항
		</c:if>
		<c:if test="${target.key== 'saveHow'}">
			보관방법
		</c:if>
		<c:if test="${target.key== 'sideEffect'}">
			부작용
		</c:if>
		<c:if test="${target.key== 'useHow'}">
			용법
		</c:if>
		<c:if test="${target.key== 'food'}">
			음식상호작용
		</c:if>
		<c:if test="${target.key== 'form'}">
			제형
		</c:if>
		<c:if test="${target.key== 'caution'}">
			주의사항
		</c:if>
	</h3>
	<div class="checkbox">
 		<c:forEach var="item" items="${target.value }" varStatus="status">
			<label>
				<input type="checkbox" name="${target.key }"><img alt="" src="${pageContext.request.contextPath }${item }"  width="100px" height="120px">
			</label>
			<c:if test="${status.count % 5 == 0}">
				</br>
			</c:if>
		</c:forEach>
	</div>
</c:forEach>


<%--	<h3>금지사항</h3>
	<div class="checkbox">
 		<c:forEach var="dont" items="${map.dont }">
			<label>
				<input type="checkbox" name="dont"><img alt="" src="${pageContext.request.contextPath }${dont }"  width="100px" height="120px">
			</label>
		</c:forEach>
	</div>
	
	<h3>보관방법</h3>
	<div class="checkbox">
 		<c:forEach var="saveHow" items="${map.saveHow }">
			<label>
				<input type="checkbox" name="saveHow"><img alt="" src="${pageContext.request.contextPath }${saveHow }"  width="100px" height="120px">
			</label>
		</c:forEach>
	</div>
	
	<h3>부작용</h3>
	<div class="checkbox">
 		<c:forEach var="sideEffect" items="${map.sideEffect }">
			<label>
				<input type="checkbox" name="sideEffect"><img alt="" src="${pageContext.request.contextPath }${sideEffect }"  width="100px" height="120px">
			</label>
		</c:forEach>
	</div>
	
	<h3>용법</h3>
	<div class="checkbox">
 		<c:forEach var="useHow" items="${map.useHow }">
			<label>
				<input type="checkbox" name="useHow"><img alt="" src="${pageContext.request.contextPath }${useHow }"  width="100px" height="120px">
			</label>
		</c:forEach>
	</div>
	
	<h3>음식상호작용</h3>
	<div class="checkbox">
 		<c:forEach var="food" items="${map.food }">
			<label>
				<input type="checkbox" name="food"><img alt="" src="${pageContext.request.contextPath }${food }"  width="100px" height="120px">
			</label>
		</c:forEach>
	</div>
	
	<h3>제형</h3>
	<div class="checkbox">
 		<c:forEach var="form" items="${map.form }">
			<label>
				<input type="checkbox" name="form"><img alt="" src="${pageContext.request.contextPath }${form }"  width="100px" height="120px">
			</label>
		</c:forEach>
	</div>
	
	<h3>주의사항</h3>
	<div class="checkbox">
 		<c:forEach var="caution" items="${map.caution }">
			<label>
				<input type="checkbox" name="caution"><img alt="" src="${pageContext.request.contextPath }${caution }"  width="100px" height="120px">
			</label>
		</c:forEach>
	</div> --%>
	
	
	
	<input type="submit" value="추가">
</form>



</body>
</html>