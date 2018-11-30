<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/faq2.css" />
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
			<jsp:include page="/WEB-INF/resources/init/login.jsp" />

			<!-- article 시작 -->
			<article style="margin-right: 20%">
				<div style="margin-bottom: 10px">
					<a class="h3" href="${pageContext.request.contextPath }/qna/">자주묻는
						질문</a>
				</div>

				<div class="faq">
					<div class="faqBody">
						<table class="table table-hover">
							<colgroup>
								<col style="width: 8%" />
								<col />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">NO</th>
									<th scope="col">질문/답변</th>
								</tr>
							</thead>

							<tr class="article" id="notice">
								<td>12</td>
								<td class="taget q">약은 언제 먹나요?</td>
							</tr>
							<tr class="notice noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a"><a>내맘대로 먹지요</a></td>
							</tr>

							<tr class="article" id="notice1">
								<td>13</td>
								<td class="taget q">약은 언제 먹나요?</td>
							</tr>
							<tr class="notice1 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a"><a>내맘대로 먹지요</a></td>
							</tr>

							<tr class="article" id="notice1">
								<td>13</td>
								<td class="taget q">약은 언제 먹나요?</td>
							</tr>
							<tr class="notice1 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a"><a>내맘대로 먹지요</a></td>
							</tr>

							<tr class="article" id="notice1">
								<td>13</td>
								<td class="taget q">약은 언제 먹나요?</td>
							</tr>
							<tr class="notice1 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a"><a>내맘대로 먹지요</a></td>
							</tr>

							<tr class="article" id="notice1">
								<td>13</td>
								<td class="taget q">약은 언제 먹나요?</td>
							</tr>
							<tr class="notice1 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a"><a>내맘대로 먹지요</a></td>
							</tr>

							<tr class="article" id="notice1">
								<td>13</td>
								<td class="taget q">약은 언제 먹나요?</td>
							</tr>
							<tr class="notice1 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a"><a>내맘대로 먹지요</a></td>
							</tr>



						</table>
					</div>
				</div>

			</article>
		</div>
	</div>



	<script>
		// 제이쿼리 다중 열닫
		$('[id^="notice"]').on('click', function(e) { // [id^="notice"] 해당 아이디  검색후 실행
			$('.noticeview').hide(); // 뷰 테이블 안보이게함 

			$('.' + this.id).show(); // 선택자 ID 와 같은 클래스를 찾아 보여짐

		});
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</body>
</html>