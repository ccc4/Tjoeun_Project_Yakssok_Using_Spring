<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/faq.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주묻는 질문</title>
<jsp:include page="/WEB-INF/resources/init/init.jsp" />
</head>
<body>
	<!-- 컨테이너 시작 -->
	<div class="container">
		<jsp:include page="/WEB-INF/resources/init/header.jsp" />
		<!-- 본문 시작 -->
		<div style="width: 100%">
			<jsp:include page="/WEB-INF/resources/init/login.jsp" />
			
			<!-- article 시작 -->
		    <article style="margin-right: 20%">
			    <div style="margin-bottom: 10px">
				    <a class="h3" href="${pageContext.request.contextPath }/qna/">자주묻는 질문</a>
			    </div>

			<div class="faq">
				<ul class="faqBody">
					<li class="article" id="a1">
						<p class="q"><a href="#a1">질문1</a></p>
						<p class="a">답변1</p>
					</li>
					<li class="article" id="a2">
						<p class="q">
							<a href="#a2">질문2</a>
						</p>
						<p class="a">답변2</p>
					</li>
					<li class="article" id="a3">
						<p class="q">
							<a href="#a3">질문3</a>
						</p>
						<p class="a">답변3</p>
					</li>
				</ul>
			</div>
			
			</article>
		</div>
	</div>

	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/faq.js"></script>


</body>
</html>