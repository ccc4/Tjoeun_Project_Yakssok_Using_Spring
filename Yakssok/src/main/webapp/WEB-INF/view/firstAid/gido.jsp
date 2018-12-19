<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href ="https: //fonts.googleapis.com /css?family=Do+Hyeon |Nanum+Gothic+Coding
	 |Sunflower: 300" rel ="stylesheet ">  
<style type="text/css">
      
p.title_1st {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 30px;
	color: CornflowerBlue;
}


p.title_2st {
	font-family: 'Sunflower', sans-serif;
	font-size: 20px;
	color: PaleVioletRed;
}

.list_1st {
	font-family: 'Nanum Gothic Coding', monospace;
	font-size: 15px;
	line-height: 25px;
}

#life_1st {
	border: 1px;
	padding: 10px;
	background: Gainsboro;
	margin-bottom : 50px;
}



#one-column-emphasis {
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 12px;
	margin-left: auto;
	margin-right: auto;
	width: 1300px;
	text-align: center;
	border-collapse: collapse;
}

#one-column-emphasis th {
	font-size: 16px;
	font-weight: normal;
	padding: 12px 15px;
	color: #039;
}

#one-column-emphasis td {
	padding: 10px 15px;
	color: #669;
	border-top: 1px solid #e8edff;
}

.oce-first {
	background: #d0dafd;
	border-right: 10px solid transparent;
	border-left: 10px solid transparent;
}

#one-column-emphasis tr:hover td {
	color: #339;
	background: #eff2ff;
}
</style>
<jsp:include page="/WEB-INF/resources/init/init.jsp" />
</head>

<body>


<!-- 컨테이너 시작 -->
<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	<!-- 본문 시작 -->
	<div style="width: 100%">
	
		<!-- article 시작 -->
		<article>
	
			<!-- ~~ 시작-->
			<div>
			<nav aria-label="breadcrumb" role="navigation">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/">홈</a></li>
    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/firstAid/main">응급처치</a></li>
    <li class="breadcrumb-item active" aria-current="page">기도폐쇄</li>
  </ol>
</nav>

<p class="title_1st">원인과 증상</p>
	<div id="life_1st">
		<p class="title_2st">원인</p>
		<ul class="list_1st">
			<li>이물질로는 혈액, 음식물, 구토물 등이 있으며, 혀 또는 후두개가 이완되어 기도가 막히게 됩니다.</li>
		</ul>

		<p class="title_2st">증상</p>
		<ul class="list_1st">
			<li>두 손으로 목부분을 쥐면서 기침을 하려고 합니다.</li>
			<li>목부분에서 심한 천명음(‘쌕~쌕’하는 소리)이 들릴 수 있습니다.</li>
			<li>얼굴이 파랗게(청색증) 변합니다.</li>
		</ul>
	</div>
	<p class="title_1st">주의사항</p>
	<div id="life_1st">
		<ul class="list_1st">
			<li>기도가 완전히 폐쇄된 경우에는 3~4분 이내 의식을 잃게 됩니다.</li>
			<li>4~6분이 경과하면 뇌세포의 영구적인 손상이 발생하여 생명이 위험에 빠질 수 있으므로 빠른 시간 내에
				응급처치를 시행합니다.</li>
		</ul>
	</div>

	<p class="title_1st">성인 응급처치</p>
	<div id="life_1st">
		<p class="title_2st">환자의 의식이 있는 상태</p>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/mv3WLJMpGfI" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		<ul class="list_1st">
			<li>말을 할 수 있는 경우에는 기침을 유도하며, 지속적으로 기침을 해도 이물질이 배출되지 않을 때에는 즉시
				119로 연락합니다.</li>
			<li>말을 할 수 없는 경우에는 119에 신고한 후 하임리히법을 실시합니다.</li>
		</ul>

		<p class="title_2st">하임리히법 실시요령</p>
		<ul class="list_1st">
			<li>환자의 등 뒤에서 양팔로 허리를 감싼다.</li>
			<li>구조자는 오른손으로 왼주먹을 감싸 잡고 명치에 땐다.</li>
			<li>빠르게 위로(후상방향) 밀쳐 올린다.</li>
			<li>이물질이 밖으로 나오거나 환자가 의식을 잃을 때까지 계속한다.</li>
		</ul>




		<p class="title_2st">환자의 의식이 없는 상태</p>
		<ul class="list_1st">
			<li>의식이 없는 완전 기도폐쇄 환자는 <b>심폐소생술</b>을 실시합니다.
			</li>
		</ul>

		<p class="title_2st">주의사항</p>
		<ul class="list_1st">
			<li>임산부나 비만환자는 상복부가 아닌 흉부를 압박한다.</li>
		</ul>

	</div>

	<p class="title_1st">유아 응급처치</p>
	<div id="life_1st" style="padding-bottom : 250px;">
		<p class="title_2st">하임리히법 실시요령</p>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/ZsHe2j0YKSI" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		<ul class="list_1st">
			<li>영아의 머리를 아랫방향으로 향한 후 등을 5회 두드린다.</li>
			<li>흉부압박법을 5회 반복한다.</li>
			<li>입안의 이물질이 확인되면 제거한다.</li>
			<li>흉부압박 후에도 의식이 없으면 심폐소생술을 실시한다.</li>
		</ul>
		
					
						
		
	</div>

			</div>
			<!-- ~~ 끝-->
	
			
	
	
	
	
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
</div>
<!-- 컨테이너 끝 -->

</body>
</html>