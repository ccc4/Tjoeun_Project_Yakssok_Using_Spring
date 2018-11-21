<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
#checkIdMsg {
	font-size: 12px;
}

#checkNickMsg {
	font-size: 12px;
}

#checkPwMsg {
	font-size: 12px;
}
</style>
</head>
<body>


	<h1>회원가입</h1>
	<form action="${pageContext.request.contextPath }/member/join"
		id="JoinForm" method="POST" onsubmit="return check()">


		<div>
			아이디 <input type="text" name="id" id="checkaa" maxlength="50"
				oninput="checkId()" placeholder="아이디">
			<span id="checkIdMsg"></span>
		</div>

		<div>
			비밀번호 <input type="password" name="pw" oninput="checkPw()"
				placeholder="비밀번호" required class="pass">
		</div>

		<div>
			비밀번호확인 <input type="password" name="pwcheck" id="repwd"
				oninput="checkPw()" placeholder="비밀번호확인" required class="pass">
			<span id="checkPwMsg"></span>
		</div>

		<div>
			닉네임 <input type="text" name="nickname" id="checkab" maxlength="50"
				oninput="checkNick()" placeholder="닉네임">
			<span id="checkNickMsg"></span>
		</div>

		<div>
			이름 <input type="text" name="name" placeholder="이름">
		</div>

		<div>
			나이 <input type="number" name="age" placeholder="나이">
		</div>

		<div>
			성별 <input type="radio" name="gender" value="1"> 남성 <input
				type="radio" name="gender" value="0">여성
		</div>

		<div>
			<!-- 사이즈 미지정시 에러발생해서 수정함  -->
			연락처 <input type="text" name="tel" maxlength="11"  placeholder="하이픈(-)제외">
		</div>

		<div>
			이메일 <input type="text" name="email" placeholder="이메일">
		</div>

