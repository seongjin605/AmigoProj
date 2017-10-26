<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header/topMenu.jsp" %>
<link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		$("#loginBtn").click(function(){
			$("#login_form").attr('action','<c:url value="${location}/member/login_process.amg"/>');
		})
		$("#joinBtn").click(function(){
			$("#login_form").attr("method","get").attr("action","${location}/member/joinFirst.amg");
		})
		
		if(${state == 'fail'})
			$("#stateCh").html("로그인정보가 틀립니다.다시입력해주세요");
		else
			$("#stateCh").html("");
		
	})
</script>
<style>
	#img_main{
		background-image: url("<c:url value="/resources/images/loginMain.jpg"/>");
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat;
		width:100%;
		height:100%;
	}
</style>
</head>
<body>	
	<div id="container">
		<div id="img_main">	
			<div id="content">
				<form method="post" id="login_form">
					<h2>LOGIN</h2>
					<span id="stateCh"></span>
					<div id="id_div" class="login_row">
						<label for="mid">아이디 </label>
						<input type="text" id="mId" name="mId">
					</div>
					
					<div id="pwd_div" class="login_row">
						<label for="pwd">패스워드 </label>
						<input type="password" id="mPwd" name="mPwd">
					</div>
					
					<div class="submit_group">
						<input type="submit" id="loginBtn" value="로그인">
						<input type="submit" id="joinBtn" value="회원가입">
					</div>
					
					<div class="link_group">
						<a href="#" id="search_id">아이디 찾기</a>
						<a href="#" id="search_pwd">비밀번호 찾기</a>
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
			</div>
		</div>
		<%@ include file="footer/footer.jsp" %>
	</div>
</body>
<style>
	#footer{
		top:0;
	}
	</style>
</html>