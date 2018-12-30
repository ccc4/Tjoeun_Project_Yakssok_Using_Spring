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
    <li class="breadcrumb-item active" aria-current="page">소화제</li>
  </ol>
</nav>

	<h1 class="title_1">안전상비 의약품 - 소화제</h1>
	<br>
	<h2 class="title_2">베아제 정</h2>


	<div class="mainPanel">
		<img class="medimg"
			src="${pageContext.request.contextPath}/resources/img/medList/baaje.png">
		<div class="panel-group" id="accordion5" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne5">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion5"
							href="#baaje1" aria-expanded="true"
							aria-controls="collapseOne5"> 제품정보 </a>
					</h4>
				</div>
				<div id="baaje1" class="panel-collapse collapse"
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
							data-parent="#accordion5" href="#baaje2"
							aria-expanded="false" aria-controls="collapseTwo5"> 전성분 </a>
					</h4>
				</div>
				<div id="baaje2" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingTwo5">
					<div class="panel-body">
						Pancreatin Enteric Gr. 78.6mg,
					Pancellase SS 30mg, Panprosin SS 20mg, Ursodeoxycholic Acid 10mg,
					Biodiastase2000 50mg, Simethicone 40mg, Lipase 100 15mg
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#baaje3"
							aria-expanded="false" aria-controls="collapseThree5"> 효능, 효과
						</a>
					</h4>
				</div>
				<div id="baaje3" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingThree5">
					<div class="panel-body">
						<ol>
						<li>소화불량, 과식, 식체(체함)</li>
						<li>다음 질환에도 사용할 수 있습니다. 식욕감퇴, 소화촉진, 소화불량으로 인한 위부팽만감, 만성위염 및
							위장관 수술후에 수반되는 복부 팽만감, 공기연하증, 구역, 구토, 가스제거</li>
					</ol>
					</div>
				</div>


			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#baaje4"
							aria-expanded="false" aria-controls="collapseFour5"> 용법용량 </a>
					</h4>
				</div>
				<div id="baaje4" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingFour5">
					<div class="panel-body">
						(정제) 성인 : 1회 1정 1일 3회 식후에 복용한다.
					<p>포장단위 : 3정
					</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingfive5">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#baaje5"
							aria-expanded="false" aria-controls="collapsefive5"> 추가정보 </a>
					</h4>
				</div>
				<div id="baaje5" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingfive5">
					<div class="panel-body">
						이 약은 자르거나 분쇄했을 때 효과가 감소될 수 있으므로 정제 그대로
					복용토록 합니다. 정해진 용법 용량을 잘 지켜 복용하도록 합니다. 2주 정도 복용하여도 증상의 개선이 없을 경우에는
					투여를 중지하고 약사 또는 의사와 상의합니다.
					</div>
				</div>
			</div>

		</div>
	</div>





	<h2 class="title_2">닥터베아제정</h2>


	<div class="mainPanel">
		<img class="medimg" src="${pageContext.request.contextPath}/resources/img/medList/drbaaje.png">
		<div class="panel-group" id="accordion5" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne1">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion5"
							href="#drbaaje1" aria-expanded="true" aria-controls="collapseOne5">
							제품정보 </a>
					</h4>
				</div>
				<div id="drbaaje1" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingOne1">
					<div class="panel-body">
						<ul>
						<li>소아와 청소년 사이의 만 6세 이상 만 12세 이하를 위한 해열 진통제입니다.</li>
						<li>아세트아미노펜 단일 성분, 무 카페인, 무 색소의 빠르고 마음 편한 해열 진통제</li>
						<li>소아와 청소년 사이의 주니어(만 6세~만12세)의 몸무게에 맞는 정량 복용을 위한 해열진통제</li>
						<li>위장에 부담이 적은 아세트아미노펜 성분으로, 비교적 위장이 약한 주니어에게도 안심하고 먹일 수
							있습니다.</li>
					</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#drbaaje2" aria-expanded="false"
							aria-controls="collapseTwo5"> 전성분 </a>
					</h4>
				</div>
				<div id="drbaaje2" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingTwo1">
					<div class="panel-body">
						<ol>
						<li>비오디아스타제 2000I I I (KPC) 50.0mg</li>
						<li>판셀라제(KPC)</li>
						<li>크리아제-PEG(별규)</li>
						<li>다이젵100(KPC)</li>
						<li>판프로신(KPC)</li>
						<li>리파제II(KPC)</li>
						<li>브로멜라인(별규)</li>
						<li>우르소데옥시콜산(JP)</li>
						<li>시메치콘파우더(별규) (시메치콘으로서 45.7mg)</li>
						<li>첨가제(식약처인정타르색소):청색2호, 황색4호, 적색40호</li>
					</ol>
					포장단위 안전상비의약품 : 3정
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#drbaaje3" aria-expanded="false"
							aria-controls="collapseThree5"> 효능, 효과 </a>
					</h4>
				</div>
				<div id="drbaaje3" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingThree1">
					<div class="panel-body">
						<p>소화불량, 식욕감퇴(식욕부진), 과식, 식체(체함), 소화촉진, 소화불량으로 인한 위팽만감
					</div>
				</div>


			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#drbaaje4" aria-expanded="false"
							aria-controls="collapseFour5"> 용법용량 </a>
					</h4>
				</div>
				<div id="drbaaje4" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingFour1">
					<div class="panel-body">성인 1회 1~2정, 1일 3회 식후 복용</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingfive1">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#drbaaje5" aria-expanded="false"
							aria-controls="collapsefive5"> 추가정보 </a>
					</h4>
				</div>
				<div id="drbaaje5" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingfive1">
					<div class="panel-body">
						밀폐용기에 넣어 실온(1~30℃)에서 보관하십시오. 반드시 포장된
					용기에 넣고 꼭 닫아서 보관하십시오. 이 약을 포장에서 꺼내어 다른 용기에 보관하는 것은 의약품을 잘못 사용하는 사고
					발생이나 품질저하의 원인이 될 수 있습니다. 어린이의 손이 닿지 않는 곳에 보관하세요.
					</div>
				</div>
			</div>

		</div>
	</div>

