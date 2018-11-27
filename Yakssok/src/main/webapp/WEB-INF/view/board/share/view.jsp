<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
<title>팁 & 정보 공유</title>
</head>
<body>
<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
		<jsp:include page="/WEB-INF/resources/init/login.jsp"/>
	
		<!-- article 시작 -->
		<article style="margin-right: 20%">
			<!-- view 창 시작-->
			<div>
				 
					<table  class="table" style="table-layout:fixed; word-break:break-all;">
						<thead>
							<tr>
								<th style="background-color: #eeeeee;">${result.title}</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>글쓴이: 
								${result.nickname}
								등록일:
								<fmt:timeZone value="KST">
									<fmt:formatDate value="${result.writeDate }" pattern="yyyy-MM-dd HH:mm:ss" var="writeDate"/>
								</fmt:timeZone>
								${result.writeDate}
								조회수:
								${result.read_cnt}</td>
							</tr>
							<tr>
								<td height="300"  >${result.contents}</td>
							</tr>
						</tbody>
					</table>
					<button type="submit" class="btn btn-success pull-left"  name="list" onclick="location.href='${pageContext.request.contextPath}/board/share'">목록</button>
			
					<c:if test="${loginMember.nickname eq result.nickname }">
						<button type="submit" class="btn btn-primary pull-right" name ="edit" onclick="location.href ='${pageContext.request.contextPath}/board/share/edit/${result.b_idx}'">수정</button>
						<button type="submit" class="btn btn-primary pull-right" name ="delete" onclick="del()">삭제</button>
					</c:if>
				
			</div>
			<!-- ~~ 끝-->

		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->
<!-- 삭제 여부  -->
<script type="text/javascript">
	function del(){
		var deleteCheck = confirm("삭제하시겠습니까?");
		
		if(deleteCheck == 1){
			location.href ='${pageContext.request.contextPath}/board/share/delete/${result.b_idx}';
		}else{
		return false;
		}
	}
	
</script>
</body>
</html>