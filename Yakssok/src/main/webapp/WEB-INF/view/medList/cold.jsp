<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic+Coding|Sunflower:300" rel="stylesheet">
<style type="text/css">
.title_1 {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 50px;
	color: CornflowerBlue;
}


.title_2 {
	font-family: 'Sunflower', sans-serif;
	font-size: 20px;
	color: PaleVioletRed;
}
.medimg {
	display : inline-block;
	width : 400px;
	height : 400px;
	float : left;
}
#accordion5 .panel {
	border: none;
	border-radius: 0;
	box-shadow: none;
	margin: 0 0 15px 50px;
	
	}
	

.panel-group {
 width : 500px; 
 display : inline-block;
}


#accordion5 .panel-title a {
	display: block;
	padding: 10px 20px 10px 60px;
	background: #81E0D6;
	border-radius: 30px;
	border: 2px solid #81E0D6;
	font-size: 20px;
	font-weight: 400;
	color: #fff;
	position: relative;
}

#accordion5 .panel-title a.collapsed {
	border: 2px solid #000000;
	background: #fff;
	color: #000000;
}

#accordion5 .panel-title a:before, #accordion5 .panel-title a.collapsed:before
	{
	content: "\f068";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	width: 60px;
	height: 60px;
	line-height: 60px;
	border-radius: 50%;
	background: #81E0D6;
	font-size: 18px;
	color: #fff;
	text-align: center;
	border-right: 3px solid #fff;
	position: absolute;
	top: -10px;
	left: -30px;
	z-index: 1;
	transition: all 0.3s ease 0s;
}

#accordion5 .panel-title a.collapsed:before {
	content: "\f067";
	background: #000000;
	border: none;
}

#accordion5 .panel-body {
	padding: 10px 15px 0;
	margin: 0 0 0 30px;
	border: none;
	font-size: 14px;
	color: #333;
	line-height: 28px;
	position: relative;
}

#accordion5 .panel-body:before {
	content: "";
	display: block;
	width: 5px;
	height: 90%;
	background: #81E0D6;
	position: absolute;
	top: 0;
	left: -30px;
}

#accordion5 .panel-body:after {
	content: "";
	border-top: 20px solid #81E0D6;
	border-left: 20px solid transparent;
	border-right: 20px solid transparent;
	position: absolute;
	bottom: 0;
	left: -48px;
}
.mainPanel {
margin : auto;
text-align : center;


}
</style>
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>


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
    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/medList/main">편의점 상비약</a></li>
    <li class="breadcrumb-item active" aria-current="page">감기약</li>
  </ol>
