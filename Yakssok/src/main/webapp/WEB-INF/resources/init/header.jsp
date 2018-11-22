<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style type="text/css">
	.navbar .navbar-nav {
		display: inline-block;
		float: none;
	}
	 
	.navbar .navbar-collapse {
		text-align: center;
	}
</style>
    
    
    
<header style="text-align: center">
	<a href="${pageContext.request.contextPath }/"><img src="${pageContext.request.contextPath }/resources/init/img/title.png" width="250" height="150"/></a>
</header>

<nav class="navbar navbar-inverse" style="margin-bottom: 40px">
  <div class="container-fluid">

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="${pageContext.request.contextPath }/"><font color="white">메인</font></a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><font color="white">약품정보</font>&nbsp;<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="${pageContext.request.contextPath }/pill/list">의약품</a></li>
            <li><a href="#">영양제</a></li>
            <li class="divider"></li>
            <li><a href="${pageContext.request.contextPath }/pill/add">의약품 등록</a></li>
            
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><font color="white">커뮤니티</font>&nbsp;<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">공지사항</a></li>
            <li><a href="#">팁&정보공유</a></li>
            <li><a href="#">자유게시판</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><font color="white">고객센터</font>&nbsp;<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">관리자 문의</a></li>
            <li><a href="#">약품 정보 등록 건의</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><font color="cyan">약국찾기</font>&nbsp;<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="${pageContext.request.contextPath }/drugstore/nearby">내 주변 약국</a></li>
            <li class="divider"></li>
            <li><a href="${pageContext.request.contextPath }/drugstore/allDay">연중무휴</a></li>
            <li><a href="${pageContext.request.contextPath }/drugstore/night">심야약국</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><font color="red">긴급상황</font>&nbsp;<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">편의점 상비약</a></li>
            <li><a href="#">응급처치</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>