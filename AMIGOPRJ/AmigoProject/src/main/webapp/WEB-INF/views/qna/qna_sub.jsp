<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
	pre {
		font-family: none;
		background: none;
		border: none;
	}
	.container{
		margin:0 auto;
		padding-top:50px;	
		width: 70%;
	}
	#top{
		padding-left:50px;
	}
</style>
</head>
<body>
	<jsp:include page="../header/topMenu.jsp" />
	<div class="container-fluid"
		style="background-color: black; color: #fff; height: 220px;">
		<div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
		</div>
		<div id="top">
			<h1>일대일 문의 게시판입니다.</h1>
			<h3>사이트 이용 및 문의사항을 작성해주세요</h3>
			<br>
			<p>답변 기간은 약 1주일 정도 소요됩니다.</p>
		</div>
	</div>
	<div class="container" width="70%">
		<div class="row">
			<form>
				<div id="">
					<div id="">
						<h2>문의내용</h2>
					</div>
					<br>
					<table class="table" style="text-align: center;">
						<tr>
							<td class="active">글번호</td>
							<td>${viewQna.num }</td>
							<td class="active">카테고리</td>
							<td>${viewQna.category }</td>
							<td class="active">날짜</td>
							<td>${viewQna.regdate }</td>
						</tr>
						<tr>
							<td colspan="6" class="active">제목</td>
						</tr>
						<tr>
							<td colspan="6" width="20%">${viewQna.q_subject }</td>
						</tr>
						<tr>
							<td colspan="6" class="active">내용</td>
						</tr>
						<tr>
							<td colspan="6" style="height: 150px;"><pre>${viewQna.q_content }</pre></td>
						</tr>
						<tr>
							<td colspan="6" style="text-align: right;">
								<a href="qna" class="button">목록으로</a>&nbsp;&nbsp;
								<a href="qna_upd?num=${viewQna.num}" class="button">수정</a>&nbsp;&nbsp;
								<a href="qna_delete?num=${viewQna.num}" class="button">삭제</a>&nbsp;&nbsp;</td>
						</tr> 
					</table>
				</div>
			</form>
		</div>
	</div>
	</div>
</body>
</html>