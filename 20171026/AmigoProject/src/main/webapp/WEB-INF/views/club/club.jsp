<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../header/topMenu.jsp" %>
<link rel="stylesheet" href="<c:url value="/resources/css/club.css" />">
<title>Insert title here</title>
<style>
	#main_img{ 
		padding-top:100px;	  
		background-image: url("<c:url value='../resources/images/club_images/${picName}'/>");
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat; 
		width:100%;
		height:200px; 
	}
</style>
<script>
	$(document).ready(function(){
		if(${success != null})
			alert("${success}");
	})

</script>
</head>
<body>
<div id="container">
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

	<%@ include file="../footer/footer.jsp" %>
</div>
</body>
	<style>
		#footer{
			top:0;
		}
	</style>
</html>