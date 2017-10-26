<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/views/header/topMenu.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="container">
	<a href="${location}/club/clubRead.amg?num="+1></a>
		<div id="img_main">	
			<div id="content">
				<form method="post" id="login_form">
					<h2>회원정보</h2>
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
	</div>
</body>
<%@ include file="/WEB-INF/views/footer/footer.jsp" %>
</html>