<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	#content{
		margin:80px auto 100px auto;
		min-width:960px;
	}
		
	#main-img{
		background-image: url(images/welcome.jpg);
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat;
		width:100%;
		height:400px;
	}
	#img_success{
		text-align: center;
		margin:0 auto;
		display: block;
		
	}
	#content > .welcome{
		margin-top:100px;
	}
	
	#content > .welcome > h2{
		font-family: 'Jeju Gothic', serif;
		font-weight:bold;
		font-size:30px;
		color:rgba(70,60,70,.8);
		text-align: center;
	}
		
	.link_group{
		margin-top:20px;
		margin-bottom:100px;
		text-align: center;
	}
	 
	.link_group > .link{
		padding-top: 10px;
		display: inline-block;
		width: 120px;
		height: 40px;
		font-weight: bold;
		text-decoration: none;
		color: white;
		border: none;
		border-radius: 10px;
		background-color: rgba(0,0,0,.8);
	}
	.link_group > .link:hover{
		cursor: pointer;
	}
	
	#agree_link:hover{
		background-color: rgba(0,0,0,.3);
	}
	
	#home_link:hover{
		background-color: rgba(0,0,0,.3);
	}

	.sub{
		font-family: 'Jeju Gothic', serif;
		display: block;
		text-align: center;
		
	}
	.important{
		color:red;
	}
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="topMenu.jsp"></jsp:include>
		<div id="content">
		
			<div id="main-img"></div>
			
			<div class="welcome">
				<h2>환영합니다</h2>
				<h2><span class="important">회원가입</span>을 축하드립니다.</h2>
				<span class="sub">고객님의 사이트 이용에 불편하지 않도록 노력하겠습니다.
				로그인 후 바로 서비스 이용이 가능합니다. 아래 버튼을 클릭해주세요</span>
			</div>
			<img src="images/success.png" id="img_success" width="50%" height="50%">
			
			<div class="link_group">
				<a href="login.jsp" class="link" id="agree_link">로그인</a>
				<a href="index.jsp" class="link" id="home_link">홈으로가기</a>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<style>
		#footer{
			top:0;
		}
	</style>
</body>
</html>