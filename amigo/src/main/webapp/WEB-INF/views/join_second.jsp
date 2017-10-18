<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<script src="script/checkEffect.js"></script> 
<script>
	$(document).ready(function(){
		var pwd_check = false;
		var email_check = false;

		
		/* 아이디체크 */
		$("#id").stop().blur(function(){
			 var id =$(this).val();
			 var $id_parent = $(this).parent();
			 
			 if(id == '')
				 errorCheckEffect("이름을 입력하세요",$id_parent);
			 else
				 successCheckEffect($id_parent);
		})
		/*  -------------------- ---------------------------------------- */
		
		
		/* 비밀번호 체크  */
		$("#pwd").stop().blur(function(){
			pwd_check = pwdCheck(this);
		})
		/*  -------------------- ---------------------------------------- */
		
		
		/* 비밀번호 재확인 체크 */
		$("#pwd_check").stop().blur(function(){
			var $pwCheck_parent =$(this).parent();
			
			if(pwd_check == true){
				var password = $("#pwd_check").val();
				
				if( password!=$("#pwd").val() )
					errorCheckEffect("비밀번호가 다릅니다",$pwCheck_parent);
				else
					successCheckEffect($pwCheck_parent);
			}
			else
				$("#pwd").focus();
		})
		/*  -------------------- ---------------------------------------- */
		
		
		/* 이름 체크  */
		$("#name").stop().blur(function(){
			 var name =$(this).val();
			 var $name_parent = $(this).parent();
			 
			 if(name == '')
				 errorCheckEffect("이름을 입력하세요",$name_parent);
			 else
				 successCheckEffect($name_parent);
		})
		/*  -------------------- ---------------------------------------- */
		
		/* 나이 체크  */
		$("#age").stop().blur(function(){
			 var age =$(this).val();
			 var $age_parent = $(this).parent();
			 
			 if(age == '' || age < 1 || age > 200)
				 errorCheckEffect("나이를 올바르게 입력하세요",$age_parent);
			 else
				 successCheckEffect($age_parent);
			 
		})
		
		/* 이메일 처리코드 */
		$("#first_email").stop().blur(function(){
			email_check = emailCheck()
			var first_email = $("#first_email").val();
			var $email_field = $("#email_field");
			
			if(email_check)
				successCheckEffect($email_field);
			else
				errorCheckEffect("이메일을 입력하세요",$email_field)
				
		})
		

		$("#last_email").stop().blur(function(){
			email_check = emailCheck()
			var last_email = $("#last_email").val();
			var $email_field = $("#email_field");
			
			if(email_check)
				successCheckEffect($email_field);
			else
				errorCheckEffect("이메일을 입력하세요",$email_field)
		})
		
		$("#email_box").stop().change(function(){		
			selectEmailCheck(this);
		})
		/*  -------------------- ---------------------------------------- */
		
		
		
		/* 전화번호 체크 */
		$("#tel").stop().blur(function(){
			var tel =$(this).val();
			var $tel_parent = $(this).parent();
			 
			if(tel == '' || tel.indexOf("-")!= -1 || tel.length!=11)
				errorCheckEffect("'-'를 제외하고 다시 입력하세요", $tel_parent);
			else
			 	successCheckEffect($tel_parent);	 
		})
		/*  -------------------- ---------------------------------------- */
		
		
		/* 가입버튼 클릭시 */
		$("#joinBtn").click(function(){
			var icons = $(".fa");
			var i = 0;
			
			$.each(icons,function(index,value){
				if( $(value).hasClass("view") )
					i++;
			})
			
			if(i == icons.length )
				$("#join_second_form").attr("action","join_success.jsp").submit();
			else
				alert("모두 올바르게 입력 하셔야 합니다.");
		})
		
		
		/* 취소버튼 클릭시 */
		$("#cancelBtn").click(function(){
			if(confirm("이 페이지에서 나가시겠습니까?"))
				$("#join_second_form").attr("action","index.jsp").submit();  
		})
	})
	
	/* 이메일 체크  */
	function emailCheck(){
		var first_email = $("#first_email").val();
		var last_email = $("#last_email").val();
		
		if(first_email == '' || last_email == '')
			return false;
		else
			return true;
	}
	
	/* 이메일 사이트 입력 처리코드  */
	function selectEmailCheck(){
		var $email_field = $("#email_field");
		if($("#email_box").val() == 'empty'){
			$("#last_email").val('');
			$("#last_email").prop('readonly',false);
		}
		else{	
			$("#last_email").val( $("#email_box").val() );
			$("#last_email").prop("readonly", true);
		}
		
		if( $("#last_email").val() ==''){
			errorCheckEffect("이메일 아이디를 입력하세요",$email_field)
		}else
			successCheckEffect($email_field);
	}
	
	function pwdCheck(sel){
		var password = $(sel).val();
		var $password_parent = $(sel).parent();
		
		var num = password.search(/[0-9]/g);
		var eng = password.search(/[a-z]/ig);
		var spe = password.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

		if(password == ''){
			errorCheckEffect("비밀번호를 입력하세요",$password_parent)		
			return false;
		}
		
		if(password.length < 8 || password.length > 20){
			errorCheckEffect("8~20자 사이를 입력하세요",$password_parent)		
			return false;
		}
		
		if(num < 0 || eng < 0 || spe < 0 ){
			errorCheckEffect("특수문자,영문자,숫자를 모두 포함하세요",$password_parent)
			return false;
		}
		
		successCheckEffect($password_parent)
		return true;
	}
