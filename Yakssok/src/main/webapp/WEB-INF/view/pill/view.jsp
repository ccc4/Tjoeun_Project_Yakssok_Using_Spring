<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
<style type="text/css">
	.col-sm-1 {
		padding: 0 10px;
	}
	dt,dd {
		margin-bottom: 5px
	}
	.row{
		margin-left: 0;
		margin-right: 0;
		margin-bottom: 0;
	}

</style>
</head>
<body>

<c:if test="${!empty checkRating}">
	<script type="text/javascript">
		var checkRating = "${checkRating}";
		if(checkRating == 'good') {
			$('#goodBtn').addClass('active');
		}
		if(checkRating == 'bad') {
			$('#badBtn').addClass('active');
		}
	</script>
</c:if>
<c:if test="${empty l }">
	<script type="text/javascript">
		alert("잘못된 접근입니다.");
		history.back();
	</script>
</c:if>

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>

			<!-- 버튼모음 -->
			<div style="margin-bottom: 10px">
				<c:if test="${!empty option }">
					<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath }/pill/list?page=${page}&option=${option}&keyword=${keyword}'">목록</button>
				</c:if>
				<c:if test="${empty option }">
					<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath }/pill/list?page=${page}'">목록</button>
				</c:if>
				<button class="btn btn-success" style="margin-right: 5px" type="button" onclick="location.href='${pageContext.request.contextPath }/suggest/write?p_idx=${p_idx}'">수정건의</button>
			</div>
		
			<!-- 약 정보 페이지 시작 -->
			<div>
				<!-- 상단 -->	
				<div>
					<!-- 사진 -->
					<div style="width: 30%;">
						<c:if test="${!empty l.imgPath }">
								<img src="${pageContext.request.contextPath }/resources/img/pill/img/${l.imgPath}" alt="${l.imgPath}" width="100%" style="margin: 0">
						</c:if>
						<c:if test="${empty l.imgPath }">
								<img src="${pageContext.request.contextPath }/resources/img/1.png" alt="이미지없음" width="100%" style="margin: 0">
						</c:if>
					</div>
					<!-- 사진 끝 -->
					
					<!-- 약 정보 1 시작 -->
					<div>
						<!-- 첫 번째줄 -->
						<div>
							<!-- rating -->
							<div id="rating" class="row">
								<div class="col-sm-1">
							        <c:if test="${l.rating >= 50}">
							        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/good.png" width="30" class="rounded">${l.rating } %
						        	</c:if>
							        <c:if test="${l.total != 0 && l.rating < 50 && l.rating != -1}">
							        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/bad.png" width="30" class="rounded">${l.rating } %
						        	</c:if>
						        	<c:if test="${l.total == 0 || l.rating == -1}">
							        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/none.png" width="30" class="rounded">평가없음
						        	</c:if>
								</div>
					        	
					        	<div class="col-sm-11">
									<c:if test="${!empty loginMember }">
										<button class="btn btn-default btn-sm" id="goodBtn" type="button" onclick="good_click()">
							        		Good&nbsp;<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
							        	</button> 
							        	<button class="btn btn-danger btn-sm" id="badBtn" type="button" onclick="bad_click()">
							        		Bad&nbsp;<span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
							        	</button> 
									</c:if>
					        	</div>
							</div>
							<!-- rating 끝 -->
							
							<%-- <!-- 평가 버튼 -->
							<c:if test="${!empty loginMember }">
								<div>
									<button class="btn btn-default btn-sm" id="goodBtn" type="button" onclick="good_click()">
						        		Good&nbsp;<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
						        	</button> 
						        	<button class="btn btn-danger btn-sm" id="badBtn" type="button" onclick="bad_click()">
						        		Bad&nbsp;<span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
						        	</button> 
								</div>
							</c:if>
							<!-- 평가 버튼 끝--> --%>
						</div>
						<!-- 첫 번째줄 끝-->
						
						<!-- 두 번째줄 시작-->
						<div>
							<dl class="row">
								<!-- 이름 -->
								<dt class="col-sm-1">이름</dt>
								<dd class="col-sm-11">${l.name }</dd>
								<!-- 성분/함량 -->
								<dt class="col-sm-1">성분/함량</dt>
								<dd class="col-sm-11">
									<c:forEach var="li" items="${l.ingredients }">
										<div>
											<span>${li.eng } | ${li.kor } | ${li.content }</span>
										</div>
									</c:forEach>
								</dd>
								<!-- 성분/함량 끝-->
								<!-- 회사 -->
								<dt class="col-sm-1">회사이름</dt>
								<dd class="col-sm-11">
									<button class="btn btn-default" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
										${l.company_name }
									</button>
									<div class="collapse" id="collapseExample">
										<div class="card card-body">
											<dl>
												<dt>주소</dt>
												<dd>${l.company_address }</dd>
												
												<dt>TEL</dt>
												<dd>${l.company_tel}</dd>
												
												<c:if test="${!empty l.company_fax}">
													<dt>FAX</dt>
													<dd></dd>
												</c:if>
												
												<dt>홈페이지</dt>
												<dd>${l.company_url}</dd>
											</dl>
										</div>
									</div>
								</dd>
							</dl>
						</div>
						<!-- 두 번째줄 끝-->
					</div>
					<!-- 약 정보 1 끝 -->
				</div>
				<!-- 상단 끝 -->
				
				<!-- 중단 약 정보 2 시작-->
				<div>
					<dl class="row">
						<dt class="col-sm-1">효능/효과</dt>
						<dd class="col-sm-11">
							<dl class="row">
								<dt class="col-sm-1">주효능</dt>
								<dd class="col-sm-11">${l.effect_main }</dd>
								
								<c:if test="${!empty l.effect_etc }">
									<dt class="col-sm-1">그 외</dt>
									<dd class="col-sm-11">${l.effect_etc }</dd>
								</c:if>
							</dl>
						</dd>
						
						<dt class="col-sm-1">생김새</dt>
						<dd class="col-sm-11">${l.look }</dd>
						
						<dt class="col-sm-1">전문/일반</dt>
						<dd class="col-sm-11">${l.sg }</dd>
						
						<dt class="col-sm-1">투입경로</dt>
						<dd class="col-sm-11">${l.route }</dd>
						
						<dt class="col-sm-1">포장단위</dt>
						<dd class="col-sm-11">${l.packing }</dd>
						
						<dt class="col-sm-1">참고정보</dt>
						<dd class="col-sm-11">
							<c:if test="${empty l.detail_2 }">
							참고정보가 존재하지 않습니다.
							</c:if>
							<c:if test="${!empty l.detail_2 }">
								<c:forEach var="ld" items="${l.detail_2 }">
									<img alt="" src="${pageContext.request.contextPath }${ld }"  width="100px" height="120px">
								</c:forEach>
							</c:if>
						</dd>
					</dl>
				</div>
				<!-- 중단 약 정보 2 끝 -->
				
			</div>
			<!-- 약 정보 페이지 끝 -->
			
			<!-- 리뷰 시작 -->
			<iframe id="review_iframe" src="${pageContext.request.contextPath }/pill/review/${l.p_idx}" frameborder=0 scrolling="no" style="overflow-x.hidden; overflow:auto; width:100%; min-height:500px;"></iframe>
			<!-- 리뷰 끝 -->
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->


