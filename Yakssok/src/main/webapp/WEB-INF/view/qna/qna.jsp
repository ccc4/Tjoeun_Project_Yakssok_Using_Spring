<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/faq.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp" />
</head>
<body>

	<!-- 컨테이너 시작 -->
	<div class="container">
		<jsp:include page="/WEB-INF/resources/init/header.jsp" />
		<!-- 본문 시작 -->
		<div style="width: 100%">

			<!-- article 시작 -->
			<article>
				<div style="margin-bottom: 10px">
					<a class="h3" href="${pageContext.request.contextPath }/qna/">자주묻는 질문</a>
				</div>		
	
				<div class="faq">
					<div class="faqBody">
						<table class="table table-hover">
							<colgroup>
								<col style="width: 8%" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">NO</th>
									<th scope="col" style="text-align: center;">질문/답변</th>
								</tr>
							</thead>
							<tbody>
							<tr class="article" id="notice9">
								<td>9</td>
								<td class="taget q">
								  <a id='btn' href="javascript:;">비타민C가 하루 권장량보다 더 많은데 복용해도 될까요?
								    <span id="notice9" class="glyphicon glyphicon-menu-down pull-right" ></span>
								  </a>
								</td>
							</tr>
							<tr class="notice9 article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">하루 권장량은 최소 필요량으로써 우리 몸이 생명을 유지하고 살아가는데 필요한 최소한의 양을 의미합니다. 
								  비타민C의 하루 권장량은 성인남자 90mg으로 권장량 이하의 비타민C는 괴혈병 등의 결핍 질환을 유발할 수 있습니다. 비타민C를 복용하여 항산화, 
								  노화방지, 피부미용, 구내염 및 감기 예방 등의 효과를 얻기 위해서는 권장량 이상의 복용이 필요합니다. 비타민C를 하루 얼마 복용해야 하는가에 대해서는 
								  학자들간에도 이견이 많으나 우리나라 정부에서는 하루 1,500mg까지 문제없이 복용하도록 하고 있습니다. 특히 요즈음에는 비타민C의 고용량 복용(메가비타민 요법)이 
								  여러 가지 질병치료에 유익하다는 보고가 나오고 있습니다. 비타민C의 작용은 노화억제, 감기예방, 여러 질병을 일으키는 산화과정 억제 등 매우 다양합니다. 
								  비타민C는 수용성비타민으로 과량복용 시에도 축적이 없고 인체에서 사용하고 남은 양은 그냥 몸 밖으로 배출됩니다. 아주 과량을 복용하셨을 때 나타나는 부작용은 설사로 경미합니다.</td>
							</tr>

							<tr class="article" id="notice8">
								<td>8</td>
								<td class="taget q">
								  <a id='btn' href="javascript:;">영양제를 계속 복용해도 되나요?
								    <span class="glyphicon glyphicon-menu-down pull-right" ></span>
								  </a>
								</td>
							</tr>
							<tr class="notice8 article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">시중에서 영양제는 보통 비타민과 무기질이 함유된 제품을 말합니다. 제품에 따라서 비타민 함유량이 다르거나 무기질의 함량이 다르기도 합니다.
								  비타민은 음식물 중에 포함되어 있으나 현대인의 식습관으로는 충분히 보충되기가 힘듭니다. 그리고 체내에서 만들어 낼 수도 없으므로 비타민제로 복용하는 것이 필요합니다. 
								  실제 서구 선진국에서는 비타민을 식탁에 비치해 놓고 온 가족이 음식물처럼 복용하고 있습니다. 비타민은 수용성 비타민과 지용성 비타민으로 나뉩니다. 
								  수용성 비타민은 B,C가 있고, 지용성 비타민은 A, D, K가 있습니다. 수용성 비타민은 과량 복용해도 대부분 배설되므로 큰 부작용이 없습니다만 지용성 비타민은 장기간 고용량 
								  복용시 문제가 될 수가 있습니다. 그 중에서도 비타민 A가 제일 문제가 될 수 있습니다. 하지만 이것도 비타민 A가 많이 포함된 제품을 상용량의 10배 정도로 장기간 복용할 때 부작용이 
								  발생합니다. 하지만 임신을 계획 중이거나 임신 초기시에는 비타민 A는 피하시는 것이 좋습니다. 결론적으로 비타민은 장기적으로 복용하시는데 아무런 문제가 없고 건강에도 유익합니다.</td>
							</tr>

							<tr class="article" id="notice7">
								<td>7</td>
								<td class="taget q">
								  <a id='btn' href="javascript:;">비타민제를 복용하는 시간은 언제인가요?
								    <span class="glyphicon glyphicon-menu-down pull-right" ></span>
								  </a>
								</td>
							</tr>
							<tr class="notice7 article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">의약품의 복용 시간은 약품마다 다릅니다. 어떤 성분은 음식물이 있을 때 흡수가 저하되는 경우도 있고, 
								 흡수가 상승하는 경우도 있습니다. 또 어떤 성분은 위장 장애를 일으키는 경우도 있습니다. 그러므로 가장 정확한 복용법은 제품 설명서의 용법 용량에 나타나 있습니다. 
								 특별히 식사 전과 식사 후가 명시되어 있지 않다면, 식사와 관계없이 복용할 수 있으므로 편하신 시간에 복용하시기 바라며 규칙적으로 복용하는 것이 중요합니다. 
								 비타민제는 특별히 어떤 시간에 복용하는 것이 좋고 부작용이 없다는 연구가 없는 듯 하지만 비타민이 신진대사를 도우므로 활동이 활발한 낮 시간 전 오전에 드시는 것이 좋고 수용성 
								 비타민은 과량의 비타민이 배출되어버리므로 두 번에 나누어 드실 수 있다면 두 번에 걸쳐 드시는 것이 좋습니다.</td>
							</tr>

							<tr class="article" id="notice6">
								<td>6</td>
								<td class="taget q">
								  <a id='btn' href="javascript:;">임신 후 철분제를 언제부터 먹게 되나요?
								    <span class="glyphicon glyphicon-menu-down pull-right" ></span>
								  </a>
								</td>
							</tr>
							<tr class="notice6 article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">철분 부족은 남녀 노소 누구나 생길 수 있지만, 특히 임신부의 경우에는 철분 부족으로 인하여 빈혈이 생길 가능성이 
								 높으므로 철분제 복용이 권장되고 있습니다. 보통 임신부의 경우에는 임신 5개월부터 철분제를 복용하기 시작하여 출산 후 3-4개월까지는 복용하도록 권장하고 있습니다.</td>
							</tr>

							<tr class="article" id="notice5">
								<td>5</td>
								<td class="taget q">
								  <a id='btn' href="javascript:;">인터넷으로 의약품을 구입할 수 있나요?
								    <span class="glyphicon glyphicon-menu-down pull-right" ></span>
								  </a>
								</td>
							</tr>
							<tr class="notice5 article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">의약품은 약국을 통해서만 공급됩니다. 소비자와의 직거래 및 인터넷판매는 불가능하게 되어 있음을 알려드립니다. 
								  또한 일반의약품의 가격은 판매자 결정제로 판매하는 약국에서 결정하기 때문에 가격은 판매처마다 약간의 차이가 있을 수 있습니다. 의약품과 의약외품은 약국을 
								  통해서만 판매하고 있으며, 소비자와의 직거래는 하지 않습니다.</td>
							</tr>

							<tr class="article" id="notice4">
								<td>4</td>
								<td class="taget q">
								  <a id='btn' href="javascript:;">유효기간 지난 약을 먹어도 되나요?
								    <span class="glyphicon glyphicon-menu-down pull-right" ></span>
								  </a>
								</td>
							</tr>
							<tr class="notice4 article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">제품의 유효기간은 법규내의 엄격한 실험 하에서 정해지기 때문에 사용기한 내에서는 최대 100% 약효를 보장하고 있습니다. 
								  그러나 의약품의 성분은 햇빛뿐만 아니라 습도, 온도 등 다양한 보관요인에 의하여 영향을 받기 때문에 유효기간이 지난 제품은 성분이 감소되거나 변화될 가능성이 높아 
								  유효성과 안전성을 확인할 수가 없으므로 복용을 권해 드릴 수가 없습니다.</td>
							</tr>

							<tr class="article" id="notice3">
								<td>3</td>
								<td class="taget q">
								  <a id='btn' href="javascript:;">의약품 보관방법은?
								    <span class="glyphicon glyphicon-menu-down pull-right" ></span>
								  </a>
								</td>
							</tr>
							<tr class="notice3 article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">의약품은 적절하게 보관하지 않으면 파손되거나 사용(유효)기간이 줄어들 수 있습니다. 외관의 
								변화가 없더라도 약효가 줄어들 수 있으므로 보관에 유의해야 합니다. 의약품의 첨부문서에 표기된 보관방법을 지켜야 합니다. 
								의약품 겉포장(용기,포장)이 찢어지거나 손상되지 않았는지 확인합니다. 보관한 의약품을 사용하려고 할 때 사용설명서에 쓰여있는 성상과 다를 
								경우 변질가능성이 있으므로 전문가 상담 후 이용합니다. [정제(알약)] 원래의 의약품 용기에 넣어 보관하고 직사광선을 피해 건조하고 서늘한 
								곳에 보관합니다. [산제(가루약] 대부분의 가루약은 병원이나 약국에서 조제된 것으로 정제보다 사용(유효)기간이 짧습니다. 습기에 약하므로 
								건조한 곳에 보관하도록 특별히 주의합니다. 냉장,냉동고 및 욕실선반 등은 피해야 합니다. 색깔이 변했거나 굳었다면 가까운 약국의 
								폐의약품수거함에 넣어야 합니다. [액제(시럽제)] 특별한 지시사항이 없으면 실온에 보관합니다. 복용전 반드시 색깔이나 냄새를 확인합니다. 
								항생제 시럽중에서는 냉장보관이 필요한 것이 있으므로 주의합니다. [좌약] 개봉한 즉시 사용합니다. 좌약은 체온에서 녹기 쉽도록 만들어졌기 
								때문에 직사광선이나 온도가 높은 곳을 피하여 서늘한 곳에 보관합니다. 약이 녹은 경우에는 냉장고에 넣었다가 사용하면 됩니다. 
								[점안,점이제(안약,귀약)] 타인과 함께 사용하지 않도록 하며, 혼자 사용하는 경우라도 병, 튜브 등 끝이 눈 또는 귀에 닿지 않도록 합니다. 
								[기타(흡입제,주사제)] 천식에 사용하는 여러 흡입제는 직사광선, 열, 습기있는곳(냉장고 등)을 피해 실온에 보관해야 합니다. 
								출처 : 식품의약품안전처 (http://drug.mfds.go.kr)</td>
							</tr>

							<tr class="article" id="notice2">
								<td>2</td>
								<td class="taget q">
								  <a id='btn' href="javascript:;">약을 부수거나 가루로 만들어 복용해도 되나요?
								    <span class="glyphicon glyphicon-menu-down pull-right" ></span>
								  </a>
								</td>
							</tr>
							<tr class="notice2 article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">[일반제제] 알약으로 만들어진 약물은 그대로 복용해야 가장 좋은 효과를 나타낼 수 있습니다. 
								  부득이하게 가루로 만들어서 복용해야 하는 경우는 가루약으로 가능한 의약품인지 확인합니다. [서방정제제] 서방정제제(ER)는 유효성분의 방출속도, 
								  방출시간, 방출부위를 조절하는 제제로, 체내에서 의약품의 유효성분이 천천히 지속적으로 방출되도록 특수하게 만들어진 약입니다. 이를 가루로 만들어 
								  복용하면 갑자기 너무 많은 유효성분이 방출되어 과량을 복용한 것과 같은 위험을 초래할 수 있습니다. 부수거나 가루로 복용해선 안됩니다.  
								  [장용정제제] 장용정제제는 장에서 흡수되도록 위산으로부터 보호하는 제제로서 부수거나 가루로 복용해서는 안됩니다. 
								  출처 : 식품의약품안전처 (http://drug.mfds.go.kr)</td>
							</tr>

							<tr class="article" id="notice1">
								<td>1</td>
								<td class="taget q">
								  <a id='btn' href="javascript:;">약을 우유, 쥬스와 먹어도 되나요?
								    <span class="glyphicon glyphicon-menu-down pull-right" ></span>
								  </a>
								</td>
							</tr>
							<tr class="notice1 article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">먹는 약은 물과 함께 드시는 것이 가장 좋습니다. 약은 쥬스와 함께 복용하면, 
								  쥬스의 산성성질로 인해 원하지 않는 효과가 나타날 수 있는 약물들이 있습니다. 제산제로 흔히 사용되는 수산화 
								  알루미늄겔(Aluminum Hydroxide Gel)을 오렌지 쥬스와 함께 복용하면 제산제의 알루미늄 성분이 체내로 흡수될 
								  수 있고 위 산도도 높이므로 함께 복용하지 않는 것이 좋습니다. 오렌지 쥬스는 산성이므로 산에 약한 항생제들은 파괴되어 
								  흡수가 저하되므로 함께 복용하지 않는 것이 좋습니다. 해당되는 항생제는 아목시실린(Amoxicillin), 
								  클록사실린(Cloxacillin)이 있습니다. 수산화 알루미늄겔, 아목시실린, 클록사실린 항생제를 복용할 때에는 
								  적어도 약 복용 후 2시간 이후에 오렌지 쥬스를 마시는 것이 좋습니다. 자몽 쥬스는 간 대사효소인 CYP3A4의 활성을 
								  억제하는 것으로 알려져 있으므로 일부 고혈압치료제 등과 같은 의약품과 함께 복용시 이상반응의 위험성이 커집니다. 
								  쥬스, 자몽쥬스는 적어도 약 복용 후 2시간이 지난 후에 마시는 것이 좋습니다. 우유나 유제품을 다음과 같은 약물들과 
								  함께 복용시 약의 성분이 체내로 흡수되지 않고 배출되어 약효가 떨어집니다. 적어도 약 복용 후 2시간 이후에 우유나 
								  유제품을 마시는 것이 좋습니다. 우유나 유제품 중 칼슘성분은 일부 항생제나 항진균제(테트라사이클린, 시프로플록사신 등)
								  등의 성분과 결합하여 체내흡수를 방해합니다. 배변활동을 촉진시키는 완화제(비사코딜 등)는 장에서 작용을 해야 하는데, 
								  우유나 유제품을 마시면 위의 산성도가 높아져, 위에서 작용하게 되므로 함께 복용하지 않는 것이 좋습니다. 위장장애가 심한 
								  염화칼슘정제도 위에서 작용하지 않고 장에서 작용하는 것이 좋습니다. 우유나 유제품을 마시면 산성도가 높아진 위에서 작용하게 
								  되어 위장장애가 발생할 수 있습니다. 출처 : 식품의약품안전처 (http://drug.mfds.go.kr)</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>

			</article>
		</div>
	</div>

	<script>
		// 제이쿼리 다중 열닫
		$('[id^="notice"]').on('click',function(e){ // [id^="notice"] 해당 아이디  검색후 실행
			  if( $('.'+ this.id).css("display")=="none"){ 
			      $('.'+ this.id).show(); // style="display: none;" 이면 보여지고
			  }else{
			      $('.'+ this.id).hide(); // 선택자 ID 와 같은 클래스를 찾아 보여짐
			  }
			});
		
		
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</body>
</html>