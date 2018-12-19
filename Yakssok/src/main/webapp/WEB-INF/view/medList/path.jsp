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
	background: #fe5f55;
	border-radius: 30px;
	border: 2px solid #fe5f55;
	font-size: 20px;
	font-weight: 400;
	color: #fff;
	position: relative;
}

#accordion5 .panel-title a.collapsed {
	border: 2px solid #bbb;
	background: #fff;
	color: #bbb;
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
	background: #fe5f55;
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
	background: #bbb;
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
	background: #fe5f55;
	position: absolute;
	top: 0;
	left: -30px;
}

#accordion5 .panel-body:after {
	content: "";
	border-top: 20px solid #fe5f55;
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
    <li class="breadcrumb-item active" aria-current="page">파스</li>
  </ol>
</nav>

	<h1 class="title_1">안전상비 의약품 - 파스</h1>
	<br>
	<h2 class="title_2">제일 쿨파프</h2>


	<div class="mainPanel">
		<img class="medimg"
			src="${pageContext.request.contextPath}/resources/img/medList/jaeil.jpg">
		<div class="panel-group" id="accordion5" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne5">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion5"
							href="#jaeil1" aria-expanded="true"
							aria-controls="collapseOne5"> 제품정보 </a>
					</h4>
				</div>
				<div id="jaeil1" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingOne5">
					<div class="panel-body">
						<ul>
						<li>다층 혼합정제로 위와 장, 2단계에 걸쳐 소화를 촉진하는 프리미엄 소화제</li>
						<li>5종의 소화효소와 위장관내 가스를 제거하는 시메치콘과 인체의 생리적 소화작용을 촉진시켜주는 UDCA가
							배합된 소화제</li>
						<li>가스제거 성분이 함유되어 가스로인한 소화불량, 위부팽만감 등을 제거</li>

					</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#jaeil2"
							aria-expanded="false" aria-controls="collapseTwo5"> 전성분 </a>
					</h4>
				</div>
				<div id="jaeil2" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingTwo5">
					<div class="panel-body">
						D-캄파 122.5 mg, 멘톨 175 mg, 치몰 17.5 mg,
					메칠살리시네이트 262.5 mg, 박하유 87.5 mg
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#jaeil3"
							aria-expanded="false" aria-controls="collapseThree5"> 효능, 효과
						</a>
					</h4>
				</div>
				<div id="jaeil3" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingThree5">
					<div class="panel-body">
						<ol>
							<li>다음 증상의 진통 ㆍ 소염 : 삠, 타박상, 근육통, 관절통,
					골절통, 요통, 어깨결림, 신경통, 류마티스통증</li>
						</ol>
					</div>
				</div>


			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#jaeil4"
							aria-expanded="false" aria-controls="collapseFour5"> 용법용량 </a>
					</h4>
				</div>
				<div id="jaeil4" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingFour5">
					<div class="panel-body">
						1일 1~2회 환부에 붙인다.
					<p>포장단위 안전상비의약품 : 1포 4매
					</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingfive5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#jaeil5"
							aria-expanded="false" aria-controls="collapsefive5"> 추가정보 </a>
					</h4>
				</div>
				<div id="jaeil5" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingfive5">
					<div class="panel-body">
						<ol>
						<li>어린이의 손이 닿지 않는 곳에 보관한다.</li>
						<li>직사일광을 피하고 될 수 있으면 습기가 적고 서늘한 곳에 밀전하여 보관한다.</li>
						<li>오용을 막고 품질의 보존을 위하여 다른 용기에 바꾸어 넣지 않는다.</li>

					</ol>
					</div>
				</div>
			</div>

		</div>
	</div>





	<h2 class="title_2">신신파스 아렉스</h2>


	<div class="mainPanel">
		<img class="medimg" src="${pageContext.request.contextPath}/resources/img/medList/sinsin.jpg">
		<div class="panel-group" id="accordion5" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne1">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion5"
							href="#sinsin1" aria-expanded="true" aria-controls="collapseOne5">
							제품정보 </a>
					</h4>
				</div>
				<div id="sinsin1" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingOne1">
					<div class="panel-body">
						<ul>
							<li>첩부제류 파스로 진통, 소염에 탁월한 신신제약 인기제품입니다.</li>

						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#sinsin2" aria-expanded="false"
							aria-controls="collapseTwo5"> 전성분 </a>
					</h4>
				</div>
				<div id="sinsin2" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingTwo1">
					<div class="panel-body">
						<ol>
								<li>엘-멘톨...90.90mg</li>
						<li>박하유...45.46mg</li>
						<li>살리실산메틸...90.90mg</li>
						<li>디엘-캄파...34.10mg</li>
						<li>니코틴산벤질...0.90mg</li>
						<li>노닐산바닐아미드...0.114mg</li>
						<li>산화아연...431.82mg</li>
						<li>성상 : 이 약은 백색의 부직포에 점착성물질을 도포하고 고체면에 박리지를 덮은 것이다.</li>
						</ol>
						포장단위 안전상비의약품 : 1포 4매
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#sinsin3" aria-expanded="false"
							aria-controls="collapseThree5"> 효능, 효과 </a>
					</h4>
				</div>
				<div id="sinsin3" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingThree1">
					<div class="panel-body">
						<ol>
					<li>다음 질환 및 증상의 진통∙소염: 어깨결림, 요통, 신경통, 류마티스, 타박상, 염좌, 근육통, 관절통</li>
						</ol>
					</div>
				</div>


			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#sinsin4" aria-expanded="false"
							aria-controls="collapseFour5"> 용법용량 </a>
					</h4>
				</div>
				<div id="sinsin4" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingFour1">
					<div class="panel-body">1일 1~회 환부에 부착한다.</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingfive1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#sinsin5" aria-expanded="false"
							aria-controls="collapsefive5"> 추가정보 </a>
					</h4>
				</div>
				<div id="sinsin5" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingfive1">
					<div class="panel-body">
						눈 주위, 습진, 옻 등에 의한 피부염, 상처, 점막등의 부위에 사용하지 않습니다.
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
</div>
<!-- 컨테이너 끝 -->



</body>
</html>