<script type="text/javascript">
	var p_idx = ${p_idx};

	function good_click() {
		$.ajax({
			type: 'POST',
			url: '${pageContext.request.contextPath }/pill/good',
			data: {p_idx: p_idx},
			success: function(result) {
				checkResult(result);
				refreshRating();
			}
		})
	}
	
	function bad_click() {
		$.ajax({
			type: 'POST',
			url: '${pageContext.request.contextPath }/pill/bad',
			data: {p_idx: p_idx},
			success: function(result) {
				checkResult(result);
				refreshRating();
			}
		})
	}
	
	function checkResult(result) {
		if(result == 0) {
			alert("문제 발생");
		} else if(result == 1) {	// good active
			$('#goodBtn').addClass('active');
			$('#badBtn').removeClass('active');
		} else if(result == 2) {	// 평가 취소
			$('#goodBtn').removeClass('active');
			$('#badBtn').removeClass('active');
		} else if(result == 3) {	// bad active
			$('#goodBtn').removeClass('active');
			$('#badBtn').addClass('active');
		} else if(result == 4) {	// 에러
			alert("에러");
		} 
	}
	
	function refreshRating() {
		$.ajax({
			type: 'POST', 
			url: '${pageContext.request.contextPath}/pill/refreshRating', 
			data: {p_idx : p_idx}, 
			success: function(result) {
				if(result >= 50) {
					$("#rating").empty();
					$("#rating").append('<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/good.png" width="30"><span>' + result + ' %</span>');
				} else if(result < 50 && result != -1) {
					$("#rating").empty();
					$("#rating").append('<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/bad.png" width="30"><span>' + result + ' %</span>');
				} else if(result == -1) {
					$("#rating").empty();
					$("#rating").append('<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/none.png" width="30"><span>평가없음</span>');
				}
			}
		})
	}
	




</script>

</body>
</html>