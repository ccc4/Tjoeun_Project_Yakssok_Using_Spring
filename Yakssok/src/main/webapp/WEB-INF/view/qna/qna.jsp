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
			<jsp:include page="/WEB-INF/resources/init/login.jsp" />

			<!-- article 시작 -->
			<article style="margin-right: 20%">
				<div style="margin-bottom: 10px">
					<a class="h3" href="${pageContext.request.contextPath }/qna/">자주묻는 질문</a>
				</div>		
			
            <div style="margin-bottom: 10px" class="pull-right">
				<form class="form-inline">	
					<select class="form-control">
						<option>제목</option>
						<option>글쓴이</option>
						<option>내용</option>
						<option>제목+내용</option>
					</select>
					<input class="form-control" type="text" placeholder="검색 구현 중...">
					<button class="btn btn-default" type="submit">검색</button>
				</form>	
			</div>
			<div class="pull-left">등록 수 총 <em>11</em>건</div>
	
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

							<tr class="article" id="notice11">
								<td>11</td>
								<td class="taget q">약은 언제 먹나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice11 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 먹지요</td>
							</tr>

							<tr class="article" id="notice10">
								<td>10</td>
								<td class="taget q">밥은 언제 먹나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice10 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 먹지요</td>
							</tr>

							<tr class="article" id="notice9">
								<td>9</td>
								<td class="taget q">물은 언제 먹나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice9 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 먹지요</td>
							</tr>

							<tr class="article" id="notice8">
								<td>8</td>
								<td class="taget q">커피는 언제 먹나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice8 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 먹지요</td>
							</tr>

							<tr class="article" id="notice7">
								<td>7</td>
								<td class="taget q">음료수는 언제 먹나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice7 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 먹지요</td>
							</tr>

							<tr class="article" id="notice6">
								<td>6</td>
								<td class="taget q">외식은 언제 하나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice6 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 하지요</td>
							</tr>

							<tr class="article" id="notice5">
								<td>5</td>
								<td class="taget q">집은 언제 가나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice5 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 가지요</td>
							</tr>

							<tr class="article" id="notice4">
								<td>4</td>
								<td class="taget q">완성은 언제 되나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice4 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 하지요</td>
							</tr>

							<tr class="article" id="notice3">
								<td>3</td>
								<td class="taget q">요리는 언제 하나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice3 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 하지요</td>
							</tr>

							<tr class="article" id="notice2">
								<td>2</td>
								<td class="taget q">간식은 언제 먹나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice2 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">내맘대로 먹지요</td>
							</tr>

							<tr class="article" id="notice1">
								<td>1</td>
								<td class="taget q">언제 안먹나요?
								<span class="glyphicon glyphicon-menu-down pull-right" ></span>
								</td>
							</tr>
							<tr class="notice1 noticeview article" style="display: none;">
								<!-- ID 값과 같이 class 를 지정해고 같은 인텍스 값을 가진다 -->
								<td colspan="2" class="a">나도 몰라요</td>
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