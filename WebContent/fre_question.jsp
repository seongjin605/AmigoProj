<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		
		var answers = $(".detail_answer")
		
		$.each(answers,function(){
			$(this).addClass("none");
		})
		
		$(".base_question").click(function(){
			/* $(".detail_answer").not($(this)).addClass("none"); */
			$(this).parent().children(".detail_answer").toggleClass("none");
		})
	})
</script>
<style>
	.none{
		display: none;
	}

	#main_img{
		padding-top:440px;
		background-image: url(images/question1.jpg);
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat; 
		opacity: 0.8;
		width:100%;
		height:100px; 
	}
	#main_img > h2{
		color:rgba(255,255,255,.8);
		font-size: 40px;
		text-align: center;
		font-weight: bold;
		position: relative;
		top:-200px;
	}
	
	#content{
		width:90%;
		padding:0;
	}

	.article{
		width:500px;
		margin: 0 auto;
		border-bottom: 1px solid rgba(0,0,0,.4);
		margin: 120px 50% 0 35%
	}
	
	.article:LAST-CHILD{
		border: none;
		margin-top: 50px;
		margin-bottom: 150px;
	}
	
	.article > h2{
		font-weight: bold;
		font-size: 30px;
		margin-bottom: 50px;
		color: rgba(0,0,0,.6);
	}
	
	.article > ul{
		text-align: left;
	}
	
	.article > ul li{
		margin-bottom: 25px;
	}
	
	.article > ul  > li > span{
		color: rgba(0,0,0,.7);
		font-size:16px;
		cursor: pointer;
	}
	
	.detail_answer{
		font-size: 14px;
		color: rgba(0,0,0,.5);
		margin:20px 0 0 50px;
	}

	#aside{
		position: relative;
		left:0;
		top:0;
		margin: 20px 30px 0 15px;
		float:left;
		height:400px;
		background:#eee;
		padding:20px;
		border:1px solid rgba(0,0,0,.2);
		border-radius: 6px;
	}
	
	#aside > ul{
		list-style: none;	
		padding:0;
		margin-top: 60px;
	}
	
	#aside > ul > li{
		margin-bottom:15px;
		border-bottom: 1px solid rgba(0,0,0,.3);
		padding:20px 30px 20px 0;
		
	}
	
	#aside > ul > li:NTH-CHILD(1){
		border-top: 1px solid rgba(0,0,0,.3);
	}
	
	#aside > ul > li > span{
		font-size: 20px;
		display: inline-block;
		font-weight: bold;
		margin-bottom: 26px;
	}

	ul.sub_ul{
		margin-left:5px;
	}
	
	ul.sub_ul li{
		margin-bottom: 30px;
	}
	
	ul.sub_ul  li a{
		color:rgba(0,0,0,.4);
	}
	
	ul.sub_ul  li a:hover{
		color:rgba(0,0,0,.8);
	}
	
	ul.sub_ul .fa{
		margin-right: 3px;
		color: rgba(50,50,50,.8);
		font-size: 13px;
	}
	
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="topMenu.jsp"></jsp:include>
		<div id="main_img">
			<h2>궁금한게 있으시면 무엇이든 물어보세요</h2>
		</div>

		<div id="content">	
			<div id="aside">
				<ul>
					<li><span>고객센터</span>
						<ul class="sub_ul">
							<li><a href="fre_question.jsp"><i class="fa fa-server" aria-hidden="true"></i>F&Q</a></li>
							<li><a href="#"><i class="fa fa-server" aria-hidden="true"></i>1:1문의</a></li>
						</ul>
					</li>
				</ul>
			</div>
			
			<div class="article" id="use_site">
				<h2>이용관련</h2>
				<ul>
					<li><span class="base_question">1.amiGo는 어떻게 이용하나요?</span>
						<div class="detail_answer">관심사,지역,이름등 다양한 조건으로 원하는 동호회를 찾을수있고, 가입할수있으며 직접 개설도 하실수 있습니다.</div>
					</li>
					<li><span class="base_question">2.게시글에 전화번호,이메일을 기지해도 되나요?</span>
						<div class="detail_answer">amiGo에서는 무분별한 스팸 문자나 장난 전화 등을 막기 위해서 연락처 열람 시 해당 정보가 사이트에 기록되어 열람한 회원을 
																확인 할 수 있는 기능을 제공하고 있으며 운영에 필요한 주 수입원 중 하나이므로 불편하시더라도 연락처를 본문 등에 기재하지 않도록 부탁드립니다
						</div>
					</li>
					<li><span class="base_question">3.사이트에 치명적인 오류나 건의사항이있어요</span>
						<div class="detail_answer">amiGo@amiGo.com로 보내주시면 됩니다.
																중요 버그라던가 좋은 건의 사항인 경우에는 다양한 선물을 드리고 있으니 많이 제보해주세요</div>
					</li>

					<li><span class="base_question">4.부적절한 게시글을 발견했어요 어떻게하나요?</span>
						<div class="detail_answer">기재가 되어선 안되는 연락처라던가 부적절한 내용(음란, 정치적인 글, 비방)이 포함되어 있는 경우 게시글에 위치한 신고하기 버튼으로 신고해주세요. 
																신속하게 처리하겠습니다</div>
					</li>
				</ul>
			</div>
			
			<div class="article" id="use_member">
				<h2>회원관련</h2>
				<ul>
					<li><span class="base_question">1.회원수정은 어떻게 하나요??</span>
						<div class="detail_answer">로그인 하신후, 마이페이지로 들어가시면 바로 회원수정페이지로 링크가 됩니다.</div>
					</li>
					
					<li><span class="base_question">2.회원 탈퇴는 어떻게 하나요?</span>
						<div class="detail_answer">로그인 하신후, 왼쪽  메뉴맨밑에 회원탙퇴가 있습니다. 여기서 진행하시면 됩니다.</div>
					</li>
					
					<li><span class="base_question">3.비밀번호 찾기는 어떻게 하나요?</span>
						<div class="detail_answer">로그인 화면으로 가시면 맨밑에 '비밀번호 찾기' 가있습니다. 회원가입시 입력한, 이메일주소로
																임시비멀번호가 전송되며, 이번호로 로그인후 바꿔주시면 됩니다.</div>
					</li>
				</ul>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<style>
			#footer{
				top:0;
				clear:both;
			}
		</style>
	</div>
</body>
</html>