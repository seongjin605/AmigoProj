<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <link rel="stylesheet" href="css/bootstrap.css" /> -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style type="text/css">
	*{
		margin:0;padding:0;	
	}
	#container{
		width:500px;
		margin:50px auto;
	}
	ul.tab li{ 
		list-style-type: none;
		width: 100px;
		height:40px;
		float:left;		
	}
	ul.tab li a{
		display:block;		
		text-align:center;		
	}
	ul.tab li a.selected{
		text-decoration:none;
		cursor:default;
	}
	
	/*선택된 탭에 대한 내용에 대한 설정*/
	
	ul.panel{
		clear:both;
		padding:0;
	}
	ul.panel li{
		list-style-type: none;
		padding: 10px;
		text-indent: 1em;
	}
	
	.container{
		margin:0 auto;	
		width: 70%;
	}
	.row {
		position: inline-block;
	}
	#contact_right{
		width: 50%;
	}
	#contact_left{
		width: 50%;
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
/* 		$("#subject").click(function(e) {
			//var listnum=e
			alert(e+","+","+"클릭");
		})*/
	 }) 
	
/* 	function subject(e) {
		alert(e+","+","+"클릭");
		$('#v_content').load(qna_sub.jsp?num=e);
	} */
	 
</script>

<body data-spy="scroll" data-target=".navbar-collapse">
<jsp:include page="topMenu.jsp" />
	<div class="container-fluid"	style="background-color: #2196F3; color: #fff; height: 220px;">
		<div>
			<br><br><br><br><br><br>
		</div>
		<div > 
			<h1>일대일 문의 게시판입니다.</h1>
			<h3>사이트 이용 및 문의사항을 작성해주세요</h3>
			<br>
			<p>답변 기간은 약 1주일 정도 소요됩니다.</p>
		</div>
	</div>

	<div class="container">
		<ul class="nav tab nav-tabs ">
			<li><a href="#tab1" class="selected">문의신청</a></li>
			<li><a href="#tab2">문의내역</a></li>
		</ul>
		<ul class="panel">
			<!-- 문의 신청 폼 -->			
			<li id="tab1">
	            <div >
	                <div class="row">
	                    <div class="col-md-6 left" id="contact_left">
	                        <img class="img-responsive img-circle " src="images/005.png"  width="300px" height="300px">
	                    </div>	
	                    <div class="col-md-6 right" id="contact_right">
	                        <div id="">
	                            <h2>문의하기</h2>	                            
	                        	<p class='subtitle'> 양식에 맞춰 작성해주세요</p>
	                        </div>
	                        <br>
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
	                            <input type="hidden" name="writer" id="writer" value="a">
	                            
	                            <!-- 이미지 업로드를 추가하는 것은 어떨까?! -->
	                            <!-- 
	                            	<div id="cpic_field" class="club_row">
										<label for="cpic">동호회 대표사진 </label>
										<input type="file" id="cpic" name="cpic" value="사진" >
										<span class="input_check"></span>						
									 </div>
	                             -->	                            
	                            <button type="submit" class="btn submit pull-right">문의하기</button>
	                        </form>
	                    </div>
	                </div>
	            </div>
			
			</li>
			<!-- 문의 내역 폼 -->
			<li id="tab2" style="red">
			<div id="v_content"/>
			<div>
				<table class="table table-hover">
					<thead class="text-center" style="background: rgba(60, 41, 7, 0.87);color: white;">
					<tr>
						<td>번호</td>
						<td>유형</td>
						<td>제목</td>	
						<td>작성자</td>
						<td>날짜</td>
					</tr>
					</thead>
					<c:forEach var="list" items="${list}">
					<%-- <tr  onclick="subject(${list.num})"> --%>
					<tr id="subject">
						<td>${list.num}</td>
						<td>${list.category}</td>
						<%-- <td width="50%" >${list.q_subject}</td> --%>
						<td width="50%" ><a href="qna_sub?num=${list.num}" > ${list.q_subject}</a></td>
						<td>${list.writer}</td>
						<td>${list.regdate}</td>					
					</tr>	
					</c:forEach>
				</table>
			</div>
			</li>
			<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		</ul>
	</div>
</body>
</html>