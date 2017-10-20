<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<title>Amigo</title>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.2.1.min.js">
	
</script>
<style type="text/css">
	*{
		margin:0;padding:0;	
	}
	#container{
		width:500px;
		margin:50px auto;/*자동으루 맞추시게*/
	}
	ul.tab li{ /*리스트 목록 점 사라져랏*/
		list-style-type: none;
		width: 100px;
		height:40px;
		float:left;		
	}
	ul.tab li a{ /*제목탭 디잔*/
		display:block;		
		text-align:center;/*글은 가운데에에에에에엥엥ㅇ~~*/		
	}
	ul.tab li a.selected{ /*처음 선택된 자바스크립트 탭에 대한 설ㅈ정*/
		text-decoration:none;/*밑줄 사라져랏 : underline, overline, line-through */
		cursor:default;
	}
	
	/*선택된 탭에 대한 내용에 대한 설정*/
	
	ul.panel{
		clear:both;/*다른설정개무싷*/
		padding:0;
	}
	ul.panel li{
		list-style-type: none;
		padding: 10px;/*위아래오왼 전부 10px*/
		text-indent: 1em;/*맨처음 행의 들여쓰기 설정이에ㅛㅇ웅*/
	}
</style>

<script>
	 $(function() {
		//선택된 탭 말고는 다 안보이게 해주세여
		$("ul.panel li:not("+$("ul.tab li a.selected").attr("href")+")").hide()
				//선택된 태그 말고 나머지태그에 속성을 부여한다. 
		$("ul.tab li a").click(function(){
			$("ul.panel li").hide();
			$($(this).attr("href")).show();//현재 선택된 탭의 내용만 보여주세여ㅛ ㅇ
			return false;
		})
	}) 
</script>

<body data-spy="scroll" data-target=".navbar-collapse">
<jsp:include page="topMenu.jsp" />
<div class="container-fluid" style="background-color:#2196F3;color:#fff;height:220px;">
  <h1>일대일 문의 게시판입니다. </h1>
  <h3>사이트 이용 및 문의사항을 작성해주세요</h3>
  <p>답변 기간은 약 1주일 정도 소요됩니다. </p>
  <p>블라블라~ </p>
</div>

	<div class="container">
		<ul class="nav tab nav-tabs ">	<!-- 메뉴만들 땐 보통<ul> -->
			<li><a href="#tab1" class="selected">문의신청</a></li>
			<li><a href="#tab2">문의내역</a></li>
		</ul>
		<ul class="panel">
			<!-- 문의 신청 폼 -->			
			<li id="tab1">
	            <div >
	                <div class="row">
	                    <div class="col-md-6 left" id="contact_left">
	                    <!-- 이미지 넣으면 어떨까? -->
	                        <img class="img-responsive " src="">
	                    </div>	
	                    <div class="col-md-6 right" id="contact_right">
	                        <div id="watermark">
	                            <h2 class="page-title" text-center>문의하기</h2>
	                            <div class="marker"></div>
	                        </div>
	                        <p class='subtitle'>양식에 맞춰 작성해주세요</p>
	                        <!-- form -->
	                        <form class="form_edit" action="qna" method="post"> 
	                            <div class="form-group">
	                                <select class="form-control" id="category" name="category">
										<option>유형을 선택해주세요</option>
										<option>회원가입 및 로그인</option>
										<option>동호회 개설 및 이용</option>
										<option>기타</option>
									</select>
	                            </div>	
	                            <div class="form-group">
	                            <input type="text" class="form-control" id="q_subject" name="q_subject" placeholder="제목">
	                            </div>	
	                            <div class="form-group">
	                            <textarea class="form-control"  id="q_content" name="q_content" rows="5" placeholder="내용을 작성해 주세요"></textarea>
	                            </div>
	                            <input type="hidden" name="num" id="num" value="1">
	                            <input type="hidden" name="writer" id="writer" value="a">	                            
	                            <button type="submit" class="btn btn-rabbit submit">문의하기</button>
	                        </form>
	                    </div>
	                </div>
	            </div>
			
			</li>
			<!-- 문의 내역 폼 -->
			<li id="tab2">
			<div>
				<table class="table">
					<thead class="text-center">
					<tr>
						<td>번호</td>
						<td>유형</td>
						<td>제목</td>
						<td>답변유무</td>
						<td>날짜</td>
					</tr>
					</thead>
					<c:forEach var="list" items="${list}">
					<tr>
						<td>${list.num}</td>
						<td>${list.category}</td>
						<td>${list.q_subject}</td>
						<td>${list.q_content}</td>
						<td>${list.regdate}</td>					
					</tr>	
					</c:forEach>
				</table>
			</div>
			</li>
		</ul>
	</div>
</body>
</html>