<h2 class="title_2">훼스탈골드정</h2>


	<div class="mainPanel">
		<img class="medimg"
		src="${pageContext.request.contextPath}/resources/img/medList/gold.jpg">
		<div class="panel-group" id="accordion5" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne2">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion5"
							href="#gold1" aria-expanded="true"
							aria-controls="collapseOne5"> 제품정보 </a>
					</h4>
				</div>
				<div id="gold1" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingOne2">
					<div class="panel-body">
						어린이 타이레놀정 80mg(츄어블정) 이가 난 아이에게는 씹어먹는 츄어블정을 주세요!
					<ul>
						<li>생후 4개월부터 먹일 수 있는 빠르고 마음편한 어린이 해열 진통제</li>
						<li>어린이가 복용하기 쉽도록 약의 쓴맛을 없애고 딸기맛 첨가</li>
						<li>용법·용량 표기가 몸무게에 따라 표기되어 있어 안심하고 먹일 수 있어요!</li>
						<li>어린이 보호용 안전포장 사용</li>
					</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo2">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#gold2"
							aria-expanded="false" aria-controls="collapseTwo5"> 전성분 </a>
					</h4>
				</div>
				<div id="gold2" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingTwo2">
					<div class="panel-body">
						1정 중,
					<ol>
						<li>유효성분: 판크레아틴(EP) 150mg, 디아스타제프로테아제셀룰라제2000IV(KP) 10mg,
							프로자임6(별규) 10mg, 리파제I(KP) 15mg, 셀룰라제AP3II(KP) 9mg, 우르소데옥시콜산(JP)
							20mg, 시메티콘(USP) 60mg</li>
						<li>첨가제(동물유래성분): 유당수화물(소, 우유)</li>
						<li>기타 첨가제: 규화미결정셀룰로오즈, 메타규산알루민산마그네슘, 메타아크릴산∙아크릴산에틸공중합체,
							산화티탄, 스테아르산마그네슘, 시트르산트리에틸, 콜로이드성이산화규소, 크로스카르멜로오스나트륨, 크로스포비돈, 탤크,
							폴리에틸렌글리콜6000, 히프로멜로오스</li>
					</ol>
					포장단위 안전상비의약품 : 6정
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree2">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#gold3"
							aria-expanded="false" aria-controls="collapseThree5"> 효능, 효과
						</a>
					</h4>
				</div>
				<div id="gold3" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingThree2">
					<div class="panel-body">
						소화불량, 식욕감퇴(식욕부진), 과식, 식체(위체(체함)), 소화촉진, 소화불량으로 인한 위부팽만감
					</div>
				</div>


			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour2">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#gold4"
							aria-expanded="false" aria-controls="collapseFour5"> 용법용량 </a>
					</h4>
				</div>
				<div id="gold4" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingFour2">
					<div class="panel-body">
						성인 1회 1정, 1일 3회 식사 후 씹지 말고 복용한다.
					
					</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingfive2">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#80mg5"
							aria-expanded="false" aria-controls="collapsefive5"> 추가정보 </a>
					</h4>
				</div>
				<div id="80mg5" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingfive2">
					<div class="panel-body">
						밀폐용기에 넣어 실온(1~30℃)에서 보관하십시오. 반드시 포장된
					용기에 넣고 꼭 닫아서 보관하십시오. 이 약을 포장에서 꺼내어 다른 용기에 보관하는 것은 의약품을 잘못 사용하는 사고
					발생이나 품질저하의 원인이 될 수 있습니다. 어린이의 손이 닿지 않는 곳에 보관하세요.
					</div>
				</div>
			</div>

		</div>
	</div>
	
	<!-- ----------------------훼스탈 플러스 정--------------------- -->
