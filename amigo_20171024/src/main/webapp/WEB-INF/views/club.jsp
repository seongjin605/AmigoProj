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
		padding-top:100px;
		background-image: url(images/club_form.jpg);
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat; 
		width:100%;
		height:200px; 
	}
	
	#aside{
		position: relative;
		left:0;
		top:0;
		margin: 20px 30px 0 15px;
		float:left;
		height:400px;
		background:#eee;
		padding:20px;
		border:1px solid rgba(0,0,0,.2);
		border-radius: 6px;
	}
	
	#aside > ul{
		list-style: none;	
		padding:0;
	}
	
	#aside > ul > li{
		margin-bottom:15px;
		border-bottom: 1px solid rgba(0,0,0,.3);
		padding:20px 30px 20px 0;
		
	}
	
	#aside > ul > li:NTH-CHILD(1){
		border-top: 1px solid rgba(0,0,0,.3);
	}
	
	#aside > ul > li > span{
		display: inline-block;
		font-weight: bold;
		margin-bottom: 16px;
	}

	ul.sub_ul{
		margin-left:5px;
	}
	
	ul.sub_ul li{
		margin-bottom: 10px;
	}
	
	ul.sub_ul  li a{
		color:rgba(0,0,0,.4);
	}
	
	ul.sub_ul  li a:hover{
		color:rgba(0,0,0,.8);
	}
	
	ul.sub_ul .fa{
		margin-right: 3px;
		color: rgba(50,50,50,.8);
		font-size: 13px;
	}
	
	#content{
		margin-top:20px;
		float:right;
	}
	
	#footer{
		clear:both;
		background:purple;
	}

</style>
</head>
<body>
<div id="container">
	<jsp:include page="topMenu.jsp"></jsp:include> 
	<div id="main_img"></div>
		
	<div id="aside">
		<ul>
			<li><span>자유게시판</span>
				<ul class="sub_ul">
					<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>전체글보기</a></li>
					<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>자기소개</a></li>
					<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>Q&A</a></li>
					<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>등업</a></li>
				</ul>
			</li>
			<li><span><a href="#">멤버리스트보기</a></span></li>
		</ul>
	</div>
	
	<div id="content">
		<%@ include file="club_board.jsp"%>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<style>
		#footer{
			top:0;
			clear:both;
		}
	</style>
</div>
</body>
</html>