<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="script/checkEffect.js"></script>
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		/* 동호회 제목 체크 */
		$("#title").stop().blur(function(){
			 checkValue(this,"이름을 입력하세요",2)
		})
		
		/* 소개글체크 */
		$("#content").stop().blur(function(){
			 checkValue(this,"소개글을 입력하세요",5)
		})
		
		
		/* 가입클릭시 */
		$("#joinBtn").click(function(){	
			var icons = $(".ch");
			alert(icons.length)
			var i = 0;
			
			$.each(icons,function(index,value){
				if( $(value).hasClass("view") )
					i++;
			})
			
			if(i == icons.length )
				$("#club_form").attr("action","club.jsp").submit();
			else
				alert("모두 올바르게 입력 하셔야 합니다.");
		})
		
		/* 취소버튼 클릭시 */
		$("#cancelBtn").click(function(){
			if(confirm("이 페이지에서 나가시겠습니까?"))
				$("#club_form").attr("action","index.jsp").submit();  
		})
	})
			
	function checkValue(sel,errorStr,condition){
		 var value =$(sel).val();
		 var $sel_parent = $(sel).parent();
		 
		 if(value == '' || value.length < condition)
			 errorCheckEffect("이름을 입력하세요",$sel_parent);
		 else
			 successCheckEffect($sel_parent);
	}
</script>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	#container{
		margin:0;
		padding:0;
		font-family: 'Jeju Gothic', serif;
	}
	
	#section{
		padding-top: 200px;
		padding-bottom: 120px;
		text-align: center;
		background-image: url(images/club_form.jpg);
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat; 
/* 		width:100%;
		height:100%; */
	}
	
	#section > h3 {
		font-size: 45px;
		font-weight: bold;
		margin-bottom: 40px;
		color: white
	}
	
	#club_form{
		margin:0 auto;
		padding:40px;
		width:850px;
		text-align:left;
		border:1px solid rgba(0,0,0,.2);
		background-color: rgba(250,250,250,.9);
	}
	
	#club_form > .club_row{
		margin-bottom: 30px;
		padding:40px;
		border-bottom: 1px solid rgba(0,0,0,.2);
	}
	
	#club_form > .club_row > label{
		display: inline-block;
		width: 190px;
		font-size: 20px;
		
	}
	
	#club_form > .club_row > input{
		width:300px;
		height:30px;
		font-family: 'Jeju Gothic', serif;
	}
	
	#club_form > .club_row > select{
		width:100px;
		height:30px;
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
	
	.view{
		display: inline-block;
	}
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="topMenu.jsp"></jsp:include> 

		<div id="section">		
			<h3>동호회 만들기</h3>
			<div id="article">
				<form method="post" action="" id="club_form">
					<span>*모두 빠짐없이 입력하셔야 합니다.</span>
					<div id="title_field" class="club_row">
						<label for="title">동호회 제목 </label>
						<input type="text" id="title" name="ctitle" placeholder="동호회제목 입력(2자이상)">
						<span class="input_check"></span>
						<i class="fa fa-check ch" aria-hidden="true"></i>						
					</div>
					
					<div id="content_field" class="club_row">
						<label for="content">동호회 소개글 </label>
						<input type="text" id="content" name="ccontent" placeholder="소개글 입력(5자이상)">
						<span class="input_check"></span>	
						<i class="fa fa-check ch" aria-hidden="true"></i>					
					</div>
					
					<div id="cpic_field" class="club_row">
						<label for="cpic">동호회 대표사진 </label>
						<input type="file" id="cpic" name="cpic" value="사진" >
						<span class="input_check"></span>						
					</div>
				
					<div id="area_field" class="club_row">
						<label for="area">활동 지역</label>
						<select name="carea" id="area">
							<option value="seoul" selected>서울</option>
							<option value="incheon">인천</option>
							<option value="daejun">대전</option>
							<option value="busan">부산</option>
							<option value="daegu">대구</option>
							<option value="gwangju">광주</option>
							<option value="ulsan">울산</option>
						</select>
						<span class="input_check"></span>				
					</div>
					
					<div id="hobby_field" class="club_row">
						<label for="hobby">관심사</label>
						<select name="chobby" id="hobby">
							<option value="nature" selected>자연</option>
							<option value="tour">여행</option>
							<option value="car">자동차</option>
							<option value="exercise">운동/스포츠</option>
							<option value="animal">동물</option>
							<option value="study">공부</option>
							<option value="ski">스키/보드</option>
							<option value="bicycle">자전거</option>
							<option value="climb">등산</option>
							<option value="cocktail">술/칵테일</option>
							<option value="concert">공연/전시</option>
							<option value="culture">문화</option>
							<option value="fashion">패션</option>
							<option value="game">게임</option>
							<option value="major">전공/직장</option>
							<option value="movie">영화</option>
							<option value="music">음악</option>
							<option value="picture">사진</option>
							<option value="reading">독서</option>
							<option value="etc">기타</option>
						</select>
						<span class="input_check"></span>
						
					</div>
					<div class="submit_group">
						<input type="button" id="joinBtn" value="가입">
						<input type="button" id="cancelBtn" value="취소">
					</div>
				</form>
			</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>