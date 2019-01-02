<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
<!-- pill_css 적용 -->
<link href="${pageContext.request.contextPath }/resources/css/pill.css" rel="stylesheet">
</head>
<body>

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>
		
			<div>
				<!-- 검색폼 -->
				<form class="form-inline" action="${pageContext.request.contextPath }/pill/list" method="GET" style="margin-bottom: 20px">
					<select class="form-control" name="option">
						<option>약품명</option>
						<option>효능/효과</option>
						<option>회사</option>
						<option>성분(영문/한글)</option>
					</select>
					
					<input class="form-control" type="text" name="keyword" placeholder="검색어 입력">
					<button class="btn btn-default" type="submit">검색</button>
				</form>
				<!-- 검색폼 끝 -->
				
			</div>
			
			<!-- 의약품 시작 -->
			<div>
				<c:if test="${empty p }">
					<span>데이터가 존재하지 않습니다.</span>
				</c:if>
				<c:if test="${!empty p }">
					<!-- 의약품 목록 시작 -->
					<div>
						<c:forEach var="l" items="${p.list }" varStatus="status">
							<c:if test="${status.count % 4 == 1}">
								<div class="row">
							</c:if>
							
							<!-- 반복되는 썸네일 -->
							<div class="col-md-3">
								<div class="thumbnail">
									<a href="${pageContext.request.contextPath }/pill/view/${l.p_idx}?page=${p.page}&option=${p.option}&keyword=${p.keyword}">
										<c:if test="${!empty l.imgPath }"> 
												<img class="_list_pill_img" src="${pageContext.request.contextPath }/resources/img/pill/img/${l.imgPath}" alt="${l.imgPath}" width="200px">
										</c:if>
										<c:if test="${empty l.imgPath }">
												<img class="_list_pill_img" src="${pageContext.request.contextPath }/resources/img/1.png" alt="이미지없음" width="200px">
										</c:if>
									</a>
									<div class="caption">
										<div class="_list_pill_names">
											<a href="${pageContext.request.contextPath }/pill/view/${l.p_idx}?page=${p.page}&option=${p.option}&keyword=${p.keyword}">
												<h4>${l.name }</h4>
											</a>
										</div>
										<!-- rating -->
										<div id="rating" class="_list_pill_ratings">
									        <c:if test="${l.rating >= 50}">
									        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/good.png" width="40"><span>${l.rating } %</span>
								        	</c:if>
									        <c:if test="${l.total != 0 && l.rating < 50 && l.rating != -1}">
									        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/bad.png" width="40"><span>${l.rating } %</span>
								        	</c:if>
								        	<c:if test="${l.total == 0 || l.rating == -1}">
									        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/none.png" width="40"><span>평가없음</span>
								        	</c:if>
										</div>
										<!-- rating 끝 -->
										<div class="_list_pill_companys">
											<span>제조사/유통사 : ${l.company_name }</span>
										</div>
										<div>
											<button class="btn btn-primary btn-sm" type="button" data-toggle="collapse" data-target="#${l.p_idx}" aria-expanded="false" aria-controls="collapseExample">
												효능/효과
											</button>
											<div class="collapse _list_pill_effects" id="${l.p_idx}">
												<div class="card card-body">
													${l.effect_main }
												</div>
											</div>
										</div>
										<div class="ingredients _list_pill_ingredients">
											<c:forEach var="lp" items="${l.p_ingredients }">
												<p>${lp.eng } | ${lp.kor } | ${lp.content }</p>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<!-- 반복되는 썸네일 끝 -->
							  
							<c:if test="${status.count % 4 == 0 || status.last}">
								</div>
							</c:if>
						</c:forEach>
					</div>	
					<!-- 의약품 목록 끝 -->
					
					<!-- 페이징 시작 -->
					<nav style="text-align: center;">
						<ul class="pagination pagination-sm">
							<c:if test="${p.page != 1 }">
								<c:if test="${empty p.option }">
									<li><a href="${pageContext.request.contextPath }/pill/list">처음</a></li>
								</c:if>
								<c:if test="${!empty p.option }">
									<li><a href="${pageContext.request.contextPath }/pill/list?option=${p.option}&keyword=${p.keyword}">처음</a></li>
								</c:if>
							</c:if>
							<c:if test="${p.page == 1 }">
								<li class="disabled"><a href="#">처음</a></li>
							</c:if>
							
							<c:if test="${p.startPage != 1 }">
								<c:if test="${empty p.option }">
									<li><a href="${pageContext.request.contextPath }/pill/list?page=${p.startPage - 1}">이전</a></li>
								</c:if>
								<c:if test="${!empty p.option }">
									<li><a href="${pageContext.request.contextPath }/pill/list?page=${p.startPage - 1}&option=${p.option}&keyword=${p.keyword}">이전</a></li>
								</c:if>
							</c:if>
							<c:if test="${p.startPage == 1 }">
								<li class="disabled"><a href="#">이전</a></li>
							</c:if>
							
							<c:forEach var="i" begin="${p.startPage }" end="${p.endPage }">
								<c:if test="${i == p.page }">
									<li class="active"><a href="#"><b>${i }</b></a></li>
								</c:if>
								<c:if test="${i != p.page }">
									<c:if test="${empty p.option }">
										<li><a href="${pageContext.request.contextPath }/pill/list?page=${i}">${i }</a></li>
									</c:if>
									<c:if test="${!empty p.option }">
										<li><a href="${pageContext.request.contextPath }/pill/list?page=${i}&option=${p.option}&keyword=${p.keyword}">${i }</a></li>
									</c:if>
								</c:if>
							</c:forEach>
							
							<c:if test="${p.endPage != p.totalPage }">
								<c:if test="${empty p.option }">
									<li><a href="${pageContext.request.contextPath }/pill/list?page=${p.endPage + 1}">다음</a></li>
								</c:if>
								<c:if test="${!empty p.option }">
									<li><a href="${pageContext.request.contextPath }/pill/list?page=${p.endPage + 1}&option=${p.option}&keyword=${p.keyword}">다음</a></li>
								</c:if>
							</c:if>
							<c:if test="${p.endPage == p.totalPage }">
								<li class="disabled"><a href="#">다음</a></li>
							</c:if>
							
							<c:if test="${p.page != p.totalPage }">
								<c:if test="${empty p.option }">
									<li><a href="${pageContext.request.contextPath }/pill/list?page=${p.totalPage}">끝</a></li>
								</c:if>
								<c:if test="${!empty p.option }">
									<li><a href="${pageContext.request.contextPath }/pill/list?page=${p.totalPage}&option=${p.option}&keyword=${p.keyword}">끝</a></li>
								</c:if>
							</c:if>
							<c:if test="${p.page == p.totalPage }">
								<li class="disabled"><a href="#">끝</a></li>
							</c:if>
						</ul>
					</nav>
					<!-- 페이징 끝 -->
				</c:if>
			</div>
			<!-- 의약품 끝 -->
			
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->



<!-- <script type="text/javascript">
	function search() {
		var type = $("select[name=type]");
		var target = $("input[name=target]");
		if(target.val() == '' || target.val() == null) {
			alert('검색어를 입력해주세요.');
			target.focus();
			return false;
		}
		location.href="${pageContext.request.contextPath}/pill/list/" + type + "?search=" + target;
	}
</script> -->
</body>
</html>