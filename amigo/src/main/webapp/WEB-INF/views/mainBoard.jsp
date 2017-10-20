<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<title>자유 게시판</title>

<script>
	$(document).ready(function() {
		$("#btn btn-primary").click(function() {
			// 페이지 주소 변경(이동)
			location.href = "${path}/write";
		});
	});
	// **원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
	function list(page) {
		location.href = "${path}/mainBoard?curPage=" + page
				+ "&searchOption-${map.searchOption}"
				+ "&keyword=${map.keyword}";
	}
</script>
<style>
.bootstrap-iso .btn { vertical-align:bottom; !important; }
#boardTable {
	margin-top: 200px;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<jsp:include page="topMenu.jsp" />
	<div class="bootstrap-iso" id="boardTable">
		<div class="container-fluid">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="cols">번호</th>
						<th scope="cols">제목</th>
						<th scope="cols">이름</th>
						<th scope="cols">작성일</th>
						<th scope="cols">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${map.list}">
						<tr>
							<td>${row.bId}</td>
							<td id="titleClick"><a
								href="${path}/content_view?bId=${row.bId}">${row.bTitle}</a></td>
							<td>${row.bName}</td>
							<td>
								<!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 --> <fmt:formatDate
									value="${row.bDate}" pattern="yyyy-MM-dd HH:mm:ss" />
							</td>
							<td>${row.bHit}</td>
						</tr>
					</c:forEach>
				</tbody>
				<tr>
					<td colspan="5">
						<nav>
							<div style="width: 700px;" class="center-block clearfix">
								<ul class="pagination pagination-lg">
									<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
									<c:if test="${map.boardPager.curBlock > 1}">
										<li><a href="javascript:list('1')">처음</a></li>
									</c:if>
									<!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
									<c:if test="${map.boardPager.curBlock > 1}">
										<li><a
											href="javascript:list('${map.boardPager.prevPage}')">이전</a>
										<li>
									</c:if>
									<!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 -->
									<c:forEach var="num" begin="${map.boardPager.blockBegin}"
										end="${map.boardPager.blockEnd}">
										<!-- **현재페이지이면 하이퍼링크 제거 -->
										<c:choose>
											<c:when test="${num == map.boardPager.curPage}">
												<li class="active"><span aria-hidden="true">${num}</span>
												<li>
											</c:when>
											<c:otherwise>
												<li><a href="javascript:list('${num}')">${num}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
									<c:if
										test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
										<li><a
											href="javascript:list('${map.boardPager.nextPage}')">다음</a>
										<li>
									</c:if>
									<!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
									<c:if
										test="${map.boardPager.curPage <= map.boardPager.totPage}">
										<li><a
											href="javascript:list('${map.boardPager.totPage}')">끝</a></li>
									</c:if>
								</ul>
							</div>
						</nav>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div class="bootstrap-iso">
		<div style="width: 700px;" class="center-block clearfix">
			<div class="container">
				<!-- 검색 부분 시작 -->
				<form class="navbar-form center-block" name="form1" method="post"
					action="${path}/mainBoard">

					<select class="form-control">
						<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
						<option value="all"
							<c:out value="${map.searchOption eq 'all'?'selected':''}"/>> 전체(이름+내용+제목)</option>
						<option value="bname"
							<c:out value="${map.searchOption eq 'bname'?'selected':''}"/>> 이름</option>
						<option value="bcontent"
							<c:out value="${map.searchOption eq 'bcontent'?'selected':''}"/>> 내용</option>
						<option value="btitle"
							<c:out value="${map.searchOption eq 'btitle'?'selected':''}"/>> 제목</option>
					</select> <input class="form-control" name="keyword" value="${map.keyword}">
					<input class="btn btn-primary" type="submit" value="검색">
					<a class="btn btn-primary" href="write_view">글쓰기</a>
				</form>
				<!-- 레코드의 갯수를 출력 -->
				총 ${map.count}개의 게시물을 찾았습니다.
			</div>
		</div>
	</div>
</body>
</html>