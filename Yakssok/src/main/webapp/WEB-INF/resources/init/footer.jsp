<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style type="text/css">
	footer{
		display: flex;
		border-top: 1px solid black;
		width: 100%;
	    margin-top: 30px;
	    padding: 20px 10px;
	}
	
	.footer_img {
		margin-right: 20px;
	}
	
	.footer_contents p{
		padding: 0;
		margin: 0;
	}
</style>
    
<footer>
	<div class="footer_img">
		<img alt="" src="${pageContext.request.contextPath }/resources/img/title_footer.png" width="130" height="60">
	</div>
	<div class="footer_contents">
		<p>
			서울특별시 종로구 더조은 아카데미 4층 402호 약쏙 ㅣ 
			<strong>TEL</strong> 02-1234-5678 ㅣ 
			<strong>FAX</strong> 02-1234-5678
		</p>
		<p>
			©Copyright 2019 Yakssok. All Rights Reserved.
		</p>
		
	</div>
</footer>