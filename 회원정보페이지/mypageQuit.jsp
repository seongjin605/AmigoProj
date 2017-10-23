<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://formden.com/static/cdn/bootstrap-iso.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<style>
#sidebar{
margin-top:200px;
}
</style>
<title>자유 게시판</title>
</head>
<body>
	<jsp:include page="topMenu.jsp" />
	<div class="bootstrap-iso" id="sidebar">
		<div class="container">
			<h3>MyPage</h3>
			<div class="row">
				<div class="col-md-9">
					<p>회원탈퇴</p>
				</div>
				<div class="col-md-3">
					<ul class="nav nav-pills nav-stacked">
						<li><a href="mypageHome">Home</a></li>
						<li><a href="mypageUpdate">회원정보 수정</a></li>
						<li><a href="mypageList">내가 가입한 동호회</a></li>
						<li><a href="mypageQuit">회원탈퇴</a></li>
					</ul>
				</div>
				<div class="clearfix visible-lg"></div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>