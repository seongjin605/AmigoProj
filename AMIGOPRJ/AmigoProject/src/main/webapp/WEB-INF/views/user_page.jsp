<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header/topMenu.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/css/user_page.css'/>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="container">
		<div id="img_main">	
			<div id="content">
				<a href="${location}/club/clubRead.amg?num="+1>출력출력출력</a>
				<form method="post" id="login_form">
					
					<h2>회원정보</h2>	
					<p>*는 수정불가능한 항목입니다.</p>
					<div id="id_div" class="inform_row">
						<label for="mid">*아이디 </label>
						<input type="text" id="mid" value="${member.username}" readonly="readonly">
					</div>
					
					<div id="pwd_div" class="inform_row">
						<label for="pwd">패스워드 </label>
						<input type="password" id="pwd">
					</div>
					
					<div id="name_div" class="inform_row">
						<label for="name">이름 </label>
						<input type="text" id="name" value="${member.mName}">
					</div>
					
					<div id="tel_div" class="inform_row">
						<label for="tel">전화번호 </label>
						<input type="text" id="tel" value="${member.mTel}">
					</div>
					
					<div id="email_div" class="inform_row">
						<label for="email">이메일 </label>
						<input type="text" id="email" value="${member.mEmail}">
					</div>
					
					<div id="gender_div" class="inform_row">
						<label for="gender">*성별 </label>
						<input type="text" id="gender" value="${member.mGender}" readonly="readonly">
					</div>
					
					<div id="date_div" class="inform_row">
						<label for="regdate">*가입일자 </label>
						<input type="text" id="regdate" value="${member.mRegedate}" readonly="readonly">
					</div>
					
					<div id="age_div" class="inform_row">
						<label for="age">*나이 </label>
						<input type="text" id="age" value="${member.mAge}"readonly="readonly">
					</div>
					
					<div class="submit_group">
						<input type="submit" id="loginBtn" value="수정">
						<input type="submit" id="joinBtn" value="취소">
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
			</div>
		</div>
	</div>
<%@ include file="footer/footer.jsp" %>
</body>
<style>
	#footer{
		top:0;
	}
</style>

</html>