<!-- 		<table >
			<colgroup>
				<col style="width:20%"><col>
			</colgroup>
			<tbody>
				<tr>
					<th>우편번호</th>
					<td>
					    <input type="hidden" id="confmKey" name="confmKey" value=""  >
						<input type="text" id="zipNo" name="zipNo" readonly style="width:100px">
						<input type="button"  value="주소검색" onclick="goPopup();">
					</td>
				</tr>
				<tr>
					<th><label>도로명주소</label></th>
					<td><input type="text" id="roadAddrPart1" style="width:85%"></td>
				</tr>
				<tr>
					<th>상세주소</th>
						<td>
							<input type="text" id="addrDetail" style="width:40%" value="">
							<input type="text" id="roadAddrPart2"  style="width:40%" value="">
						</td>
				</tr>
			</tbody>
		</table> -->
		
		
		<!-- (다음) 도로명 주소 api -->
		<input type="text" id="sample6_postcode" placeholder="우편번호" name = "address">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample6_address" placeholder="주소" name = "address"><br>
		<input type="text" id="sample6_address2" placeholder="상세주소" name = "address">
		
		
		<br/>
		<button type="submit" class="signup" disabled="disabled">회원가입</button>
		<button type="reset">다시쓰기</button>

	</form>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script>
		    function sample6_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var fullAddr = ''; // 최종 주소 변수
		                var extraAddr = ''; // 조합형 주소 변수
		
		                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    fullAddr = data.roadAddress;
		
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    fullAddr = data.jibunAddress;
		                }
		
		                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		                if(data.userSelectedType === 'R'){
		                    //법정동명이 있을 경우 추가한다.
		                    if(data.bname !== ''){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있을 경우 추가한다.
		                    if(data.buildingName !== ''){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
		                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
		                }
		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
		                document.getElementById('sample6_address').value = fullAddr;
		
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById('sample6_address2').focus();
		            }
		        }).open();
		    }
		</script>
	

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		//아이디와 비밀번호, 닉네임이 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
		var idCheck = 0;
		var pwdCheck = 0;
		var nickCheck = 0;
		//아이디 체크하여 가입버튼 비활성화, 중복확인.
		function checkId() {
			var inputed = $('#checkaa').val();

			$.ajax({
				type : 'POST',
				url : "${pageContext.request.contextPath }/member/checkId/"
						+ inputed,
				data : {
					inputed : inputed
				},
				success : function(result) {

					if (inputed == "" && result == '0') {             
						$(".signup").prop("disabled", true);
						$(".signup").css("background-color", "#aaaaaa");
						$("#checkaa").css("background-color", "#FFCECE");
						idCheck = 0;
						
					} else if (result == '0') {                            // result 0값 - ID 사용가능
						$("#checkaa").css("background-color", "#B0F6AC");
						idCheck = 1;
						if (idCheck == 1 && pwdCheck == 1 && nickCheck == 1) {  //조건 만족시 회원가입버튼 강제 활성화
							$(".signup").prop("disabled", false);
							$(".signup").css("background-color", "#4CAF50");
							signup();							
						}
						$("#checkIdMsg").text("사용가능한 아이디입니다.").css("color", "green");
					} else if (result == '1') {                                  //result 1값 - ID 사용불가
						$(".signup").prop("disabled", true);
						$(".signup").css("background-color", "#aaaaaa");
						$("#checkaa").css("background-color", "#FFCECE"); 
						idCheck = 0;
						$("#checkIdMsg").text("중복된 아이디입니다.").css("color", "red");
					}

				}
			});
		}

		//닉네임 체크하여 가입버튼 활성화, 중복확인
		function checkNick() {
			var inputed = $('#checkab').val();

			$.ajax({
				type : 'POST',
				url : "${pageContext.request.contextPath }/member/checkNick/"
						+ inputed,
				data : {
					inputed : inputed
				},
				success : function(result) {

					if (inputed == "" && result == '0') {
						$(".signup").prop("disabled", true);
						$(".signup").css("background-color", "#aaaaaa");
						$("#checkab").css("background-color", "#FFCECE");
						nickCheck = 0;
					} else if (result == '0') {
						$("#checkab").css("background-color", "#B0F6AC");
						nickCheck = 1;
						if (idCheck == 1 && pwdCheck == 1 && nickCheck == 1) {
							$(".signup").prop("disabled", false);
							$(".signup").css("background-color", "#4CAF50");
							signup();
						}
						$("#checkNickMsg").text("사용가능한 닉네임입니다.").css("color", "green");
					} else if (result == '1') {
						$(".signup").prop("disabled", true);
						$(".signup").css("background-color", "#aaaaaa");
						$("#checkab").css("background-color", "#FFCECE");
						nickCheck = 0;
						$("#checkNickMsg").text("중복된 닉네임입니다.").css("color", "red");
					}

				}
			});
		}
		//재입력 비밀번호 체크하여 가입버튼 비활성화 또는 맞지않음을 알림.
		function checkPw() {
			var f1 = document.forms[0];
			var inputed = $('.pass').val();
			var reinputed = $('#repwd').val();
			if (reinputed == ""
					&& (inputed != reinputed || inputed == reinputed)) {
				$(".signup").prop("disabled", true);
				$(".signup").css("background-color", "#aaaaaa");
				$("#repwd").css("background-color", "#FFCECE");

			} else if (inputed == reinputed) {
				$("#repwd").css("background-color", "#B0F6AC");
				pwdCheck = 1;
				if (idCheck == 1 && pwdCheck == 1 && nickCheck == 1) {
					$(".signup").prop("disabled", false);
					$(".signup").css("background-color", "#4CAF50");
					signup();
				}
				$("#checkPwMsg").text("비밀번호가 일치합니다.").css("color", "green");
			} else if (inputed != reinputed) {
				pwdCheck = 0;
				$(".signup").prop("disabled", true);
				$(".signup").css("background-color", "#aaaaaa");
				$("#repwd").css("background-color", "#FFCECE");
				$("#checkPwMsg").text("비밀번호가 일치하지 않습니다").css("color", "red");

			}
		}

		function signup() {
			var name = $("#name").val();
			var email = $("#email").val();
			var age = $("#age").val();
			var gender = $("#gender").val();
			var tel = $("#tel").val();
			var address = $("#address").val();
			if (nickname == "" || email == "" || age == "" || gender == ""
					|| tel == "" || address == "") {
				$(".signup").prop("disabled", true);
				$(".signup").css("background-color", "#aaaaaa");
			} else {
				$(".signup").prop("disabled", false);

			}
		}
	</script>
</body>
</html>