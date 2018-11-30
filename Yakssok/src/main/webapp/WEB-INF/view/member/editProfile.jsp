<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/resources/init/init.jsp"/>
<style type="text/css">
#checkNickMsg {
	font-size: 12px;
}

</style>
</head>
<body>

<c:if test="${empty loginMember }">
	<script type="text/javascript">
		alert("잘못된 접근입니다.");
		location.href="${pageContext.request.contextPath }/";
	</script>
</c:if>

<div class="container">
	<jsp:include page="/WEB-INF/resources/init/header.jsp"/>
	
	<div style="width: 100%; text-align: center">
	<div style="display: inline-block; text-align: left; width: 250px">
	
		<h3>회원정보 수정</h3>
		<form action="${pageContext.request.contextPath}/member/editProfile" method="post">
		<diV style="width:480px;">
			<table class="table">
				<tr>
					<td style="width: 107px;">아이디</td>
					<td style="width: 203px;"><input type="text" name ="id" value="${loginMember.id}" readonly></td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td ><input type="text" name ="nickname" id = "checkab" maxlength="50" onkeyup="checkNick()" value="${loginMember.nickname }"><span id="checkNickMsg"></span></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${loginMember.name }"></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" value="${loginMember.age}" min="1" max="150"></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td><input type="tel" name="tel" maxlength="11" value="${loginMember.tel }" placeholder="하이픈(-)제외 "></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td ><input type="email" name="email" value="${loginMember.email }"></td>
				</tr>
				<tr>
					<td>우편번호</td>
						<td>
							<input type="text" id="sample6_postcode"  placeholder="우편번호" name="address" value="${address0 }">
							<input class="btn btn-default" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
						</td>
					</tr>
					<tr>
						<td>주소명</td>
						<td >
							<input type="text" id="sample6_address" value = "${address1}" placeholder="주소" name="address"><br>
						</td>
					</tr>
					<tr>
						<td>상세주소</td>
						<td >
							<c:if test="${!empty address2 }">
								<input type="text" id="sample6_address2" placeholder="상세주소" name="address" value="${address2 }">
							</c:if>
							<c:if test="${empty address2 }">
								<input type="text" id="sample6_address2" placeholder="상세주소" name="address">
							</c:if>
						</td>
					</tr>
			</table>
			<button class="btn btn-default pull-right" type="submit" onclick="location.href='history.back()'">뒤로</button>
			<button class="btn btn-default pull-right modify" type="submit">수정</button>
			<button class="btn btn-default pull-right" type="button" onclick="location.href='${pageContext.request.contextPath}/member/delete'">회원탈퇴</button>
		</diV>
		</form>
		</div>
		
	</div>
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
    
   
    
 var nickCheck = 0;

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

					$("#checkab").css("background-color", "#FFCECE");
					nickCheck = 0;
				} else if (result == '0') {
					$("#checkab").css("background-color", "#B0F6AC");
					nickCheck = 1;
					if (nickCheck == 1) {
						$(".modify").prop("disabled", false);
						$(".modify").css("background-color", "#4CAF50");
					}
					$("#checkNickMsg").text("사용가능한 닉네임입니다.").css("color", "green");
				} else if (result == '1') {
					$(".modify").prop("disabled", true);
					$(".modify").css("background-color", "#aaaaaa");
					$("#checkab").css("background-color", "#FFCECE");
					nickCheck = 0;
					$("#checkNickMsg").text("중복된 닉네임입니다.").css("color", "red");
				}

			}
		});
	}
	

	
</script>
</body>
</html>