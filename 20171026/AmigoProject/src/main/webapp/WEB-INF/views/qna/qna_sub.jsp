<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header/topMenu.jsp" %>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
	.table_sub{
		 background: rgba(60, 41, 7, 0.5);
		 color: white; 
		 text-align: center;
	}
		th, td {
	    text-align: left;
	    padding: 8px;
	    height: 40px;
	    		 text-align: center;
	} 
	
	th {
	    background-color: #4CAF50;
	    color: white;
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
					<table class="table" style="text-align: center;width: 100%;">
					
							<tr style="text-align: center;">
								<td class="active table_sub">글번호</td>
								<td class="active table_sub" width="65%">카테고리</td>
								<td class="active table_sub">날짜</td>
							</tr> 
							<tr> 
								<td style="text-align: center;">${viewQna.num }</td>
								<td style="text-align: center;">${viewQna.category }</td>
								<td style="text-align: center;">${viewQna.regdate }</td>
							</tr>
										
						<tr>
							<td colspan="6" class="active table_sub">제목</td>
						</tr>
						<tr>
							<td colspan="6" width="20%">${viewQna.q_subject }</td>
						</tr>
						<tr>
							<td colspan="6" class="active table_sub">내용</td>
						</tr>
						<tr>	
							<td colspan="6" style="height: 150px;"><pre>${viewQna.q_content }</pre></td>
						</tr>
						<tr>
							<td colspan="6" style="text-align: right;">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<a href="${location}/qna/qna.amg" class="button">목록으로</a>&nbsp;&nbsp;
								<a href="${location}/qna/qna_upd.amg?num=${viewQna.num}" class="button">수정</a>&nbsp;&nbsp;
								<a href="${location}/qna/qna_delete.amg?num=${viewQna.num}" class="button">삭제</a>&nbsp;&nbsp;</td>
						</tr> 
					</table>
				</div>
			</form>
		</div>
	</div>
	</div>
</body>
</html>