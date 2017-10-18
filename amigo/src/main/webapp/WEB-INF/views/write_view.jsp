<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet"
	href="https://formden.com/static/cdn/bootstrap-iso.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<title>글쓰기</title>
<style>
.bootstrap-iso .btn { vertical-align:bottom; !important; }
.container {
	margin-top: 100px;
}
</style>
</head>
<body>
	<jsp:include page="topMenu.jsp" />

	<div class="bootstrap-iso">
		<div class="container">
			<div class="table-responsive">
				<table class="table">
					<form action="write" method="post">
						<tr>
							<td>이름</td>
							<td><input type="text" name="bName" size="50"></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input type="text" name="bTitle" size="50"></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea class="form-control" name="bContent" rows="20"></textarea></td>
						</tr>
						<tr>
							<td colspan="2"><input class="btn btn-primary pull-right"
								type="submit" value="작성완료"> &nbsp;&nbsp; <a
								class="btn btn-primary" href="mainBoard">목록보기</a></td>
						</tr>
					</form>
				</table>
			</div>
		</div>
	</div>
</body>
</html>