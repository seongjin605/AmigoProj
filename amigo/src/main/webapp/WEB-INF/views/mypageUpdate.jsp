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
#sidebar {
	margin-top: 200px;
}
</style>
<title>자유 게시판</title>
<script src="script/checkEffect.js"></script>
</head>
<body>
	<jsp:include page="topMenu.jsp" />
	<div class="bootstrap-iso" id="sidebar">
		<div class="container">
			<h3>MyPage</h3>
			<div class="row">
				<div class="col-md-9">
					<div class="container">
						<form class="form-horizontal" action="">
							<div class="form-group">
								<label class="control-label col-sm-2" for="email">아이디:</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="mid" placeholder=""
										name="email" disabled>

								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd">비밀번호:</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pwd"
										name="mpwd" placeholder="영문,숫자,특수문자혼합하여 8~20자리를 입력">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd">비밀번호
									재확인:</label>
								<div class="col-sm-4">
									<input type="password" class="form-control" id="pwd_check"
										name="pwd_check" placeholder="비밀번호 재확인" name="pwd">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd" id="name">이름:</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="name" name="mname"
										placeholder="이름을 입력하세요.">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="age">나이:</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="age" name="mage"
										placeholder="나이를 입력하세요." name="pwd">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-sm-2" for="gedner_box">성별:</label>
								<div class="col-sm-4">
									<select class="form-control" name="mgender" id="gender_box">
										<option value="M">남자</option>
										<option value="W">여자</option>
									</select>
								</div>
							</div>
							<div class="form-inline">
								<label class="control-label col-sm-2" for="pwd">이메일:</label>
								<div class="col-sm-2">
									<input type="text" id="email_box" name="memail"
										class="form-control" name="first_email"
										placeholder="example@abc.com">
								</div>
								<div class="input-group">
									<div class="input-group-addon">@</div>
								<input type="text" class="form-control" id="inputGroupSuccess3" aria-describedby="inputGroupSuccess3Status">
								</div>
							</div>
							<p>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd">전화번호:</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="tel" name="mtel"
										placeholder="'-'를 제외하고 숫자 그대로 입력하세요." name="pwd">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<input class="btn btn-primary" type="submit" value="수정완료">
								</div>
							</div>
						</form>
					</div>

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