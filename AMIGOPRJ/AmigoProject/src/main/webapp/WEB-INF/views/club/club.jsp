<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../header/topMenu.jsp" %>
<link rel="stylesheet" href="<c:url value="/resources/css/club.css"/>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title><style>
	#main_img{ 
		padding-top:100px;	  
		background-image: url("<c:url value='../resources/images/club_images/${picName}'/>");
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat; 
		width:100%;
		height:450px; 
	}
</style>
<script>
	$(document).ready(function(){
		if(${msg == 'success'})
			alert("축하합니다! 동호회가 개설되었습니다.");
	})

</script>
</head>
<body>
<div id="container">
	<div id="main_img"><h2>${cName}</h2></div>	
	<div id="aside">
		<ul>
			<li><span>자유게시판</span>
				<ul class="sub_ul">
					<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>전체글보기</a></li>
					<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>자기소개</a></li>
					<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>자유게시판</a></li>
					<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>QnA</a></li>
					<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>등업</a></li>
				</ul>
			</li>
			<li><span><a href="#">멤버리스트보기</a></span></li>
		</ul>
	</div>
	
	<div id="board_container">
		<h2>게시판</h2>	
		<div id="board_content">
			<table>
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일</td>
					<td>수정일</td>
					<td>조회</td>
					<td>좋아요</td>
				</tr>	
					
				<tr><td colspan="6" class="boardLine"></td></tr>	
				<!-- C태그 반복문 -->
				<tr>
					<td>1</td>
					<td><a href="#" class="title_link">테스트용입니다</a></td>
					<td>테스트</td>
					<td>2017.10.17</td>
					<td>2017.10.18</td>
					<td>200</td>
					<td>46</td>
				</tr>
				
				<tr><td colspan="6" class="boardLine"></td></tr>
				
				<tr>
					<td>2</td>
					<td><a href="#" class="title_link">테스트용입니다2</a></td>
					<td>테스트2</td>
					<td>2017.10.17</td>
					<td>100</td>
					<td>52</td>
				</tr>
				
				<tr><td colspan="6" class="boardLine"></td></tr>
				
				<tr>
					<td>3</td>
					<td><a href="#" class="title_link">테스트용입니다3</a></td>
					<td>테스트3</td>
					<td>2017.10.17</td>
					<td>81</td>
					<td>42</td>
				</tr>
				
				<tr><td colspan="6" class="boardLine"></td></tr>
				
				<tr>
					<td>4</td>
					<td><a href="#" class="title_link">테스트용입니다4</a></td>
					<td>테스트4</td>
					<td>2017.10.17</td>
					<td>112</td>
					<td>42</td>
				</tr>	
			</table>
			<a href="#"><span class="paging_num">1 2 3 4 5 6 7 8 9 10</span></a>			
		</div>
	</div>

	<%@ include file="../footer/footer.jsp" %>
</div>
</body>
<style>
	#footer{
		top:200px;
	}
</style>
</html>