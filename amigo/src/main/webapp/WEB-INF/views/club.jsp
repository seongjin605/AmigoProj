<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	#container{
		margin:0;
		padding:0;
		font-family: 'Jeju Gothic', serif;
	}
	
	#main_img{ 
		background-image: url(images/club_form.jpg);
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat; 
		width:100%;
		height:300px; 
	}
	
	#aside{
		float:left;
		height:400px;
		background:#eee;
	}
	
	#aside > ul{
		list-style: none;	
		padding:0;
	}
	
	#aside > ul > li{
		margin-bottom:15px;
	}
	
	#content{
		background:green;
	}
	
	#footer{
		clear:both;
		background:purple;
	}

</style>
</head>
<body>
<div id="container">
	<div id="header">
		<div id="main_img"></div>
	</div>
		
	<div id="aside">
		<ul>
			<li>자유게시판</li>
			<li>멤버리스트보기</li>
		</ul>
	</div>
	
	<div id="content">
		<p>컨텐츠</p>
	</div>

	
	<div id="footer">
		<p>footer</p>
	</div>
</div>
</body>
</html>