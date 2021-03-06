<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//liD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.lid">
<html>
<head>
<link rel="stylesheet"
	href="https://formden.com/static/cdn/bootstrap-iso.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/index.css"/> 

<script>
	$(function(){
		/* $(".parallax-container").parallax({imageSrc:"door.jpg"})  */
 		 if($('.parallax-window').length){
			 $('.parallax-window').parallax();
		 }  
	});
</script> 
</head>
<body>
	<div class="wrapper">
	    <jsp:include page="topMenu.jsp"></jsp:include>
		
		<div id="visualMain">
			<video muted="muted" autoplay loop id="vid"> 
				<source src="video/timesquare5.mp4" type="video/mp4">
			</video>
		</div>
		
		<!-- 첫번째 본문(시작을알림) -->
		<div class="section">
			<div id="article_1">
				<div class="caption">
					<h1>Welcome amiGo</h1>
					<p>
					${sessionScope.id}님 환영합니다.<br>
						amiGo 홈페이지에 오신걸 환영합니다.
						<br>
						amiGo에서 소중한 사람들과  소중한 취미를 공유하세요.
						<br>
		          				여러분의 시간이 늘 행복하고 소중한 기억들로 가득하기를 바랍니다. 
					</p>
				</div>
			</div>	
			
			<!-- 2번째 본문 (서비스및,소개)-->
			<div id="article_2" class="article-parallax">
				<div class="parallax-window" id="parallax-image" data-parallax="scroll">	
					<div class="img-text">
						<a href="#">
							<img id="first-sub" src="images/camp.jpg" width="100%" height="700px">
							<div class="border-line"></div>
							<div class="img_caption ">
								<h1 class="main-comment">Amigo Introduce</h1>
								<span class="sub-comment">소개보기</span>
							</div>
						</a>
					</div>
					<div class="img-text_2">
						<a href="amigo_service">
							<img id="second-sub" src="images/society5.jpg" width="100%" height="700px">
							<div class="border-line"></div>
							<div class="img_caption ">
								<h1 class="main-comment">Amigo Service</h1>
								<span class="sub-comment">서비스보기</span>
							</div>
						</a>
					</div>
				</div>	
			</div>
			
			<!-- 3번째 본문(현재 존재하는 동호회 보기 및 검색) -->
			<div id="article_3" class="article-parallax">
				<div class="parallax-window" id="parallax-image" data-parallax="scroll" data-image-src="images/door.jpg" >
					<div class="content_text">
						<a href="#">
							<div class="border-line"></div>
							<div class="img_caption">
								<h1 class="main-comment font-change">AmiGo Societies</h1>
								<span class="sub-comment">#동호회 보기/검색</span>
							</div>
						</a>
					</div>
				</div>
			</div> 
			
			
			<!-- 4번째 본문 (동호회 분류 보기)  -->
			<div id="article_4" class="article-clubs">
				<h2>동호회 테마별</h2>
				<div class="first-article">
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/nature.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#자연</span>
							<!-- </div> -->
						</a>
					</div>
							
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/tour.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#여행/캠핑</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/supercar.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#자동차</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/workout.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#운동/스포츠</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/animals.png">
								<div class="border-line"></div>
								<span class="supply-comment">#동물/반려견</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/study.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#공부/스터디</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">	
							<!-- <div class="item-box"> -->
								<img src="images/ski.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#스키/보드</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/bycicle.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#자전거</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/climb.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#등산</span>
							<!-- </div> -->
						</a>
					</div>
							
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/cocktail.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#술/칵테일</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/concert.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#공연/전시</span>
							<!-- </div> -->
						</a>
					</div>
							
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/culture.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#문화</span>
							<!-- </div> -->
						</a>
					</div>
							
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/fashion.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#패션</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/game.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#게임</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/work.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#전공/직장</span>
						<!-- 	</div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/movie.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#영화</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/music.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#음악</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/picture.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#사진</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">				
							<!-- <div class="item-box"> -->
								<img src="images/read.jpg">
								<div class="border-line"></div>
								<span class="supply-comment">#독서</span>
						<!-- 	</div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<img src="images/etc.jpg">
							<div class="border-line"></div>
							<span class="supply-comment">#기타/이색</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
<script src="script/parallax.js"></script>
</body>
</html>