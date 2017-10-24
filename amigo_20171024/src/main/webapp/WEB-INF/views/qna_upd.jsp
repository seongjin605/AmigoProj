<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<div class="container" width="100px">
			<div class="row">
				<form class="form_edit" action="qna_upd" method="post">
					<div id="contact_right">
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
								<td colspan="6" width="20%">
									<div class="form-group">
										<input type="text" class="form-control" id="q_subject"
											name="q_subject" value="${viewQna.q_subject }">
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="6" class="active">내용</td>
							</tr>
							<tr>
								<td colspan="6" style="height: 150px">
									<div class="form-group">
										<textarea class="form-control" id="q_content" name="q_content"
											rows="5">
	                            	${viewQna.q_content}
	                            </textarea>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="6" style="text-align: right;">
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