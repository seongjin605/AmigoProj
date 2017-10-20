<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="css/service.css"/> 
<script>
$(function(){
	 if($('.parallax-window').length){
	 	$('.parallax-window').parallax();
 	}
});
</script>
<style>
	
</style>
</head>
<body>
	<div id="sev_container">
		<jsp:include page="topMenu.jsp"></jsp:include>
		<div id="img_box">
			<div id="main-img"></div>
			<div class="img-over"></div>
			<h3>amiGo의 서비스에 대해</h3>
		</div> 
		
		<div id="section" >
			<h3> 서비스 </h3>
			<div id="first-article">
				<img src="images/cooperation.jpg">
			</div>
			<span> 저희 amiGo는 혼자보단 두명, 두명보단 여러명, 즉 비슷한 취미나 관심사를<br>
				 가진사람들끼리 인맥을 형성하여 즐거움, 더 빠른 노하우 습득, 정보공유등을 <br>
				 목적으로하고 있습니다.허나 이러한 활동을 하기위해선 먼저 네트워크 망을 구성해야 합니다.<br>
			     amiGo에서는 이러한 네트워크 망을 구축하기위해
			          첫번째 단계인 <mark><u><i>인맥형성</i></u></mark> 이 주 서비스입니다.</span>
			
			<div id="second-article">
				<div class="icon_box">
					<i class="fa fa-users" aria-hidden="true"></i>
					<div class="icon_caption">
						<h2>인맥형성</h2>
						<span>amiGo의 주 서비스인 인맥형성을 할 수 있습니다.</span>
					</div>
				</div>
				
				<div class="icon_box">
					<i class="fa fa-question-circle" aria-hidden="true"></i>
					<div class="icon_caption">
						<h2>정보공유</h2>
						<span>여러정보를 공유함으로서, 좀더재밌고, 빠른 노하우 습득이 가능합니다.</span>
					</div>
				</div>
				
				<div class="icon_box">
					<i class="fa fa-street-view" aria-hidden="true"></i>
					<div class="icon_caption">
						<h2>위치기반</h2>
						<span>API를 이용하여 정확학 위치를 제공하여 원하는 위치를 찾을 수 있습니다.</span>
					</div>
				</div>
				
				<div class="icon_box">
	 				<i class="fa fa-language" aria-hidden="true"></i>
	 				<div class="icon_caption">
						<h2>스펙취업</h2>
						<span>제일 관심도가 높은분야로서 여러가지 스펙과 취업에 관한 정보를 공유할 수 있습니다.</span>
					</div>
	 			</div> 
			</div>
		
			<div id="article_3" class="article-parallax">
				<div class="parallax-window" id="parallax-image" data-parallax="scroll" data-image-src="images/service1.jpg" >
					<div class="content_text">-->
						<div class="img_caption">
							<h1 class="main-comment">인맥늘리기</h1>
							<span class="sub-comment">현대사회는 인맥사회라고 불릴만큼 인맥이 많이 중요해진 시대입니다. <br>저희 amiGo에서는 서로 비슷한 취미를 가진 사람들끼리 같이 즐길수있도록 도움을드리며<br>, 인맥상승에 큰 도움을 줍니다. </span>
						</div>
					</div>
				</div>
				
				<div class="parallax-window" id="parallax-image" data-parallax="scroll" data-image-src="images/service2.jpg" >
					<div class="content_text">					
						<div class="img_caption">
							<h1 class="main-comment">정보공유</h1>
							<span class="sub-comment">현재 정보화 사회라고 불릴만큼 많은 정보를 아는것이 중요해졌습니다.<br> 혼자보다는 여러명이서 같이 활동했을시에 얻을수있는 노하우 정보가 더 많습니다.<br>이렇게 여러명이서 비슷한 취미나 관심사를 즐길수있도록 저희가 연결을 도와드립니다.</span>
						</div>
					</div>
				</div>
				
				<div class="parallax-window" id="parallax-image" data-parallax="scroll" data-image-src="images/service3.jpg" >
					<div class="content_text">							
						<div class="img_caption">
							<h1 class="main-comment">위치기반</h1>
							<span class="sub-comment">MAP API를 이용하여 이용자가 원하는 위치를 정확하게 검색해주고<br> 동호회에 가입후 활동하는 구체적인 장소도 명확히 표기해드립니다.<br> 원하는 동호회 검색시 MAP을 지원하여 좀더 시각적으로 보기 편하게 표현하였습니다.</span>
						</div>
					</div>
				</div>
				
				<div class="parallax-window" id="parallax-image" data-parallax="scroll" data-image-src="images/service4.jpg" >
					<div class="content_text">
						<div class="img_caption">
							<h1 class="main-comment">스펙/취업</h1>
							<span class="sub-comment">현재 모든연령대에서 제일관심사가 높은분야로 영어스펙이 나왔습니다.<br> 취직을위해서, 또는 취직후에도 승진을위해서 많은이들이 영어공부에 매진합니다.<br> 허나 혼자하기 쉽지않은게 현실입니다.<br> 
								같이함으로써 덜 지루하며, 서로 정보도공유하고, 좀더 빨리 노하우도 습득할 수있습니다.<br>지금 당장 참여해보세요! </span>
						</div>
					</div>
				</div>
			</div> 
		</div> 
	</div>
<script src="script/parallax.js"></script>
</body>
</html>