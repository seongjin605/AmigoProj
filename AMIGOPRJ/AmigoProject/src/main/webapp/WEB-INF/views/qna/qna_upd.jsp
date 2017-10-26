<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../header/topMenu.jsp" %>
<head>
<style type="text/css">
	.container{
		margin:0 auto;
		padding-top:50px;	
		width: 70%;
	}
	#top{
		padding-left:50px;
	}
	.input_style{
		border: none;
		border-radius: none;
	} 
	#tablestyle{
	    border-collapse: collapse;
	    width: 100%;
	} 
	th, td {
	    text-align: left;
	    padding: 8px;
	    height: 40px;
	} 
	
	tr:nth-child(even){background-color: #f2f2f2}
	
	th {
	    background-color: #4CAF50;
	    color: white;
	}
	.table_sub{
	 background: rgba(60, 41, 7, 0.5);
	 color: white; 
	 text-align: center;
	}
	.form-control{
		margin:0px;
	    border-radius: 11px;
	    width: 95%;
	    margin-bottom: 11px;
	    padding: 3%;
	}
</style>
</head>
<body>
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
		<div class="container" width="100px">
			<div class="row">
				<form class="form_edit" action="${location}/qna_upd.amg" method="post">
					<div id="contact_right">
						<div id="">
							<h2>문의내용</h2>
						</div>
						<br>
						<table id="tablestyle" class="table" style="text-align: center;">
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
								<td colspan="3" class="active table_sub">제목</td>
							</tr>
							<tr>
								<td colspan="3" width="20%">
									<div class="form-group">
										<input type="text" class="form-control input_style" id="q_subject"
											name="q_subject" value="${viewQna.q_subject }">
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="3" class="active table_sub">내용</td>
							</tr>
							<tr>
								<td colspan="3" style="height: 150px">
									<div class="form-group">
										<textarea class="form-control input_style"  id="q_content" name="q_content"
											rows="5">${viewQna.q_content}</textarea>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="6" style="text-align: right;">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									<input type="hidden" id="num" name="num" value="${viewQna.num }">
									<button type="submit" class="btn submit pull-right">확인</button>
							</tr>
						</table>
						
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>