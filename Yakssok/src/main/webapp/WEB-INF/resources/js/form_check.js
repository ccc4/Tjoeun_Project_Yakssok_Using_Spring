
function form_check(){
	
	// 타이틀 input태그에 id를 title로 지정하여 적용
    var str = document.getElementById('title');
    // 문자가 공백 또는 띄어쓰기만 되어있는지 검사
    if( str.value == 0){
	  alert("제목을 입력해 주세요.");
	  document.getElementById('title').focus();
	  return false;
	}   
    // 특수 문자 인지 검사
    var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
    if( special_pattern.test(str.value) == true ){
        alert('특수문자는 사용할 수 없습니다.');
        return false;
    }
	
	// 컨텐츠 input태그에 id를 contents로 지정하여 적용
    var str = document.getElementById('contents');
    // 문자가 공백 또는 띄어쓰기만 되어있는지 검사
    if( str.value == 0){
	  alert("내용을 입력해 주세요.");
	  document.getElementById('contents').focus();
	  return false;
	}
    // write.jsp 파일의 폼에 id 지정(wr로 지정)하여 강제 submit 
	  document.getElementById('wr').submit();
	  
}




