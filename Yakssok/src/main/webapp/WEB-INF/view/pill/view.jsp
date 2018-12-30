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
			
			<%-- <!-- 리뷰 시작 -->
			<iframe id="review_iframe" src="${pageContext.request.contextPath }/pill/review/${l.p_idx}" frameborder=0 scrolling="no" style="overflow-x.hidden; overflow:auto; width:100%; min-height:500px;"></iframe>
			<!-- 리뷰 끝 --> --%>
			
			<!-- 리뷰 시작 -->
			<div>
				<h3>한줄리뷰</h3>
	
				<div>
					<div class="form-inline">
						<input style="width: 93%" class="form-control" id="review_contents" type="text" name="contents" placeholder="한줄리뷰 남기기">
						<button class="btn btn-default" type="button" onclick="write_review()">작성</button>
					</div>
				</div>
				
				<!-- 테이블 시작 -->
				<div style="margin-top: 10px" id="review_div">
					<c:if test="${empty l.review }">
						<span>아직 작성된 리뷰가 없습니다.</span>
					</c:if>
					<c:if test="${!empty l.review }">
						<table class="table table-hover table-condensed" id="review_table" style="table-layout:fixed; word-break:break-all;">
							<c:forEach var="r" items="${l.review }">
							<tr id="review_${r.p_review_idx }">
								<td width="35">${r.nickname }</td>
								<td width="150">${r.contents }</td>
								<td width="50">
									<fmt:formatDate value="${r.writeDate }" pattern="yy-MM-dd HH:mm:ss" var="datetime"/>
									<c:out value="${datetime }"/>
								</td>
								<td width="20"><button class="btn btn-default modify_review_btn" type="button" onclick="modify_review(this, ${r.p_review_idx})">수정</button></td>
								<td width="20"><button class="btn btn-default delete_review_btn" type="button" onclick="delete_review(this, ${r.p_review_idx})">삭제</button></td>
							</tr>
							</c:forEach>
						</table>
						
						<button class="btn btn-default" type="button" onclick="more_review()">더 보기</button>
					</c:if>
				</div>
				<!-- 테이블 끝 -->
			</div>
			<!-- 리뷰 끝 -->
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->


<script type="text/javascript">
	var p_idx = ${p_idx};
	var mark = 2;
	
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
	

// 밑에서부터 review 관련 메소드


function more_review() {
		$.ajax({
			type: 'POST',
			url: '${pageContext.request.contextPath}/pill/more_review', 
			data: {p_idx : p_idx, mark : mark}, 
			success: function(result) {
				if(result.length != 0) {
					$("#review_table").append(result);
					mark += 2;
				} else {
					alert("불러올 데이터가 없습니다.");
					return false;
				}
			}, 
			error: function() {
				alert("ajax 통신 에러");
			}
		})
	}

	
	
	function write_review() {	// 나중에 이미 작성한 사람일 경우 수정이나 삭제 후 등록 가능하게 변경할 것
		if(!$("#review_contents").val()) {
			alert("리뷰를 작성해주세요.");
			$("#review_contents").focus();
			return false;
		}
		
		var loginMember = '<c:out value="${loginMember}"/>';
		if(!loginMember) {
			alert("로그인 후 작성하실 수 있습니다.");
			$("#review_contents").focus();
			return false;
		}
		
		var contents = $("#review_contents").val();
		
		$.ajax({
			type: 'POST',
			url: '${pageContext.request.contextPath}/pill/write_review/', 
			data: {contents : contents, p_idx : p_idx}, 
			success: function(result) {
				if(result == null) {
					alert("리뷰정보를 불러오는데 실패했습니다.");
					history.back();
				} else {
					alert("리뷰 작성 완료");
					var value = $("#review_table tr:last").attr("id");
					refresh_review(value);
					$("#review_contents").val("");
				}
			}
		})
	}
	
	function delete_review(target, p_review_idx) {
		var loginMember = '<c:out value="${loginMember}"/>';
		if(!loginMember) {
			alert("본인만 수정 가능합니다.");
			return false;
		}

		var idx = $(".delete_review_btn").index(target);
		var target_nickname = $("table#review_table tr:eq("+idx+") td:eq(0)").html();
		var loginMember_nickname = '<c:out value="${loginMember.nickname}"/>';
		
		if(target_nickname != loginMember_nickname) {
			alert("본인만 수정 가능합니다.");
			return false;
		} else {
			var check = confirm("정말 삭제 하시겠습니까?");
			if(!check) {
				return false;
			}
			
			$.ajax({
				type: 'POST',
				url: '${pageContext.request.contextPath}/pill/delete_review/', 
				data: {p_review_idx : p_review_idx}, 
				success: function(result) {
					if(result == 1) {
						alert("삭제 완료!");
						var value = $("#review_table tr:last").attr("id");
						refresh_review(value);
					} else {
						alert("삭제 실패");
						return false;
					}
				}
			})
		}
	}
	
	var contents = null;
	
	function modify_review(target, p_review_idx) {
		var loginMember = '<c:out value="${loginMember}"/>';
		if(!loginMember) {
			alert("본인만 수정 가능합니다.");
			return false;
		}

		var idx = $(".modify_review_btn").index(target);
		var target_nickname = $("table#review_table tr:eq("+idx+") td:eq(0)").html();
		var loginMember_nickname = '<c:out value="${loginMember.nickname}"/>';
		
		if(target_nickname != loginMember_nickname) {
			alert("본인만 수정 가능합니다.");
			return false;
		} else {
			$("table#review_table tr:eq("+idx+") td:eq(1)").html("<input class=\"form-control\" id=\"modify_target\" type=\"text\" placeholder=\"수정할 메시지 입력\">");
			$("table#review_table tr:eq("+idx+") td:eq(3)").html("<button class=\"btn btn-default\" type=\"button\" onclick=\"modify_send("+p_review_idx+")\">수정</button>");
			$("table#review_table tr:eq("+idx+") td:eq(4)").html("<button class=\"btn btn-default\" type=\"button\" onclick=\"modify_cancel()\">취소</button>");
		}
	}
	
	function modify_cancel() {
		alert("수정 취소!");
		var value = $("#review_table tr:last").attr("id");
		refresh_review(value);
	}
	
	function modify_send(p_review_idx) {
		if(!$("#modify_target").val()) {
			alert("리뷰를 작성해주세요.");
			$("#modify_target").focus();
			return false;
		}
		
		var check = confirm("수정 하시겠습니까?");
		if(!check) {
			return false;
		}
		
		var contents = $("#modify_target").val();
		
		$.ajax({
			type: 'POST',
			url: '${pageContext.request.contextPath}/pill/modify_review/', 
			data: {contents : contents, p_review_idx : p_review_idx}, 
			success: function(result) {
				if(result == 1) {
					alert("수정 성공!");
					var value = $("#review_table tr:last").attr("id");
					refresh_review(value);
				} else {
					alert("수정 실패");
					$("#review_contents").focus();
				}
			}
		})
	}
	
	function refresh_review(value) {
		$.ajax({
			type: 'POST', 
			url: '${pageContext.request.contextPath}/pill/refresh_review/', 
			data: {p_idx : p_idx, value : value}, 
			success: function(result) {
				$("#review_table").empty();
				$("#review_table").html(result);
			}, 
			error: function() {
				alert("새로고침 에러");
			}
		})
	}


</script>

</body>
</html>