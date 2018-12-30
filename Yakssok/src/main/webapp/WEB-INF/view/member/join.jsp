<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
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

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	
	<div style="width: 100%; text-align: center;">
		<div style="display: inline-block; text-align: left; width: 450px">
		
			<h3>회원가입</h3>
			
			<%-- <form action="${pageContext.request.contextPath }/member/join" id="JoinForm" method="POST" onsubmit="return check()">
				<div class="form-group">
					<label for="inputId" class="col-sm-3 control-label">아이디</label>
					<div class="col-sm-9">
						<input class="form-control" id="inputId" type="text" name="id" oninput="checkId()" placeholder="아이디">
						<span id="checkIdMsg"></span>
					</div>
					<label for="inputPw" class="col-sm-3 control-label">비밀번호</label>
					<div class="col-sm-9">
						<input class="form-control" id="inputPw" type="password" name="pw" oninput="checkPw()" required class="pass" placeholder="비밀번호">
					</div>
					<label for="inputPWCheck" class="col-sm-3 control-label">비밀번호</label>
					<div class="col-sm-9">
						<input class="form-control" id="inputPWCheck" type="password" name="pwcheck" id="repwd" oninput="checkPw()" placeholder="비밀번호확인" required class="pass">
						<span id="checkPwMsg"></span>
					</div>
				</div>
				<div class="col-sm-offset-3 col-sm-9" style="margin-top: 10px">
					<button type="submit" class="btn btn-default pull-right">회원가입</button>
				</div>
			</form> --%>
		
		
			<form action="${pageContext.request.contextPath }/member/join" id="JoinForm" method="POST" onsubmit="return check()">
		
				<table class="table">
					<tr>
						<td>아이디</td>
						<td>
							<input type="text" name="id" id="checkaa" maxlength="50" oninput="checkId()" placeholder="아이디">
						</td>
						<td><span id="checkIdMsg"></span></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td>
							<input type="password" name="pw" oninput="checkPw()" placeholder="비밀번호" required class="pass">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>비밀번호확인</td>
						<td>
							<input type="password" name="pwcheck" id="repwd" oninput="checkPw()" placeholder="비밀번호확인" required class="pass">
						</td>
						<td colspan="2"><span id="checkPwMsg"></span></td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td>
							<input type="text" name="nickname" id="checkab" maxlength="50" oninput="checkNick()" placeholder="닉네임">
						</td>
						<td colspan="2"><span id="checkNickMsg"></span></td>
					</tr>
					<tr>
						<td>이름</td>
						<td>
							<input type="text" name="name" placeholder="이름">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>나이</td>
						<td>
							<input type="number" name="age" placeholder="나이" min="1" max="150">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<input type="radio" name="gender" value="1" checked> 남성
							<input type="radio" name="gender" value="0"> 여성
						</td>
						<td></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>
							<input type="text" name="tel" maxlength="11"  placeholder="하이픈(-)제외">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>
							<input type="email" name="email" placeholder="이메일">
						</td>
						<td></td>
					</tr>
					<!-- (다음) 도로명 주소 api -->
					<tr>
						<td>우편번호</td>
						<td>
							<input type="text" id="sample6_postcode" placeholder="우편번호" name="address">
						</td>
						<td>
							<button class="btn btn-default" type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
						</td>
					</tr>
					<tr>
						<td>주소명</td>
						<td colspan="2">
							<input type="text" id="sample6_address" placeholder="주소" name="address"><br>
						</td>
					</tr>
					<tr>
						<td>상세주소</td>
						<td colspan="2">
							<input type="text" id="sample6_address2" placeholder="상세주소" name="address">
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<button class="btn btn-default pull-right signup" type="submit" disabled="disabled">회원가입</button>
						</td>	
					</tr>
					<!-- <button class="btn btn-default" type="reset">다시쓰기</button> -->
				</table>
		
			</form>
			
			
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/resources/init/footer.jsp"/>
</div>






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

    
    //  ------------------------------------------------
    
    
    
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