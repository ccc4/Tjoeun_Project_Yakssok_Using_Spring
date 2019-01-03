<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style type="text/css">
	._footer {
		display: flex;
		border-top: 1px solid black;
		width: 100%;
	    margin-top: 100px;
	    padding: 10px;
	}
	
	._footer_contents_1 {
		display: flex;
		width: 70%;
	}
	
	
	._footer ._footer_img {
		margin-right: 30px;
	}
	
	._footer ._footer_contents {
	}
	
	._footer ._footer_contents p{
		padding: 0;
		margin: 0;
	}
	
	._footer_contents_2 {
		width: 30%;
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
	}
	
	._footer ._footer_links {
		
	}
</style>
    
<footer class="_footer">
	<div class="_footer_contents_1">
		<div class="_footer_img">
			<img alt="footer_title" src="${pageContext.request.contextPath }/resources/img/footer_title.png" width="130" height="60">
		</div>
		<div class="_footer_contents">
			<p>
				서울특별시 종로구 더조은 아카데미 4층 402호 약쏙
			</p>
			<p>
				<strong>TEL</strong> 02-1234-5678 ㅣ 
				<strong>FAX</strong> 02-1234-5678			
			</p>
			<p>
				©Copyright 2019 Yakssok. All Rights Reserved.
			</p>
		</div>
	
	</div>
	<div class="_footer_contents_2">
		<div class="_footer_links">
			<img alt="github" src="${pageContext.request.contextPath }/resources/img/footer_github.png" width="40" height="40">	
		</div>	
	</div>
</footer>
