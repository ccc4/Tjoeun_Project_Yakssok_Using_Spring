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

#heart {
border : 1px;
padding : 10px;
background: Gainsboro;
margin-bottom : 30px;
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
    <li class="breadcrumb-item active" aria-current="page">심폐소생술</li>
  </ol>
</nav>
	<p class="title_1st">심폐소생술의 정의</p>
	
		<div id="heart">
			<p class="title_2st"> 심폐소생술 이란?</p><br><br>
			<p style="font-size:30px; text-align : center; font-weight: 800; color : PaleVioletRed;"> Cardio Pulmonary Resuscitation</p><br><br>
			 <p style="font-size:15px; font-weight: 600;">갑작스런 심장마비나 사고로 인해 폐와 심장의 활동이 멈추게 되었을
				때, 인공호흡으로 혈액을 순환시켜 지직으로 산소를 공급함으로써 뇌의 손상 또는 사망을 지연시키고자 현장에서 신속하게
				실시하는 기술입니다.</p>
			
	</div>


	<p class="title_1st">성인 심폐소생술</p>

	<div id="life_1st">
		<p class="title_2st">1. 심정지 확인 및 119신고(자동제세동기 요청)</p>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/WneG3XhBayc" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		<ul class="list_1st">
			<li>환자의 어깨를 가볍게 두드리며 <b>“괜찮으세요?”</b>라고 여쭤보세요
			</li>

			<li>주변 사람에게 큰소리로 <b>119에 전화해 달라고 부탁</b>하고 <b>자동제세동기 요청</b>, 주변에
				아무도 없으면 직접 <b>119에 신고</b> 합시다.
			</li>

		</ul>




		<p class="title_2st">2. 압박위치</p>
		<ul class="list_1st">
			<li>손꿈치 중앙을 양쪽 젖꼭지 사이의 <b>흉부의 정중앙</b>에 놓고 손가락이 늑골이 닿치 않도록 합시다.
			</li>
			<li>다른 손으로 나머지 손을 덮어주세요.</li>
		</ul>



		<p class="title_2st">3. 압박방법</p>
		<ul class="list_1st">
			<li>팔을 쭉 펴고 수직으로 <b>분당 최소 100회 속도 및 최소 5cm 깊이</b>로 환자 가슴을 눌러 준
				다음 힘을 뺍니다.
			</li>
		</ul>




		<p class="title_2st">4. 가슴압박 30회 시행</p>
		<ul class="list_1st">
			<li><b>분당 최소 100회</b>의 속도로 <b>30회 흉부</b>를 압박합시다. 흉부압박 때 환자 가슴에서
				양손을 떼지 맙시다.<br>※ ‘하나, 둘, 셋’, ---, ‘서른’하고 세어가면서 시행하며, 압박된 가슴은
				완전히 이완되도록 함.</li>
		</ul>


		<p class="title_2st">5. 기도유지</p>
		<ul class="list_1st">
			<li>머리를 뒤로 젖히고 턱을 위로 들어 올려 기도를 열어 주세요.</li>
		</ul>



		<p class="title_2st">6. 인공호흡 2회 시행</p>
		<ul class="list_1st">
			<li>환자의 코를 막고 <b>입속으로 두 번 불어</b>주세요. 이때, 환자 가슴이 올라와야 기도로 호흡이 들어간
				것입니다.<br>※ 구조자가 인공호흡을 모르거나 능숙하지 않은 경우에는 인공호흡을 제외하고, 지속적으로
				가슴압박만을 시행(가슴압박 소생술)
			</li>
		</ul>


		<p class="title_2st">7. 가슴압박과 인공호흡의 반복</p>
		<ul class="list_1st">
			<li>30회의 가슴압박과 2회의 인공호흡을 119구급대원이 도착할 때까지 반복해서 시행하세요.</li>
			<li>구조자가 두사람인 경우에는 30:2로 1인은 흉부압박을 하고 다른 1인은 인공호흡을 합니다. 5주기마다(매
				2분마다) 교대하여 실시합니다.<br>※ 흉부압박시 중단 시간이 10초 미만이 되도록 함.
			</li>
		</ul>
	</div>



	<p class="title_1st">자동제세동기 사용법</p>

	<div id="life_1st">
		<p class="title_2st">1. 자동제세동기 도착</p>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/Vh706Wb8xeU" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		<ul class="list_1st">
			<li>심폐소생술 시행 중에 자동제세동기가 도착하면 지체없이 적용합시다.</li>
		</ul>


		<p class="title_2st">2. 전원켜기</p>
		<ul class="list_1st">
			<li>자동제세동기를 심폐소생술에 방해가 되지 않는 위치에 놓은 뒤 전원버튼을 누르세요.</li>
		</ul>

		<p class="title_2st">3. 두개의 패드 부착</p>
		<ul class="list_1st">
			<li><b>패드 1 : 오른쪽 빗장뼈 바로 아래</b></li>
			<li><b>패드 2 : 왼쪽 젖꼭지 앞 겨드랑이 </b></li>
		</ul>


		<p class="title_2st">4. 심장리듬 분석</p>
		<ul class="list_1st">
			<li>"분석 중..."이라는 음성 지시가 나오면, 심폐소생술을 멈추고 환자에게 손을 떼세요.</li>
			<li>제세동이 필요한 경우 "제세동이 필요합니다"라는 음성지시와 함께 자동제세동기 스스로 설정된 에너지로 충전을
				시작 합니다.</li>
			<li>제세동이 필요없는 경우 "제세동이 필요하지 않습니다"라는 음성지시가 나오며 즉시 심폐소생술을 다시 시작하여야
				합니다.</li>
		</ul>



		<p class="title_2st">5. 제세동 실시</p>
		<ul class="list_1st">
			<li>제세동이 필요한 경우에만 제세동 버튼이 깜박이기 시작하며, 깜박일 때 제세동 버튼을 눌러 제세동을
				시행하세요.<br> <b>※ [주의사항]<br>제세동 버튼을 누르기 전에는 반드시 다른 사람이
					환자에게서 떨어져 있는지 다시 한번 확인하도록 함.
			</b>
			</li>
		</ul>


		<p class="title_2st">6. 즉시 심폐소생술 다시 시행</p>
		<ul class="list_1st">
			<li>제세동을 실시한 뒤 즉시 가슴압박과 인공호흡 비율을 30:2로 심폐소생술을 다시 시작하세요.</li>
		</ul>



		<p class="title_2st">7. 2분마다 심장리듬 분석 후 반복 시행</p>
		<ul class="list_1st">
			<li>회복되었거나 119구급대가 도착할 때까지 2분마다 심장리듬 분석 및 반복 시행토록 하세요.</li>
		</ul>
	</div>




	<p class="title_1st">영유아 심폐소생술</p>

	<div id="life_1st">
		<p class="title_2st">1. 기도열기(입 안의 이물 제거)</p>
		<ul class="list_1st">
			<li>입안의 이물질 여부를 확인하여, 이물질이 확실하게 보이면 손가락으로 이물질을 쓸어냅니다.</li>
		</ul>


		<p class="title_2st">2. 압박위치(영아)</p>
		<ul class="list_1st">
			<li>흉골 중앙 바로 아래의 두 손가락을 위치하여 눌러주세요. <br> <b>※ [주의사항]<br>명치를
					누르지 않도록 합시다.
			</b></li>
		</ul>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/Kefi2kur9A8" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>

		<p class="title_2st">3. 압박위치(유아)</p>
		<ul class="list_1st">
			<li>연령에 따라 한손으로 압박하는 경우도 있습니다. (대부분 유아의 경우)</li>
		</ul>


		<p class="title_2st">4. 흉부압박</p>
		<ul class="list_1st">
			<li>흉곽의 최소 1/3 깊이로 분당 최소 100회 속도로 30회 흉부를 압박합시다.</li>
			<li>흉부압박 때 환자 가슴에서 양손을 떼지 맙시다.<br> <b>※ 하나, 둘, 셋’, ---,
					‘서른’하고 세어가면서 시행하며, 압박된 가슴은 완전히 이완되도록 함. </b></li>
		</ul>


		<p class="title_2st">5. 기도유지</p>
		<ul class="list_1st">
			<li>한손의 이마, 다른 한 손은 턱을 들어 주되 중립위치를 유지하도록 합시다.<br> <b>※
					[주의사항]<br>영유아의 경우 너무 과도한 신전은 기도를 오히려 막을 수 있으니 주의하도록 함.
			</b></li>
		</ul>


		<p class="title_2st">6. 인공호흡 2회 실시</p>
		<ul class="list_1st">
			<li>처치자의 입으로 영아의 코와 입을 동시에 막아서 인공호흡 2회 불어넣기를 실시하도록 합시다.</li>
		</ul>


		<p class="title_2st">7. 2분마다 심장리듬 분석 후 반복 시행</p>
		<ul class="list_1st">
			<li>회복되었거나 119구급대가 도착할 때까지 2분마다 심장리듬 분석 및 반복 시행토록 하세요.</li>
			<li>처치자가 2인의 경우에는 압박과 호흡의 비율을 15:2로 실시하도록 합시다.</li>
		</ul>
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