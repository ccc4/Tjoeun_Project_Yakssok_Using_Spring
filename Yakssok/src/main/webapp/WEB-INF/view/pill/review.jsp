<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/img/Yakssok_Icon.ico">
<title>약쏙</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<style type="text/css">
	.td_nickname{
		width="35px"
	}
	.td_contents{
		width="150px"
	}
	.td_writeDate{
		width="50px"
	}
	.td_btn{
		width="20px"
	}
</style>

<!-- 리뷰 -->
<div style="width: 99%; margin-top: 20px">
	<h3>한줄리뷰</h3>
	
	<div>
		<div class="form-inline">
			<input style="width: 93%" class="form-control" id="review_contents" type="text" name="contents" placeholder="한줄리뷰 남기기">
			<button class="btn btn-default" type="button" onclick="write_review()">작성</button>
		</div>
	</div>
	
	<!-- 테이블 시작 -->
	<div style="margin-top: 10px" id="review_div">
		<c:if test="${empty p }">
			<span>아직 작성된 리뷰가 없습니다.</span>
		</c:if>
		<c:if test="${!empty p }">
			<table class="table table-hover table-condensed" id="review_table" style="table-layout:fixed; word-break:break-all;">
				<c:forEach var="r" items="${p }">
				<tr id="review_${r.p_review_idx }">
					<td class="td_nickname">${r.nickname }</td>
					<td class="td_contents">${r.contents }</td>
					<td class="td_writeDate">
						<fmt:formatDate value="${r.writeDate }" pattern="yy-MM-dd HH:mm:ss" var="datetime"/>
						<c:out value="${datetime }"/>
					</td>
					<td class="td_btn"><button class="btn btn-default modify_review_btn" type="button" onclick="modify_review(this, ${r.p_review_idx})">수정</button></td>
					<td class="td_btn"><button class="btn btn-default delete_review_btn" type="button" onclick="delete_review(this, ${r.p_review_idx})">삭제</button></td>
				</tr>
				</c:forEach>
			</table>
			
			<button class="btn btn-default" type="button" onclick="more_review()">더 보기</button>
			
			
			<%-- <!-- 페이징 시작 -->
			<nav style="text-align: center;">
				<ul class="pagination pagination-sm">
					<c:if test="${p.page != 1 }">
						<li><a href="${pageContext.request.contextPath }/pill/review/${p_idx}">처음</a></li>
					</c:if>
					<c:if test="${p.page == 1 }">
						<li class="disabled"><a>처음</a></li>
					</c:if>
					
					<c:if test="${p.startPage != 1 }">
						<li><a href="${pageContext.request.contextPath }/pill/review/${p_idx}?page=${p.startPage - 1}">이전</a></li>
					</c:if>
					<c:if test="${p.startPage == 1 }">
						<li class="disabled"><a>이전</a></li>
					</c:if>
					
					<c:forEach var="i" begin="${p.startPage }" end="${p.endPage }">
						<c:if test="${i == p.page }">
							<li class="active"><a><b>${i }</b></a></li>
						</c:if>
						<c:if test="${i != p.page }">
							<li><a href="${pageContext.request.contextPath }/pill/review/${p_idx}?page=${i}">${i }</a></li>
						</c:if>
					</c:forEach>
					
					<c:if test="${p.endPage != p.totalPage }">
						<li><a href="${pageContext.request.contextPath }/pill/review/${p_idx}?page=${p.endPage + 1}">다음</a></li>
					</c:if>
					<c:if test="${p.endPage == p.totalPage }">
						<li class="disabled"><a>다음</a></li>
					</c:if>
					
					<c:if test="${p.page != p.totalPage }">
						<li><a href="${pageContext.request.contextPath }/pill/review/${p_idx}?page=${p.totalPage}">끝</a></li>
					</c:if>
					<c:if test="${p.page == p.totalPage }">
						<li class="disabled"><a>끝</a></li>
					</c:if>
				</ul>
			</nav>
			<!-- 페이징 끝 --> --%>
		</c:if>
	</div>
	<!-- 테이블 끝 -->
	
	
</div>
<!-- 리뷰 끝-->



<script type="text/javascript">
	
	var mark = 2;
	var p_idx = ${p_idx};
	
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