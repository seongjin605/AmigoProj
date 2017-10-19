<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

#content {
	margin: 80px auto 100px auto;
	min-width: 960px;
}

#content>.welcome {
	margin-top: 100px;
}

#content>.welcome>h2 {
	font-family: 'Jeju Gothic', serif;
	font-weight: bold;
	font-size: 30px;
	color: rgba(70, 60, 70, .8);
	text-align: center;
}

.link_group {
	margin-top: 20px;
	margin-bottom: 100px;
	text-align: center;
}

.link_group>.link {
	padding-top: 10px;
	display: inline-block;
	width: 120px;
	height: 40px;
	font-weight: bold;
	text-decoration: none;
	color: white;
	border: none;
	border-radius: 10px;
	background-color: rgba(0, 0, 0, .8);
}

.link_group>.link:hover {
	cursor: pointer;
}

#agree_link:hover {
	background-color: rgba(0, 0, 0, .3);
}

#main-img {
	background-image: url(images/welcome.jpg);
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
	width: 100%;
	height: 400px;
}

#footer {
	top: 0;
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
				<h2>회원가입을 축하드립니다.</h2>
			</div>
			<img src="images/success.png">
			
			<div class="link_group">
				<a href="login" class="link" id="agree_link">로그인</a>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>