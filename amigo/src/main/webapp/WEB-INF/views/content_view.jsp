<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style>
table.type09 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
}

table.type09 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid #036;
}

table.type09 tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table.type09 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
.type09{
margin-top:300px;
}
</style>
</head>
<body>
	<jsp:include page="topMenu.jsp" />
	
	<form action="update" method="post">
		<table class="type09">
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
				<td colspan="2"><input type="submit" value="수정"> &nbsp;&nbsp; 
					<a href="mainBoard">목록보기</a> &nbsp;&nbsp; 
					<a href="delete?bId=${content_view.bId}">삭제</a>
			</tr>
		</table>
	</form>
</body>
</html>