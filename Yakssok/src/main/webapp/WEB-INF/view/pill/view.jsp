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

<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
		<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
		<!-- article 시작 -->
		<article style="margin-right: 20%">

			<!-- 버튼모음 -->
			<div>
				<c:if test="${!empty option }">
					<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath }/pill/list?page=${page}&option=${option}&keyword=${keyword}'">목록</button>
				</c:if>
				<c:if test="${empty option }">
					<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath }/pill/list?page=${page}'">목록</button>
				</c:if>
				<button class="btn btn-default" type="button" onclick="alert('준비중입니다.')">수정건의</button>
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
					        <c:if test="${!empty l.total && l.rating >= 50}">
					        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/good.png" width="30">
				        		<span>${l.rating } %</span>
				        	</c:if>
					        <c:if test="${!empty l.total && l.rating < 50 && l.rating != -1}">
					        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/bad.png" width="30">
				        		<span>${l.rating } %</span>
				        	</c:if>
				        	<c:if test="${empty l.total || l.rating == -1}">
					        	<img alt="" src="${pageContext.request.contextPath }/resources/img/pill/rating/none.png" width="30">
				        		<span>평가없음</span>
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
				
				<!-- 리뷰 -->
				<div style="width: 100%; margin-top: 20px">
					<h3>한줄리뷰</h3>
					
					<div>
						<div class="form-inline">
							<input style="width: 500px" class="form-control" id="review_contents" type="text" name="contents" placeholder="한줄리뷰 남기기">
							<button class="btn btn-default" type="button" onclick="write_review()">작성</button>
						</div>
					</div>
					
					<!-- 테이블 시작 -->
					<div style="margin-top: 10px">
						<c:if test="${empty l.review }">
							<span>아직 작성된 리뷰가 없습니다.</span>
						</c:if>
						<c:if test="${!empty l.review }">
							<table class="table table-hover table-condensed" id="review_table" style="table-layout:fixed; word-break:break-all;">
								<c:forEach var="lr" items="${l.review }">
								<tr>
									<td width="35px">${lr.nickname }</td>
									<td width="150px">${lr.contents }</td>
									<td width="50px">
										<fmt:timeZone value="KST">
											<c:if test="${empty lr.modifyDate }">
												<fmt:formatDate value="${lr.writeDate }" pattern="yy-MM-dd HH:mm:ss" var="datetime"/>
											</c:if>
											<c:if test="${!empty lr.modifyDate }">
												<fmt:formatDate value="${lr.modifyDate }" pattern="yy-MM-dd HH:mm:ss" var="datetime"/>
											</c:if>
											<c:out value="${datetime }"/>
										</fmt:timeZone>
									</td>
									<td width="20px"><button class="btn btn-default modify_review_btn" type="button" onclick="modify_review(this, ${lr.p_review_idx})">수정</button></td>
									<td width="20px"><button class="btn btn-default delete_review_btn" type="button" onclick="delete_review(this, ${lr.p_review_idx})">삭제</button></td>
								</tr>
								</c:forEach>
							</table>
						</c:if>
					</div>
					<!-- 테이블 끝 -->
					
				</div>
				<!-- 리뷰 끝-->
				
			</div>
			<!-- 약 정보 페이지 끝 -->
			
			
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->









<script type="text/javascript">
	var p_idx = ${l.p_idx};
	
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
			url: '${pageContext.request.contextPath}/pill/write_review/' + p_idx, 
			data: {contents : contents}, 
			success: function(result) {
				if(result == 1) {
					alert("작성 성공!");
					window.location.reload();
				} else {
					alert("작성 실패");
					$("#review_contents").focus();
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
				url: '${pageContext.request.contextPath}/pill/delete_review/' + p_review_idx, 
				success: function(result) {
					if(result == 1) {
						alert("삭제 완료!");
						window.location.reload();
					} else {
						alert("삭제 실패");
						return false;
					}
				}
			})
		}
	}
	
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
		window.location.reload();
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
			url: '${pageContext.request.contextPath}/pill/modify_review/' + p_review_idx, 
			data: {contents : contents}, 
			success: function(result) {
				if(result == 1) {
					alert("수정 성공!");
					window.location.reload();
				} else {
					alert("수정 실패");
					$("#review_contents").focus();
				}
			}
		})
	}
	
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