</script>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	#container{
		width: 850px;
		height: 100%;
		margin: 0 auto;
		text-align: left;
		
	}
	#join_second_form{
		padding:20px;
		width:900px;
		height:auto;
		border: 1px solid rgba(70,65,61,.4);
	}
	
	.join_row{
		border-bottom: 1px solid rgba(70,65,61,.4);
		padding:25px 0;
	}
	
	#join_second_form > div.join_row:last-child{
		border-bottom: none;
	}
	
	.join_row > label{
		display:inline-block;
		width:150px;
		margin-left:15px;
	}
	
	#join_second_form > div.join_row > input{
		font-family: 'Jeju Gothic', serif; /* Input 박스  위치변경 막기 */
		height:40px;
		width:350px;
		outline:none;
		font-size: 16px;
		border:1px solid rgba(0,0,0,.2);
	}
	
	input[type="password"] {
		font-family: sans-serif !important;
		font-weight: bold;
	}
	
	#join_second_form > div.join_row:nth-child(7) > input{
		width:100px;
	}
	#join_second_form > div.join_row:nth-child(6) > input{
		width:160px;
	}
	
	/* Input 박스 노란색 바탕생기는거 방지  */
	input:-webkit-autofill { -webkit-box-shadow: 0 0 0 1000px white inset!important;}
	input:-webkit-autofill { transition: background-color 5000s ease-in-out 0s;}
	
	#gender_box{
		font-family: 'Jeju Gothic', serif;
		width:150px;
		height:45px;
		font-size:16px;
		font-weight: 600;
	}
	
	#email_box{
		font-family: 'Jeju Gothic', serif;
		width:120px;
		height:44px;
		font-size:16px;
		font-weight: 600;
	}
	
	#email_box > option{
		font-size: 16px;
	}
	
	.fa{
		display: none;
		color:green;
	}
	
	.view{
		display: inline-block;
	}
	
	.submit_group{
		margin-top:20px;
		margin-bottom:40px;
		text-align: center;
	}
	 
	.submit_group > input[type="button"]{
		margin:10px auto;
		width: 20%;
		height: 70px;
		font-size: 20px;
		font-weight: bold;
		color: white;
		border: none;
		background-color: rgba(0,0,0,.8);
	}
	
	input[type='button']:hover{
		cursor: pointer;
	}
	
	#joinBtn{
		display:inline-block;
		color: black;
		background-color: rgba(250,250,250,.8);
		border:1px solid black;
	}
	
	#img_main{
		background-image: url(images/loginMain.jpg);
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat;
		width:100%;
		height:100%;
	}
}
</style>
</head>
<body>
	<%@ include file="join_header.jsp" %>
	<div id="container">
		<h3>기본정보입력</h3>
		<form method="post" action="" id="join_second_form">
			<div id="id_field" class="join_row">
				<label for="id">아이디 </label>
				<input type="text" id="id" name="mid" placeholder="ID를 입력">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="pwd_field" class="join_row">
				<label for="pwd">비밀번호 </label>
				<input type="password" id="pwd" name="mpwd" placeholder="영문,숫자,특수문자혼합하여 8~20자리입력">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="pwd_check_field" class="join_row">
				<label for="pwd_check">비밀번호 재확인 </label>
				<input type="password" id="pwd_check" name="pwd_check" placeholder="패스워드 재확인">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="name_field" class="join_row">
				<label for="name">이름 </label>
				<input type="text" id="name" name="mname" placeholder="이름 입력">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
				<div id="age_field" class="join_row">
				<label for="age">나이</label>
				<input type="text" id="age" name="mage" placeholder="나이 입력">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="gender_field" class="join_row">
				<label for="gender_box">성별 </label>
				<select name="mgender" id="gender_box">
					<option value="M">남자</option>
					<option value="W">여자</option>
				</select>
			</div>
			
			<div id="email_field" class="join_row">
				<label for="email">이메일</label>
				<input type="text" id="first_email" name="first_email" placeholder="이메일 ID">@
				<input type="text" id="last_email" name="last_email" placeholder="직접입력">
				<select name="memail" id="email_box">
					<option value="empty" selected>직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
					<option value="nate.com">nate.com</option>
					<option value="hanmir.com">hanmir.com</option>
					<option value="yahoo.com">yahoo.com</option>
				</select>
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="tel_field" class="join_row">
				<label for="tel">전화번호</label>
				<input type="text" id="tel" name="mtel" placeholder="'-'를 제외하고 입력하세요">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div class="submit_group">
				<input type="submit" id="joinBtn" value="가입">
				<input type="submit" id="cancelBtn" value="취소">
			</div>
		</form>
	</div>
</body>
</html>