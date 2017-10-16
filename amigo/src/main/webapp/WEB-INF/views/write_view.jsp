<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>글쓰기</title>
<style>
.container {
	margin-top: 100px;
}
</style>
</head>
<body>
	<jsp:include page="topMenu.jsp" />
	<div class="container">
		<div class="table-responsive">
			<table class="table table-hover">
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
						<td colspan="2"><input class="btn btn-primary btn-sm"
							type="submit" value="입력"> &nbsp;&nbsp; <a href="mainBoard">목록보기</a></td>
					</tr>
				</form>
			</table>
		</div>
	</div>
</body>
</html>