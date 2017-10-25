<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../header/topMenu.jsp" %>
<script src="<c:url value="/resources/script/checkEffect.js"/>"></script>
<script src="<c:url value="/resources/script/club_make.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/club_make.css"/>">
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		var i = 0;
		
		/*select 값 변경할때 작동*/
		$("#area1").change(function(){
			addSelectBox();
		})

		/* 창설버튼 눌렀을때 */
		$("#joinBtn").click(function(){	
			var icons = $(".ch");
			console.log("??"+icons.length)
			
			$.each(icons,function(index,value){
				if( $(value).hasClass("view") )
					i++;
			})
			console.log("????"+i);
			
			if(i == icons.length )
				$("#club_form").attr("action","${location}/club/insertClub.amg").submit();
			else
				alert("모두 올바르게 입력 하셔야 합니다.");
		})
	
	 	/* 취소버튼 클릭시  */
		$("#cancelBtn").click(function(){
			if(confirm("이 페이지에서 나가시겠습니까?"))
				$("#club_form").attr("method","get").attr("action","${location}/index.amg").submit();  
		})
	})
	
	/* 아작스로 다음주소 selectBox만들기 */
	function addSelectBox(){
		var area =  $("#area1 option:selected").val(); 
		
		$.ajax({
			type:"post",
			url:"${location}/club/selectBox.amg?area="+area,
			success:function(data){
				var i=0;
				var selectTag='';
				
				for(i in data){
					console.log(data[i]);
					selectTag += "<option value=";
					selectTag += data[i]+">";
					selectTag += data[i]+"</option>";
				}
				
				$("#area2").html(selectTag); 	
			},
	 	  	error:function(request,status,error){
	 	        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	 	    }	
		});
	}
</script>
<style>
	#section{
		padding-top: 200px;
		padding-bottom: 120px;
		text-align: center;
		background-image: url("<c:url value="/resources/images/club_form.jpg"/>");
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat; 
	}
</style>
</head>
<body>
	<div id="container">
		<div id="section">		
			<h3>동호회 만들기</h3>
			<div id="article">
				<form method="post" action="" id="club_form" enctype="multipart/form-data">
					<span>*모두 빠짐없이 입력하셔야 합니다.</span>
					<div id="title_field" class="club_row">
						<label for="title">동호회 제목 </label>
						<input type="text" id="title" name="cTitle" placeholder="동호회제목 입력(2자이상)">
						<span class="input_check"></span>
						<i class="fa fa-check ch" aria-hidden="true"></i>						
					</div>
					
					<div id="content_field" class="club_row">
						<label for="content">동호회 소개글 </label>
						<input type="text" id="content" name="cContent" placeholder="소개글 입력(5자이상)">
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
						<select name="cArea1" id="area1">
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="인천">인천</option>
							<option value="대전">대전</option>
							<option value="부산">부산</option>
							<option value="대구">대구</option>
							<option value="광주">광주</option>
							<option value="울산">울산</option>
						</select>
								
						<select name="cArea2" id="area2">
						</select>		
						<span class="input_check"></span>				
					</div>
					
					<div id="hobby_field" class="club_row">
						<label for="hobby">관심사</label>
						<select name="cHobby" id="hobby">
							<option value="자연" selected>자연</option>
							<option value="여행/캠핑">여행/캠핑</option>
							<option value="자동차">자동차</option>
							<option value="운동/스포츠">운동/스포츠</option>
							<option value="동물/반려견">동물/반려견</option>
							<option value="공부/스터디">공부/스터디</option>
							<option value="스키/보드">스키/보드</option>
							<option value="자전거">자전거</option>
							<option value="등산">등산</option>
							<option value="술/칵테일">술/칵테일</option>
							<option value="공연/전시">공연/전시</option>
							<option value="문화">문화</option>
							<option value="패션">패션</option>
							<option value="게임">게임</option>
							<option value="전공/직장">전공/직장</option>
							<option value="영화">영화</option>
							<option value="음악">음악</option>
							<option value="사진">사진</option>
							<option value="독서">독서</option>
							<option value="기타">기타/이색</option>
						</select>
						<span class="input_check"></span>
					</div>
					<div class="submit_group">
						<input type="button" id="joinBtn" value="창설하기">
						<input type="button" id="cancelBtn" value="취소">
					</div>
					
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
			</div>
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