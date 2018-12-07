<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
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
			<div>
				<button class="btn btn-success pull-right" style="margin-right: 5px" type="button" onclick="location.href='${pageContext.request.contextPath }/suggest/write?p_idx=${p_idx}'">수정건의</button>
				<c:if test="${!empty option }">
					<button class="btn btn-default pull-right" type="button" onclick="location.href='${pageContext.request.contextPath }/pill/list?page=${page}&option=${option}&keyword=${keyword}'">목록</button>
				</c:if>
				<c:if test="${empty option }">
					<button class="btn btn-default pull-right" type="button" onclick="location.href='${pageContext.request.contextPath }/pill/list?page=${page}'">목록</button>
				</c:if>
			</div>
		
			<!-- 약 정보 페이지 시작 -->
			<div>
				<!-- 상단 -->	
				<div>
					<!-- 사진 -->
					<div>
						<c:if test="${!empty l.imgPath }">
								<img src="${pageContext.request.contextPath }/resources/img/pill/img/${l.imgPath}" alt="${l.imgPath}" width="200" style="margin: 0">
						</c:if>
						<c:if test="${empty l.imgPath }">
								<img src="${pageContext.request.contextPath }/resources/img/1.png" alt="이미지없음" width="200" style="margin: 0">
						</c:if>
						
						<!-- 평가 버튼 -->
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
						<!-- 평가 버튼 끝-->
						
					</div>
					<!-- 사진 끝 -->
					
					<!-- info -->
					<div>
					
						<!-- rating -->
						<div id="rating">
					        <c:if test="${l.rating >= 50}">
					        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/good.png" width="30"><span>${l.rating } %</span>
				        	</c:if>
					        <c:if test="${l.total != 0 && l.rating < 50 && l.rating != -1}">
					        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/bad.png" width="30"><span>${l.rating } %</span>
				        	</c:if>
				        	<c:if test="${l.total == 0 || l.rating == -1}">
					        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/none.png" width="30"><span>평가없음</span>
				        	</c:if>
						</div>
						<!-- rating 끝 -->
						
						<!-- 이름 -->
						<div>
							이름: ${l.name }
						</div>
						
						<!-- 성분/함량 -->
						<div>
							성분/함량: 
							<c:forEach var="li" items="${l.ingredients }">
								<div>
									<span>${li.eng } | ${li.kor } | ${li.content }</span>
								</div>
							</c:forEach>
						</div>
						<!-- 성분/함량 끝-->
					</div>
					<!-- info 끝-->
				</div>
				<!-- 상단 끝 -->
				
				<!-- 중단 -->
				<div>
					<div>
						회사이름: 
						<%-- <button type="button" class="btn btn-default" data-toggle="popover" title="${l.company_name }" 
							data-content="주소: ${l.company_address }\ntel: ${l.company_tel}\nfax: ${l.company_fax}\nurl: ${l.company_url}">
							${l.company_name }
						</button> --%>
						<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" 
							title="주소: ${l.company_address }<br>tel: ${l.company_tel}<br>fax: ${l.company_fax}<br>url: ${l.company_url}">
							${l.company_name }
						</button>
					</div>	
					<div>
						<div>전문/일반 : ${l.sg }</div>
						<div>투입경로 : ${l.route }</div>
					</div>
					<div>
						생김새: ${l.look }
					</div>
					<div>
						포장단위: ${l.packing }
					</div>
					<div>
						효능/효과
						<div>주 효과: ${l.effect_main }</div>
						<c:if test="${!empty l.effect_etc }">
							<div>그 외: 
								${l.effect_etc }
							</div>
						</c:if>
					</div>
					<div>
						참고정보: 
						<c:if test="${empty l.detail_2 }">
							참고정보가 존재하지 않습니다.
						</c:if>
						<c:if test="${!empty l.detail_2 }">
							<c:forEach var="ld" items="${l.detail_2 }">
								<img alt="" src="${pageContext.request.contextPath }${ld }"  width="100px" height="120px">
							</c:forEach>
						</c:if>
					</div>
				</div>
				<!-- 중단 끝 -->
				
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
	
	function reviewHeight() {
		var the_height = document.getElementById('review_iframe').contentWindow.document.body.scrollHeight;
		
		document.getElementById('review_iframe').height = the_height;
		
		document.getElementById('review_iframe').style.overflow = "hidden";
	}
	
</script>

</body>
</html>