</nav>

	<h1 class="title_1">안전상비 의약품 - 감기약</h1>
	<br>
	<h2 class="title_2">판콜에이 내복액</h2>


	<div class="mainPanel">
		<img class="medimg"
			src="${pageContext.request.contextPath}/resources/img/medList/pancoldA.jpg">
		<div class="panel-group" id="accordion5" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion5"
							href="#collapseOne5" aria-expanded="false"
							aria-controls="collapseOne5"> 제품정보 </a>
					</h4>
				</div>
				<div id="collapseOne5" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingOne5">
					<div class="panel-body">
						<ul>
							<li>감기의 제증상(콧물, 코막힘, 재채기, 인후통, 기침, 가래, 오한, 발열, 두통, 관절통,
								근육통)의 완화</li>
							<li>인후통: 구강 맨 안쪽의 식도와 기도(氣道)로 통하는 곳의 통증</li>
							<li>오한 : 갑자기 몸에 열이 나면서 추위를 느끼는 증세</li>

						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#collapseTwo5"
							aria-expanded="false" aria-controls="collapseTwo5"> 전성분 </a>
					</h4>
				</div>
				<div id="collapseTwo5" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingTwo5">
					<div class="panel-body">
						<ol>
							<li>아세트아미노펜(Acetaminophen) ...............................
								300mg</li>
							<li>구아이페네신(Guaifenesin)
								........................................ 80mg</li>
							<li>펜톡시베린시트르산염(Pentoxyverine Citrate)................ 15mg</li>
							<li>페닐레프린염산염(Phenylephrine HCl)..........................
								10mg</li>
							<li>클로르페니라민말레산염(Chlorpheniramine maleate) .... 2.5mg</li>
							<li>카페인무수물(Caffeine anhydrous) .............................
								30mg</li>
							<li>성상: 황색의 투명한 액제</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#collapseThree5"
							aria-expanded="false" aria-controls="collapseThree5"> 효능, 효과
						</a>
					</h4>
				</div>
				<div id="collapseThree5" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingThree5">
					<div class="panel-body">
						<ol>
							<li>감기 제증상 (콧물, 코막힘, 재채기, 인후통, 기침, 가래, 오한, 발열, 두통, 관절통,
								근육통)의 완 화</li>
						</ol>
					</div>
				</div>


			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#collapseFour5"
							aria-expanded="false" aria-controls="collapseFour5"> 용법용량 </a>
					</h4>
				</div>
				<div id="collapseFour5" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingFour5">
					<div class="panel-body">
						<p>성인 1회 30mL, 1일 3회 식후 30분에 복용한다.
						<p>저장방법: 기밀용기
						<p>포장단위: 30미리리터
					</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingfive5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#collapsefive5"
							aria-expanded="false" aria-controls="collapsefive5"> 추가정보 </a>
					</h4>
				</div>
				<div id="collapsefive5" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingfive5">
					<div class="panel-body">
						<p>어린이의 손에 닿지 않고, 직사일광을 피하고, 습기가 적은 서늘한 곳에 보관할 것.</p>
					</div>
				</div>
			</div>

		</div>
	</div>





	<h2 class="title_2">판피린티 정</h2>


	<div class="mainPanel">
		<img class="medimg" src="${pageContext.request.contextPath}/resources/img/medList/panpi.jpg">
		<div class="panel-group" id="accordion5" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion5"
							href="#panpi1" aria-expanded="false" aria-controls="collapseOne5">
							제품정보 </a>
					</h4>
				</div>
				<div id="panpi1" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingOne1">
					<div class="panel-body">
						<ul>
							<li>동아제약에서 제조한 해열, 진통, 소염제</li>

						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#panpi2" aria-expanded="false"
							aria-controls="collapseTwo5"> 전성분 </a>
					</h4>
				</div>
				<div id="panpi2" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingTwo1">
					<div class="panel-body">
						<ol>
							<li>조성(1정중) 주성분 아세트아미노펜 ·········300mg</li>
							<li>조성(1정중) 무수카페인 ·········30mg</li>
							<li>조성(1정중) 말레인산클로르페니라민 ·········2mg</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#panpi3" aria-expanded="false"
							aria-controls="collapseThree5"> 효능, 효과 </a>
					</h4>
				</div>
				<div id="panpi3" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingThree1">
					<div class="panel-body">
						<ol>
							<li>감기의 제증상(콧물, 코막힘, 재체기, 인후통, 오한, 발열, 두통, 관절통, 근육통)의 완화</li>
						</ol>
					</div>
				</div>


			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#panpi4" aria-expanded="false"
							aria-controls="collapseFour5"> 용법용량 </a>
					</h4>
				</div>
				<div id="panpi4" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingFour1">
					<div class="panel-body">성인 1회 1정, 1일 3회 식후 30분에 복용한다.</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingfive1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#panpi5" aria-expanded="false"
							aria-controls="collapsefive5"> 추가정보 </a>
					</h4>
				</div>
				<div id="panpi5" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingfive1">
					<div class="panel-body">
						<ol>
							<li>어린이의 손이 닿지 않는 장소에 보관할 것.</li>
							<li>직사일광을 피하고 되도록이면 습기가 적은 서늘한 곳에 보관할 것.</li>
							<li>오용을 피하고 다른 용기에 바꾸어 넣지 말 것.</li>
							<li>저장방법: 기밀용기, 실온보관</li>
						</ol>
					</div>
				</div>
			</div>

		</div>
	</div>


			</div>
			<!-- ~~ 끝-->
	
			
	
	
	
	
		</article>
		<!-- article 끝 -->
	</div>
	<!-- 본문 끝 -->
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>
<!-- 컨테이너 끝 -->

</body>
</html>
