<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body{
		background-color: #eee;
	}
	
	#content{
		padding-top:200px;
		padding-bottom:100px;
		width:100%;
		height:100%;
		margin: 0 auto;
		text-align: center;
	}
	
	#login_form{
		width: 550px;
		text-align: center;
		margin: 0 auto;
		height: 100%;
		padding-top: 20px;
		box-shadow:2px 2px 1px rgba(0,0,0,.7),-2px -2px 1px rgba(40,40,40,.5);
		background-color: white;
	}
	
	#login_form > h2{
		font-weight: 800;
		font-size: 45px;
		color:#b49759;
		margin-bottom:30px;
		letter-spacing: 2px;
		border-bottom: 1px solid rgba(50,50,50,.2);
	}
	
 	#login_form > .login_row{
 		margin-bottom: 20px;
 	}
 	
	#login_form > .login_row >  label{
		font-family: 'Jeju Gothic', serif;
		display: block;
		text-align: left;
		font-size: 20px;
		font-weight: 400;
		width: 100px;
		padding-left: 30px;
		padding-bottom: 50px;
	}
		
	#login_form > .login_row > input{
		width:90%;
		height:35px;
		outline:none;
		border:none;
		border-bottom: 1px solid rgba(0,0,0,.2);
	}

	.submit_group{
		margin-top:20px;
		margin-bottom:40px;
		text-align: center;
	}
	 
	.submit_group > input[type="submit"]{
		margin:10px auto;
		display: block;
		width: 90%;
		height: 70px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		border: none;
		background-color: rgba(0,0,0,.8);
	}
	
	input[type='submit']:hover{
		cursor: pointer;
	}
	
	#joinBtn{
		color: black;
		background-color: rgba(250,250,250,.8);
		border:1px solid black;
	}
	
	#img_main{
 		background-image: url(images/loginMain.jpg);
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat;
		width:100%;
		height:100%;
	}
	
	.link_group{
		width: 100%;
		height: 100%;
		margin-bottom: 40px;
	}
	
	.link_group > a{
		margin: 10px;
		display: inline-block;
		text-decoration: none;
		color: rgba(0,0,0,.7);
	}
	
	#search_id{
		padding-right:30px;
		border-right: 1px solid rgba(0,0,0,.4);
	}
	
	input:-webkit-autofill { -webkit-box-shadow: 0 0 0 1000px white inset!important;}
	input:-webkit-autofill { transition: background-color 5000s ease-in-out 0s;}
</style>
</head>
<body>	
	<div id="container">
		<jsp:include page="topMenu.jsp"></jsp:include>
		<div id="img_main">	
			<div id="content">
				<form method="post" action=""  id="login_form">
					<h2>LOGIN</h2>
					<div id="id_div" class="login_row">
						<label for="mid">아이디 </label>
						<input type="text" id="mid">
					</div>
					
					<div id="pwd_div" class="login_row">
						<label for="pwd">패스워드 </label>
						<input type="password" id="pwd">
					</div>
					
					<div class="submit_group">
						<input type="submit" id="loginBtn" value="로그인">
						<input type="submit" id="joinBtn" value="회원가입">
					</div>
					
					<div class="link_group">
						<a href="#" id="search_id">아이디 찾기</a>
						<a href="#" id="search_pwd">비밀번호 찾기</a>
					</div>
				</form>
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