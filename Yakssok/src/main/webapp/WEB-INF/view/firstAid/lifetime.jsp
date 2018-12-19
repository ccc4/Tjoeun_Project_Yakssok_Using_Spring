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
<link href="${pageContext.request.contextPath }/resources/css/firstAid.css" rel="stylesheet">
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
    <li class="breadcrumb-item active" aria-current="page">생활 응급처치</li>
  </ol>
</nav>

<p class="title_1st">압박 지혈</p>
	<div id="life_1st">
		<p class="title_2st">직접압박 지혈</p>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/G7weqwa3d4o" frameborder="0"
			allow="accelerometer; autoplay; 
encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		<ul class="list_1st">
			<li>출혈되는 상처부위를 압박한다.</li>
			<li>출혈이 멈춘 후에는 상처부위를 소독거즈로 덮어준다.</li>
			<li>소독거즈 근처로 압박붕대로 감아준다.</li>
			<li>※ 출혈이 멈추지 않으면 더 세게 압박한다.</li>
			<li>※ 응고를 위해 적어도 10분 아상 상처를 압박한다.</li>
		</ul>



		<p class="title_2st">동맥점압박 지혈</p>

		<ul class="list_1st">
			<li>팔이나 다리에서의 출혈이 직접압박으로 지혈되지 않으면 동맥의 근위부를 압박함으로써 심한 출혈을 억제 할 수
				있습니다.

				<ul class="list_1st">
					<li>상지의 출혈은 상완동맥을 압박한다.</li>
					<li>하지의 출혈은 대퇴동맥을 압박한다.</li>
				</ul>
			</li>
		</ul>

		<p class="title_2st">주의사항</p>
		<ul class="list_1st">
			<li>상지나 하지는 여러 동맥에 의하여 혈액이 공급되어 있으므로 압박점을 압박하여 혈류를 차단하는 것은 쉬운 일이
				아닙니다.</li>
		</ul>

	</div>


	<p class="title_1st">쇼크(Shock)</p>
	<div id="life_1st">

		<p class="title_2st">쇼크란?</p>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/dklm3weX0s4" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>


		<ul class="list_1st">
			<li>심한 외상, 화상, 수술, 대출혈 등 물리적 손상과 정신적 손상 또는 과민반응(알레르기) 등으로 인하여
				신체의 혈관, 신경조절기능이 저하되고 탈진한 상태 등을 총칭함.</li>
		</ul>

		<p class="title_2st">응급처치</p>
		<ul class="list_1st">
			<li>기도를 유지하고 필요에 따라 지원요청 또는 심폐소생술을 시행한다.</li>
			<li>출혈부위를 직접압박 방법으로 지혈 한다.</li>
			<li><b>다리 부분을 15~25cm정도 높여</b> 혈액이 심장이나 뇌로 가도록 한다.(흉부나 뇌손상 환자
				제외)</li>
			<li>골절부위를 부목으로 고정시켜서 출혈유발과 쇼크악화를 방지한다.</li>
			<li>쇼크 상태의 환자를 조심스럽게 다루며 옷이나 담요 등으로 덮어서 <b>체온을 유지한다.</b>
			</li>
			<li>가급적 환자를 눕힌 상태로 유지한다.</li>
			<li>그러나 심한 심장발작이나 폐질환 후에 쇼크에 빠진 환자는 앉거나 상체를 약간 뒤로 젖혀 앉은 상태에서 <br />호흡을
				잘하는 수가 있다. 구토가 심한 경우에는 얼굴을 옆으로 돌려서 토하는 음식물이 기도를 막지 않도록 한다.
			</li>
		</ul>

		<p class="title_2st">주의사항</p>
		<ul class="list_1st">
			<li>환자에게는 먹을 거나 마실 것을 주지 않는다. 위장운동이 저하되어 있으므로 음식물을 섭취하면 토할 수 있다.</li>
		</ul>

	</div>



	<p class="title_1st">골절 및 염좌</p>
	<div id="life_1st">
		<p class="title_2st">골절</p>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/pkdwixKmZu4?list=PLhSl21XQPQzfxBt5BS3XQljVod00GrRHE"
			frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		<ul class="list_1st">
			<li>뼈가 부러졌거나 금이 간 상태</li>
		</ul>

		<p class="title_2st">염좌</p>
		<ul class="list_1st">
			<li>인대난 근육이 손상된 상태</li>
		</ul>

		<p class="title_2st">증상</p>

		<ul class="list_1st">
			<li>손상부위의 심한 통증</li>
			<li>멍,부종</li>
			<li>관절 부위의 운동장애</li>
		</ul>


		<p class="title_2st">응급처치 - RICES</p>

		<ul class="list_1st">
			<li>Rest : 쉬고, 안 움직이고</li>
			<li>Ice : 찜질하고</li>
			<li>Compression : 압박하고 드레싱하고</li>
			<li>Elevation : 올려주고</li>
			<li>Splint : (부목)고정시켜줌</li>
		</ul>


	</div>


	<p class="title_1st">화상</p>
	<div id="life_1st">
		<p class="title_2st">화상은?</p>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/G9YegpvgBe0" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		<ul class="list_1st">
			<li>물질과의 마찰 또는 뜨거운 액체나 증기 같은 것 등으로 인해 신체 조직이 손상된 상태를 말한다.</li>
			<li>불, 뜨거운 증기, 기름, 물, 주방기구 등에 의해 화상을 입으며, 주로 어린이들에게서 많이 발생한다.</li>
		</ul>

		<p class="title_2st">증상</p>

		<ul class="list_1st">
			<li>1도 화상 : 피부가 빨개지고 물집이 없는 상태임</li>
			<li>2도 화상 : 물집이 생김</li>
			<li>3도 화상 : 피부가 하얗고 손상부위를 눌러도 통증을 느끼지 못하는 경우가 있음</li>
		</ul>



		<p class="title_2st">응급처치</p>
		<ul class="list_1st">
			<li>화상 부위에 붙어 있는 옷 등은 제거하지 말고 더러운 물건이 접촉하지 않도록 한다.</li>
			<li>특히 간장, 기름, 된장 등을 바르지 않도록 하며 화상 부위가 적을 경우에는 깨끗한 수돗물로 냉각시켜 통증을
				감소시키는 것이 바람직하다. (흐르는 찬물 속에 최소 10분 동안 담가야 함)</li>
			<li>소독 거즈가 있는 경우에는 화상 부위를 덮어주는 것이 좋다.</li>
			<li>얼굴에 난 화상은 환자가 숨을 쉴 수 있도록 구멍을 낸 거즈를 덮는다.</li>
			<li>물집은 터트리지 말고, 화상부위에 딱 붙어 있는 물질들을 떼어내지 않는 것이 좋다.</li>
			<li>로션을 바르거나 연고, 기름 같은 것도 바르지 않는다.</li>
			<li>환자를 빨리 병원으로 옮겨야 한다.</li>
			<li>화상은 1, 2, 3도로 구분한다.</li>
		</ul>

	</div>


	<p class="title_1st">뇌졸중</p>
	<div id="life_1st">
		<p class="title_2st">정의</p>
		<iframe width="500" height="300" align="right"
			src="https://www.youtube.com/embed/N0u-amYZTqk" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		<ul class="list_1st">
			<li>뇌로 가는 혈류의 차단으로 뇌가 손상을 입는 질환을 말한다.</li>
		</ul>

		<p class="title_2st">증상</p>

		<ul class="list_1st">
			<li>편측에 발생하는 부분적 혹은 전체적 마비</li>
			<li>의식장애, 언어 혹은 시력장애</li>
			<li>안면근육마비, 표정상실, 경련</li>
			<li>두통, 구토, 어지러움증</li>
		</ul>


		<p class="title_2st">응급처치</p>

		<ul class="list_1st">
			<li>환자의 호흡과 맥박상태를 확인하여 특별한 이상이 없다면 환자를 옆으로 눕히면서 머리를 약간 뒤로 젖히는
				자세를 취하도록 함.</li>
			<li>특히 구토에 의하여 기도가 폐쇄되었을 경우 즉시 이물질 제거로 기도확보를 하고, 호흡과 맥박이 없을 경우
				심폐소생술을 시행한다.</li>
		</ul>

	</div>



	<p class="title_1st">열 손상</p>
	<p class="title_2st">관련 질환</p>
	<p>열사병, 일사병, 열실신, 열부종, 열경련 질환을 말한다</p>
	<table id="one-column-emphasis">
		<caption style="font-size: 16px;">
			<strong>열손상 관련 질환</strong> 관련 질환별 증상, 응급처치 안내표 ↓

		</caption>
		<colgroup>
			<col class="oce-first" />
		<thead>
			<tr>
				<th scope="col">관련 질환</th>
				<th scope="col">증상</th>
				<th scope="col">응급처치</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>열사병</td>
				<td>- 원인<br>직접 태양에 노출 또는 뜨거운 차안등에서 강한 열에 장기간 노출됨으로써 발생<br>
					· 뜨겁고 건조한 피부(땀이 나지 않음)<br> · 초기는 빠르고 강한 맥박, 점차 약해짐<br> ·
					두통, 어지러움, 오심<br> · 의식저하, 심하면 혼수상태에 빠짐 <br>
				</td>
				<td>· 시원한 장소로 이동조치 후 119 도움 요청<br> · 젖은 물수건, 에어컨, 선풍기 또는
					찬물 이용하여 빠른 시간 내에 체온을 냉각시킴<br> · 머리를 다리보다 낮추고 구급대를 기다리는 시간이 길면
					시원한 물이 담긴 욕조에 머리만 남기고 잠기도록 함.<br> ※ 주의사항!<br>물과 음식은 함부로
					주지 말아야 함
				</td>
			</tr>
			<tr>
				<td>열사병</td>
				<td>- 원인<br>강한 햇볕에 장기간 노출됨으로써 혈액의 저류와 체액과 전해질이 땀으로 과다 배출되는
					발생<br> · 피부가 차갑고 끈끈하며 젖어있음<br> · 현기증, 정신착란 등 이상 의식변화
				</td>
				<td>· 시원한 장소에서 휴식을 취하게 함<br> · 의식이 있으면 이온음료 섭취<br> ·
					젖은 물수건으로 얼굴을 닦고, 차가운 수건으로 손발을 식히면서 부채질 함.
				</td>
			</tr>
			<tr>
				<td>열실신</td>
				<td>· 일시적 의식소실</td>
				<td>· 평평한 곳에 눕히도록 함</td>
			</tr>
			<tr>
				<td>열부종</td>
				<td>· 발이나 발목이 부음</td>
				<td>· 시원한 장소에서 발을 높인 자세로 휴식</td>
			</tr>
			<tr>
				<td>일사병</td>
				<td>- 원인<br>과다한 땀의 배출로 전해질이 고갈되어 발생<br> · 근육의 경련, 피로감
				</td>
				<td>· 시원한 장소에서 휴식을 취하게 함<br> · 이온음료 섭취

				</td>
			</tr>
		</tbody>
	</table>
	<br />
	<br />
	<div id="life_1st">

		<p class="title_2st">예방법(대처방법)</p>

		<ul class="list_1st">
			<li>목이 마르기 전에 물을 마시되 자주 섭취해야 합니다.</li>
			<li>음료수를 많이 마시되 술은 마시지 맙시다.</li>
			<li>모자를 쓰고, 목을 감싸는 옷은 피하며 헐렁한 옷을 입읍시다.</li>
			<li>한낮의 뜨거운 햇볕은 피합시다.</li>
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