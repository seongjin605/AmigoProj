<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../header/topMenu.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#container{
		background-color: white;
		padding-top: 200px;
	}
	#content{
		width:100%;
		height:100%;
	}

	.input_box{
		margin-bottom: 20px;
		border-bottom: 1px solid #eee;
		margin-left: 40px;
	}
	
	label{
		display:inline-block;
		text-align:left;
		width:200px;
	}
	input{
		font-family: 'Jeju Gothic', serif;
		outline:none;
		width:170px;
		height:30px;
		margin-bottom: 5px;
	}
	
	input[type="button"]{
		font-family: 'Jeju Gothic', serif;
		background-color: rgba(50,50,50,.4);
		outline: none;
		width: 100px;
		height: 35px;
		cursor: pointer;
		margin-left:40px;
		border-radius:2px;
	}
	.input_box > #category{
		width:173px;
		height:40px;
		border-radius: 2px;
	}
	
	.article-clubs{
		position: relative;
		display:block;
		top:0;
		width:100%;
	}
	
	#article2 > .first-article{
		display:flex;
		flex-flow:row wrap;
		margin:0 auto;
		text-align:center;
	}
	#article2 > .first-article > .img_box{
		margin:10px 12px 40px 12px;
		flex:4 4 400px;
		width:100%;
	}
	
	#article2 > .first-article > .item-box{
		position:relative;
		z-index:1;
		overflow:hidden;
		box-shadow:0 1px 1px #332c2c, 
				   1px 2px 2px #4a4949, 
				   2px 3px 4px #807c7c;
		box-sizing: border-box;
	}
	
	#article2 > .first-article > .item-box img{
		display:block;
		width:100%;
		opacity:0.85;
	}
	
	#article2 > h2{
		text-align: center;
		font-weight: bold;
		font-size: 30px;
	}
	
	div.item-box:hover{
		background:rgba(0,0,0,.9);
	}  
	
/* 	 div.item-box:hover .border-line{
		border: 1.5px solid #b49759;
	}  */
	
	.supply-comment{
		position:absolute;
		top:45%;
		left:40%;
		z-index:1;
		font-weight:bold;
		font-size:1.4em;
		color:rgba(255,255,255,.9);
	}	
	
	.test{
		background-color: white;
	}
	input:-webkit-autofill { -webkit-box-shadow: 0 0 0 1000px white inset!important;}
	input:-webkit-autofill { transition: background-color 5000s ease-in-out 0s;}
</style>
</head>
<body>
	<div id="container">
		<div id="content">
			<div id="article1">
				<div class="input_box row_1">
					<label for="keyword">키워드 검색</label>
					<input type="text" id="keyword" value=${keyword}>
					<input type="button" id="btn_search" value="검색">
				</div>
				
				<div class="input_box row_2">
					<label for="category">카테고리</label>
					<select name="category" id="category">
						<option value="자연" selected>자연</option>
						<option value="여행/캠핑">여행/캠핑</option>
						<option value="자동차">자동차</option>
						<option value="운동/스포츠">운동/스포츠</option>
						<option value="동물/반려견">동물/반려견</option>
						<option value="공부/스터디">공부/스터디</option>
						<option value="스키/보드">스키/보드</option>
						<option value="자전거">자전거</option>
						<option value="등산">등산</option>
						<option value="술/칵테일">술/칵테일</option>
						<option value="공연/전시">공연/전시</option>
						<option value="문화">문화</option>
						<option value="패션">패션</option>
						<option value="게임">게임</option>
						<option value="전공/직장">전공/직장</option>
						<option value="영화">영화</option>
						<option value="음악">음악</option>
						<option value="사진">사진</option>
						<option value="독서">독서</option>
						<option value="기타">기타/이색</option>
						</select>
				</div>
				
				<div class="input_box row_3">
					<label for="area">지역</label>
					<input type="text" id="area">
				</div>
			</div>
			
	
			<div id="article2" class="article-clubs">
				<h2>검색결과</h2>
				<div class="first-article">
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/nature.jpg">
								<span class="supply-comment">#자연</span>
							<!-- </div> -->
						</a>
						<div class="test">
						</div>
					</div>
							
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/tour.jpg">
								<span class="supply-comment">#여행/캠핑</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/supercar.jpg">
								<span class="supply-comment">#자동차</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/workout.jpg">
								<span class="supply-comment">#운동/스포츠</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/animals.png">
								<span class="supply-comment">#동물/반려견</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/study.jpg">
								<span class="supply-comment">#공부/스터디</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">	
							<!-- <div class="item-box"> -->
								<img src="images/ski.jpg">
								<span class="supply-comment">#스키/보드</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/bycicle.jpg">
								<span class="supply-comment">#자전거</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/climb.jpg">
								<span class="supply-comment">#등산</span>
							<!-- </div> -->
						</a>
					</div>
							
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/cocktail.jpg">
								<span class="supply-comment">#술/칵테일</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/concert.jpg">
								<span class="supply-comment">#공연/전시</span>
							<!-- </div> -->
						</a>
					</div>
							
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/culture.jpg">
								<span class="supply-comment">#문화</span>
							<!-- </div> -->
						</a>
					</div>
							
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/fashion.jpg">
								<span class="supply-comment">#패션</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/game.jpg">
								<span class="supply-comment">#게임</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/work.jpg">
								<span class="supply-comment">#전공/직장</span>
						<!-- 	</div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/movie.jpg">
								<span class="supply-comment">#영화</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/music.jpg">
								<span class="supply-comment">#음악</span>
							<!-- </div> -->
						</a>
					</div>
						
					<div class="img_box item-box">
						<a href="#">
							<!-- <div class="item-box"> -->
								<img src="images/picture.jpg">
								<span class="supply-comment">#사진</span>
							<!-- </div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">				
							<!-- <div class="item-box"> -->
								<img src="images/read.jpg">
								<span class="supply-comment">#독서</span>
						<!-- 	</div> -->
						</a>
					</div>
					
					<div class="img_box item-box">
						<a href="#">
							<img src="images/etc.jpg">
							<span class="supply-comment">#기타/이색</span>
						</a>
					</div>
				</div>
			</div>
		</div>	<!-- content -->
	</div>	
	
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=09508bb302d3ff7ddd8331e9cdf0e2f1">
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
	
		var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
	</script>

<%@ include file ="../footer/footer.jsp"%>
</body>
</html>