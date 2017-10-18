<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#board_container {
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
}

#board_content>h2 {
	font-size: 35px;
	font-weight: bold;
	color: black;
}

#board_content>table {
	border-top: 1px solid rgba(0, 0, 0, .4);
	border-bottom: 1px solid rgba(0, 0, 0, .4);
	width: 1000px;
	text-align: center;
	padding: 20px;
	margin-right: 20px;
}

#board_content>table tr:nth-child(2n+1) td {
	padding: 25px;
}

a.title_link:hover {
	color: rgba(0, 0, 0, .6);
}

#footer {
	background: red;
}

.boardLine {
	border: 1px solid #dad8d7;
	padding: 0;
}

.paging_num {
	display: block;
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="topMenu.jsp"></jsp:include>
	<div id="board_container">
		<div id="board_content">
			<table>
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일</td>
					<td>조회</td>
					<td>좋아요</td>
				</tr>

				<tr>
					<td colspan="6" class="boardLine"></td>
				</tr>
				<!-- C태그 반복문 -->
				<tr>
					<td>1</td>
					<td><a href="#" class="title_link">테스트용입니다</a></td>
					<td>테스트</td>
					<td>2017.10.17</td>
					<td>200</td>
					<td>46</td>
				</tr>

				<tr>
					<td colspan="6" class="boardLine"></td>
				</tr>

				<tr>
					<td>2</td>
					<td><a href="#" class="title_link">테스트용입니다2</a></td>
					<td>테스트2</td>
					<td>2017.10.17</td>
					<td>100</td>
					<td>52</td>
				</tr>

				<tr>
					<td colspan="6" class="boardLine"></td>
				</tr>

				<tr>
					<td>3</td>
					<td><a href="#" class="title_link">테스트용입니다3</a></td>
					<td>테스트3</td>
					<td>2017.10.17</td>
					<td>81</td>
					<td>42</td>
				</tr>

				<tr>
					<td colspan="6" class="boardLine"></td>
				</tr>

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
</body>
</html>