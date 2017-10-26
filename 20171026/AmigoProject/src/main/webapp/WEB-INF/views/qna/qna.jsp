<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header/topMenu.jsp" %>
<link rel="stylesheet" href="<c:url value="/resources/css/fre_question.css" />">
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
	
	/*메인배경*/
	
		
	#main_img{
		padding-top:440px;
		background-image: url("<c:url value="/resources/images/question1.jpg"/>");
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat; 
		opacity: 0.8;
		width:100%;
		height:100px; 
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
		margin:0 0 0 16%;
		padding-top:50px;	
		width: 70%;
		position: absolute;
	}
	.row {
		position: inline-block;
	}
	#contact_right{
		width: 50%;
		float: right;
    	display: inline-block;
	}
	#contact_left{
		width: 50%;
		float: left;
    	display: inline-block;
	}
	#top{
		padding-left:50px;
	}
	.children{
		overflow: hidden;
	}
	.form-control{
		 border: 1px solid  rgba(60, 41, 7, 0.87);
	    border-radius: 11px;
	    width: 95%;
	    margin-bottom: 11px;
	    padding: 3%;
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
	thead{
	 background: rgba(60, 41, 7, 0.87);
	 color: white;
	}
	

}
	
</style>

<script>
	 $(function() {
		//선택된 탭 말고는 다 안보이게 해주세여
		$("ul.panel li:not("+$("ul.tab li a.selected").attr("href")+")").hide()
				//선택된 태그 말고 나머지태그에 속성을 부여한다. 
		$("ul.tab li a").click(function(){
			$("ul.panel li").hide();
			$($(this).attr("href")).show();//현재 선택된 탭의 내용만 보여주세여
			return false;
		})		
	 }) 	 
</script>
<body data-spy="scroll" data-target=".navbar-collapse">
	<div class="container-fluid">
		<div id="main_img">
			<h2>무엇이든 물어보세요</h2> 
		</div>
<!-- 		<div id="top"> 
			<h1>일대일 문의 게시판입니다.</h1>
			<h3>사이트 이용 및 문의사항을 작성해주세요</h3>
			<br>
			<p>답변 기간은 약 1주일 정도 소요됩니다.</p>
		</div> -->
	</div>
	
                <!--  side bar  -->
               
    <div id="aside"> 
		<ul>
			<li><span>고객센터</span>
				<ul class="sub_ul">
					<li><a href="${location}/qna/freQuestion.amg"><i class="fa fa-server" aria-hidden="true"></i>F&Q</a></li>
					<li><a href="${location}/qna/qna.amg"><i class="fa fa-server" aria-hidden="true"></i>1:1문의</a></li>
				</ul>
			</li>
		</ul>
	</div> 
               
               
               <!-- side bar-->
	
	<div class="container" id="qnacontent">
		
	
		<ul class="nav tab nav-tabs children">
			<li><a href="#tab1" class="selected">문의신청</a></li>
			<li><a href="#tab2">문의내역</a></li>
		</ul>
		<ul class="panel children">
			<!-- 문의 신청 폼 -->			
			<li id="tab1">
	            <div >
	                <div class="row">
	                    <div class="col-md-6 left" id="contact_left">
	                        <img src="<c:url value="/resources/images/qna.png"/>" width="250px" align="center"	>
	                        <!-- <img class="img-responsive" src="../resource/images/qna.png"  width="300px" height="300px"> -->
	                    </div>		                    
	                    <div class="col-md-6 right" id="contact_right">
	                        <div>
	                            <h2>문의하기</h2>	                            
	                        	<p class='subtitle'> 양식에 맞춰 작성해주세요</p>
	                        </div>	                        
	                        <br>
	                        <!-- form -->
	                        <form class="form_edit" action="<c:url value='/qna/qna.amg'/>"  method="post"> 
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
	                           	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
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
 			<div>
				<table class="table"  id="tablestyle">
					<thead>
					<tr>
						<td>번호</td>
						<td>유형</td>
						<td>제목</td>	
						<td>날짜</td>
					</tr>
					</thead>
					<c:forEach var="list" items="${list}">
					<tr id="subject">
						<td>${list.num}</td>
						<td>${list.category}</td>
						<td width="50%" ><a href="${location}/qna/qna_sub.amg?num=${list.num}" > ${list.q_subject}</a></td>
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