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
<style>
.bootstrap-iso .btn { vertical-align:bottom; !important; }
#boardTable {
	margin-top: 200px;
}
</style>
</head>
<body>
	<jsp:include page="topMenu.jsp" />
	<div class="bootstrap-iso" id="boardTable">
		<div class="container">
			<table class="table">
				<form action="update" method="post">
					<input type="hidden" name="bId" value="${content_view.bId}">
					<tr>
						<td>번호</td>
						<td>${content_view.bId}</td>
					</tr>
					<tr>
						<td>조회수</td>
						<td>${content_view.bHit}</td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="bName"
							value="${content_view.bName}"></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="bTitle"
							value="${content_view.bTitle}"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea class="form-control" rows="10" name="bContent">${content_view.bContent}</textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input class="btn btn-primary"  type="submit" value="수정">
							&nbsp;&nbsp; <a class="btn btn-primary" href="mainBoard">목록보기</a> &nbsp;&nbsp; <a
							class="btn btn-primary" href="delete?bId=${content_view.bId}">삭제</a>
					</tr>
				</form>
			</table>
		</div>
	</div>
</body>
</html>