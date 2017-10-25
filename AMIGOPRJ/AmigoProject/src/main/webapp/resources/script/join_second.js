$(document).ready(function(){
	var pwd_check = false;
	var email_check = false;


	/* 아이디체크 */
	$("#username").stop().blur(function(){
		 var id =$(this).val();
		 var $id_parent = $(this).parent();
		 
		 if(id == '')
			 errorCheckEffect("이름을 입력하세요",$id_parent);
		 else
			 successCheckEffect($id_parent);
	})
	/*  -------------------- ---------------------------------------- */
	
	
	/* 비밀번호 체크  */
	$("#password").stop().blur(function(){
		pwd_check = pwdCheck(this);
	})
	/*  -------------------- ---------------------------------------- */
	
	
	/* 비밀번호 재확인 체크 */
	$("#password_check").stop().blur(function(){
		var $pwCheck_parent =$(this).parent();
		
		if(pwd_check == true){
			var password = $("#password_check").val();
			
			if( password!=$("#password").val() )
				errorCheckEffect("비밀번호가 다릅니다",$pwCheck_parent);
			else
				successCheckEffect($pwCheck_parent);
		}
		else
			$("#password").focus();
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
})

/*나이필드 숫자만 입력*/
function onlyNumber(obj) {
    $(obj).keyup(function(){
         $(this).val($(this).val().replace(/[^0-9]/g,""));
    }); 
}
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