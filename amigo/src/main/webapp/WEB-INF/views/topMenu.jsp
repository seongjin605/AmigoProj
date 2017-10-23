<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/top-menu.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/reset.css" />
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
	<link rel="stylesheet"
	href="https://formden.com/static/cdn/bootstrap-iso.css">
<div class="nav_wrapper">
	<div class="spinner-master">
		<input type="checkbox" id="spinner-form" /> <label for="spinner-form"
			class="spinner-spin">
			<div class="spinner diagonal part-1"></div>
			<div class="spinner horizontal"></div>
			<div class="spinner diagonal part-2"></div>
		</label>
	</div>

	<!-- <a href="index" title="logo" id="logo"><img src="images/Logo5.png" width="120" height="80"></a> -->
	<a href="index" title="logo" id="logo">
		<h2>amiGo</h2>
	</a>
	<div class="sub-logo">
		<a href="#" class="btn" id="search"><i class="fa fa-search"
			aria-hidden="true"></i></a>
		<c:choose>
			<c:when test="${empty sessionScope.id && empty sessionScope.pwd}">
				<a href="login" class="btn" id="log"><i class="fa fa-user-o"
					aria-hidden="true"></i></a>
			</c:when>
			<c:otherwise>
				<a href="logout" class="btn" id="logout"><i
					class="fa fa-user-times" aria-hidden="true"></i></a>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${empty sessionScope.id && empty sessionScope.pwd}">
				<a href="join_first" class="btn" id="join"><i class="fa fa-user-plus"
					aria-hidden="true"></i></a>
			</c:when>
			<c:otherwise>
				<a href="#myModal" class="btn" id="mypage"><i
					class="fa fa-address-card" aria-hidden="true" data-toggle="modal" data-target="#myModal"></i></a>
			</c:otherwise>
		</c:choose>
	</div>

	<nav id="menu" class="menu">
		<ul class="dropdown">
			<li><a href="#Link" title="Link">동호회</a>
				<ul>
					<li><a href="club_make" title="Link">동호회 창설</a>
					<li><a href="clubMain" title="Link">동호회 보기</a>
				</ul></li>

			<li><a href="mainBoard" title="Link">게시판</a></li>

			<li><a href="#Link" title="Link">고객센터</a>
				<ul>
					<li><a href="#Link" title="Link">Q&A</a></li>
					<li><a href="#Link" title="Link">1:1질문</a></li>
				</ul></li>
		</ul>
	</nav>

	<form class="search_box" id="search_box" action="/search/">
		<input name="search_criteria" placeholder="Search here" value=""
			type="text"> <input class="search_icon" value="Search"
			type="submit">
	</form>
</div>
<script src="script/script.js"></script>

<div class="bootstrap-iso">
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px;">
					<button type="button" class="close" data-dismiss="modal">
					<i class="fa fa-times fa-lg" aria-hidden="true"></i>
					</button>
					<h4>
						<i class="fa fa-user-circle fa-lg" aria-hidden="true"></i>
						 마이 페이지
					</h4>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<form name="form1" role="form" method="post" action="memberInfoCheck" id="memInfo">
						<div class="form-group">
							<label for="psw"><i class="fa fa-lock fa-lg" aria-hidden="true"></i>
							비밀번호</label> <input
								type="password" class="form-control" id="mpwd" name="mpwd"
								placeholder="비밀번호를 입력하세요.">
						</div>
						<button type="submit" id="pwdCheckBtn" class="btn btn-success btn-block btn-sm">
							<i class="fa fa-check-square-o fa-lg" aria-hidden="true"></i>
							 확인
						</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger btn-default"
						data-dismiss="modal">
						<i class="fa fa-times" aria-hidden="true"></i> 취소
					</button>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function(){
    $("#mypage").click(function(){
        $("#myModal").modal();
    });
});

$(document).ready(function(){
	$("#pwdCheckBtn").click(function(){
		$("#memInfo").attr("action","memberInfoCheck").submit();	
	})
})

    $(document).ready(function(){ 
    $("#pwdCheckBtn").click(function(){
        // 태크.val() : 태그에 입력된 값
        // 태크.val("값") : 태그의 값을 변경 
        var userPw = $("#mpwd").val();
        if(userPw == ""){
            alert("패스워드를 입력하세요.");
            $("#mpwd").focus();
            return;
        }
        // 폼 내부의 데이터를 전송할 주소
        document.form1.action="${path}/memberInfoCheck"
        // 제출
        document.form1.submit();
    });
});
</script>

<style>
.modal-header, h4, .close {
	background-color: #337ab7;
	color: white !important;
	text-align: center;
	font-size: 30px;
}

.modal-footer {
	background-color: white;
}
</style>