<h2 class="title_2">훼스탈 플러스정</h2>


	<div class="mainPanel">
		<img class="medimg"
		src="${pageContext.request.contextPath}/resources/img/medList/plus.jpg">
		<div class="panel-group" id="accordion5" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne3">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion5"
							href="#plus1" aria-expanded="true"
							aria-controls="collapseOne5"> 제품정보 </a>
					</h4>
				</div>
				<div id="plus1" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingOne3">
					<div class="panel-body">
						어린이 타이레놀 현탁액, 무색소 100ml 약을 먹기 싫어하는 아이에게는 어린이 타이레놀 현탁액을 주세요
					<ul>
						<li>소화불량, 체한증상등에 복용하는약</li>
						<li>동물의 췌장에서 만들어진 소화효소 사용</li>
						
					</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo3">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#plus2"
							aria-expanded="false" aria-controls="collapseTwo5"> 전성분 </a>
					</h4>
				</div>
				<div id="plus2" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingTwo3">
					<div class="panel-body">
						조성. 성상 - 무색소
					<ol>
						<li>판크레아틴 ········· 315mg</li>
						<li>우르소데옥콜산 ········· 10mg</li>
						<li>시메티콘 ········· 30mg</li>
						<li>셀룰라제 AP3ll ········· 10mg</li>
					</ol>
					
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree3">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#plus3"
							aria-expanded="false" aria-controls="collapseThree5"> 효능, 효과
						</a>
					</h4>
				</div>
				<div id="plus3" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingThree3">
					<div class="panel-body">
						<ol>
						<li>소화불량, 식욕감퇴(식욕부진), 과식, 식체(위체(체함)), 소화촉진, 소화불량으로 인한 위부팽만감</li>
						</ol>
					</div>
				</div>


			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour3">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#plus4"
							aria-expanded="false" aria-controls="collapseFour5"> 용법용량 </a>
					</h4>
				</div>
				<div id="plus4" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingFour3">
					<div class="panel-body">
						성인 1회 1~2정, 소아(만 8세~ 만 15세 미만) 1회 1정
					<p>1회 3회, 식사 후 씹지 말고 복용한다.
					</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingfive3">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion5" href="#liquid5"
							aria-expanded="false" aria-controls="collapsefive5"> 추가정보 </a>
					</h4>
				</div>
				<div id="liquid5" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingfive3">
					<div class="panel-body">
						+ 기밀용기에 넣어 실온(1~30°C)에서 보관하십시오. 이 약을
					포장에서 꺼내어 다른 용기에 보관하는 것은 의약품을 잘못 사용하는 사고 발생이나 의약품의 품질 저하의 원인이 될 수
					있습니다.반드시 포장된 용기에 넣고 꼭 닫아서 보관하시기 바랍니다.
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
