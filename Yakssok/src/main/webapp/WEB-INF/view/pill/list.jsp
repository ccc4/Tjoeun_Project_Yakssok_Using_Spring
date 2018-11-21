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

	<div style="float: left; width: 100%;">
		<div>
			<select name="kind">
				<option selected>약품명</option>
				<option>효능/효과</option>
				<option>성분(영문)</option>
				<option>성분(한글)</option>
				<option>회사</option>
			</select>
			<input type="text" name="search" placeholder="검색어 입력">
			<button type="button" onclick="#">검색</button>
		</div>
		
		<div>
			<c:forEach var="l" items="${list }" varStatus="status">
				<c:if test="${status.count % 4 == 1}">
					<div class="row">
				</c:if>
				
				<div class="col-md-3">
					<div class="thumbnail">
						<img src="${pageContext.request.contextPath }/resources/pill/img/${l.imgPath}" alt="${l.imgPath}" width="200" style="margin: 0">
						<div class="caption">
							<div>
								<span class="h5">${l.name }</span>
							</div>
							<div>
						        <span>
							        <c:if test="${l.rating == -1}">
							        	<button class="btn btn-primary" type="button" onclick="#">
							        		Good&nbsp;<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
							        	</button> 
							        	<button class="btn btn-danger" type="button" onclick="#">
							        		Bad&nbsp;<span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
							        	</button> 
							        </c:if>
							        <c:if test="${l.rating != -1}">
							        	<span>${l.rating } %</span>
							        </c:if>
						        </span>
							</div>
							<div>
								<span>제조사/유통사 : ${l.company_name }</span>
							</div>
							<div>효과 : 
								<button type="button" class="btn btn-default" data-toggle="popover" title="효능/효과" data-content="${l.effect_main }">
									<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
								</button>
							</div>
							<c:forEach var="lp" items="${l.p_ingredients }">
								<div>
									<span>${lp.eng } | ${lp.kor } | ${lp.content }</span>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				  
				<c:if test="${status.count % 4 == 0 || status.last}">
					</div>
				</c:if>
			</c:forEach>
			
		</div>
	</div>


</div>


</body>
</html>