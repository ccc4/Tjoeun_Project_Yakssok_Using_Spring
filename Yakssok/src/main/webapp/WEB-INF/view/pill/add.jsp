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
		<h3>의약품 등록(관리자만 가능하게 변경예정)</h3>

		<form action="${pageContext.request.contextPath }/pill/add" method="POST" enctype="multipart/form-data">
			<div>
				<input type="text" name="name" placeholder="약품명">
			</div>
			<div>
				<input type="file" name="file">
			</div>
			<c:forEach var="i" begin="1" end="3">
				<div>
					<input type="text" name="ingredient_eng_${i }" placeholder="성분명(영문)_${i }">
					<input type="text" name="ingredient_kor_${i }" placeholder="성분명(한글)_${i }">
					<input type="text" name="ingredient_content_${i }" placeholder="성분함량_${i }">
					<c:if test="${i >= 2 }">
						<span>* 없을 시 빈칸</span>
					</c:if>
				</div>
			</c:forEach>
			
			<div>
				<!-- <input type="text" name="company_name" placeholder="회사이름(정확히)"> -->
				<select name="company_name" >
					<c:forEach var="c" items="${companyNames }">
						<option value="${c }">${c }</option>
					</c:forEach>
				</select>
				&nbsp;<button class="btn btn-primary" type="button" onclick="location.href='${pageContext.request.contextPath}/pill/add_company'">목록에 없을 시 회사 등록</button>
			</div>
			<div>
				<input type="radio" name="sg" value="전문">전문
				<input type="radio" name="sg" value="일반">일반
			</div>
			<div>
				<input type="text" name="route" placeholder="투여경로">
			</div>
			<div>
				<input type="text" name="look" placeholder="생김새">
			</div>
			<div>
				<input type="text" name="packing" placeholder="포장단위">
			</div>
			<div>
				<textarea rows="5" cols="40" name="main" placeholder="주 효과"></textarea>
			</div>
			<div>
				<textarea rows="5" cols="40" name="etc" placeholder="그 외 효과"></textarea>
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
							<input type="checkbox" name="${target.key }" value="${status.count }"><img alt="" src="${pageContext.request.contextPath }${item }"  width="100px" height="120px">
						</label>
						<c:if test="${status.count % 5 == 0}">
							</br>
						</c:if>
					</c:forEach>
				</div>
			</c:forEach>

	
	
			<input class="btn btn-default" type="submit" value="등록">
		</form>
	</div>



</div>



</body>
</html>