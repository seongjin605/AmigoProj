<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet"
	href="https://formden.com/static/cdn/bootstrap-iso.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<title>동호회 메인페이지</title>
<!-- 페이지 반으로갈라서 스크롤 기능을 넣음 -->
<style>
#body {
	margin-top: 150px;
}

#scroll {
	text-align: left;
	height: 900px;
	overflow-y: scroll;
}
/* 전체 동호회 목록과 select 태그와 간격을 50px 떨어뜨림 */
#allClub {
	margin-top: 50px;
}
</style>
</head>
<body>

	<jsp:include page="topMenu.jsp" />

	<div class="bootstrap-iso" id="body">
		<div class="container-fuild">
			<!-- 중앙 이미지 클릭 부분 -->
			<div id="scroll" class="col-md-6">
				<h3 id="thumbnails-custom-content">
					내가 가입한 동호회
					<!--Custom content-->
				</h3>
				<div class="bs-example"
					data-example-id="thumbnails-with-custom-content">
					<div class="row">
						<div class="col-sm-6 col-md-4">
							<!-- 썸네일 클래스 선언 -->
							<div class="thumbnail">
								<img src="img/trip.png" class="img-circle img-responsive"
									alt="img-thumbnail">
								<div class="caption">
									<h3>아웃도어/여행</h3>
									<p>Cras justo odio, dapibus ac facilisis in, egestas eget
										quam. Donec id elit non mi porta gravida at eget metus. Nullam
										id dolor id nibh ultricies vehicula ut id elit.</p>
									<p>
										<a href="clubDash.jsp" class="btn btn-primary" role="button">참여</a>
									</p>
								</div>
							</div>
						</div>
						<!-- 나의 첫번째 동호회 썸네일 -->
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="img/sports.jpg" class="img-circle img-responsive"
									alt="img-circle img-thumbnail">
								<div class="caption">
									<h3>운동/스포츠</h3>
									<p>Cras justo odio, dapibus ac facilisis in, egestas eget
										quam. Donec id elit non mi porta gravida at eget metus. Nullam
										id dolor id nibh ultricies vehicula ut id elit.</p>
									<p>
										<a href="clubDash.jsp" class="btn btn-primary" role="button">참여</a>
									</p>
								</div>
							</div>
						</div>
						<!-- 나의 두번째 동호회 썸네일 -->
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="img/book.jpg" class="img-circle img-responsive"
									alt="img-thumbnail">
								<div class="caption">
									<h3>인문학/책/글</h3>
									<p>Cras justo odio, dapibus ac facilisis in, egestas eget
										quam. Donec id elit non mi porta gravida at eget metus. Nullam
										id dolor id nibh ultricies vehicula ut id elit.</p>
									<p>
										<a href="clubDash.jsp" class="btn btn-primary" role="button">참여</a>
									</p>
								</div>
							</div>
						</div>
						<!-- 나의 세번째 동호회 썸네일 -->
					</div>

					<div class="alert alert-info" role="alert">
						<h2 class="text-primary">당신이 원하는 동호회에 참여해보세요!</h2>
						<h5>
							<strong>장소</strong>
						</h5>
						<div class="row">
							<div class="col-lg-12">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="원하는 장소를 검색해보세요!"> <span
										class="input-group-btn">
										<button class="btn btn-primary" type="button">
											검색&nbsp;<i class="fa fa-search" aria-hidden="true"></i>
										</button>
									</span>
								</div>
								<!-- /input-group -->
							</div>
							<!-- /.col-lg-6 -->
						</div>
						<!-- /.row -->
						<h5>
							<strong>카테고리(대)</strong>
						</h5>
						<!-- input과 동일하게 넓이가 100% -->
						<select class="form-control">
							<option>아웃도어/여행</option>
							<option>운동/스포츠</option>
							<option>인문학/책/글</option>
							<option>업종/직무</option>
							<option>외국/언어</option>
							<option>문화/공연</option>
							<option>음악/악기</option>
							<option>공예/만들기</option>
							<option>댄스/무용</option>
							<option>봉사활동</option>
							<option>사교/인맥</option>
							<option>차/오토바이</option>
							<option>사진</option>
							<option>야구관람</option>
							<option>게임/오락</option>
							<option>요리/제조</option>
							<option>반려동물</option>
							<option>가족/결혼</option>
							<option>이색/독특</option>
							<option>기타</option>
						</select>
						<h5>
							<strong>카테고리(소)</strong>
						</h5>
						<!-- input과 동일하게 넓이가 100% -->
						<select class="form-control">
							<option>대분류의 소분류들1</option>
							<option>대분류의 소분류들2</option>
							<option>대분류의 소분류들3</option>
						</select>
					</div>
					<!-- .well well-lg -->

					<!--검색 부분 아래 동호회 목록들 시작  -->
					<div class="alert alert-success" role="alert">

						<form class="form-inline">
							<div class="form-group">
								<h5>
									<strong>검색결과 123개</strong>
								</h5>
							</div>
							<div class="form-group pull-right">
								<select class="selectpicker">
									<option>전체보기</option>
									<option>업데이트순</option>
									<option>회원수</option>
								</select>

							</div>
						</form>

						<div class="bs-example" id="allClub"
							data-example-id="thumbnails-with-custom-content">
							<div class="row">
								<div class="col-sm-6 col-md-4">
									<!-- 썸네일 클래스 선언 -->
									<div class="thumbnail">
										<img src="img/trip.png" class="img-responsive"
											alt="img-thumbnail">
										<div class="caption">
											<h3>아웃도어/여행</h3>
											<p>Cras justo odio, dapibus ac facilisis in, egestas eget
												quam. Donec id elit non mi porta gravida at eget metus.
												Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
											<p>
												<a href="#" class="btn btn-primary" role="button">참여</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-4">
									<div class="thumbnail">
										<img src="img/sports.jpg" class="img-responsive"
											alt="img-thumbnail">
										<div class="caption">
											<h3>운동/스포츠</h3>
											<p>Cras justo odio, dapibus ac facilisis in, egestas eget
												quam. Donec id elit non mi porta gravida at eget metus.
												Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
											<p>
												<a href="#" class="btn btn-primary" role="button">참여</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-4">
									<div class="thumbnail">
										<img src="img/book.jpg" class="img-responsive"
											alt="img-thumbnail">
										<div class="caption">
											<h3>인문학/책/글</h3>
											<p>Cras justo odio, dapibus ac facilisis in, egestas eget
												quam. Donec id elit non mi porta gravida at eget metus.
												Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
											<p>
												<a href="#" class="btn btn-primary" role="button">참여</a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- .alert alert-success 끝 -->
				</div>
			</div>
		</div>
	</div>

	<div class="bootstrap-iso">
		<div class="col-md-6">
			<div id="map" style="width: 100%; height: 900px;"></div>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b29fce79e611838c807e77bde81127dc&libraries=clusterer"></script>
	<script>
		var map = new daum.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
			center : new daum.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표
			level : 14
		// 지도의 확대 레벨
		});

		// 마커 클러스터러를 생성합니다
		// 마커 클러스터러를 생성할 때 disableClickZoom 값을 true로 지정하지 않은 경우
		// 클러스터 마커를 클릭했을 때 클러스터 객체가 포함하는 마커들이 모두 잘 보이도록 지도의 레벨과 영역을 변경합니다
		// 이 예제에서는 disableClickZoom 값을 true로 설정하여 기본 클릭 동작을 막고
		// 클러스터 마커를 클릭했을 때 클릭된 클러스터 마커의 위치를 기준으로 지도를 1레벨씩 확대합니다
		var clusterer = new daum.maps.MarkerClusterer({
			map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
			averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
			minLevel : 10, // 클러스터 할 최소 지도 레벨
			disableClickZoom : true
		// 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
		});

		// 데이터를 가져오기 위해 jQuery를 사용합니다
		// 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
		$.getJSON("json/item.json", function(data) {
			// 데이터에서 좌표 값을 가지고 마커를 표시합니다
			// 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
			var markers = $(data.positions).map(function(i, position) {
				return new daum.maps.Marker({
					position : new daum.maps.LatLng(position.lat, position.lng)
				});
			});

			// 클러스터러에 마커들을 추가합니다
			clusterer.addMarkers(markers);
		});

		// 마커 클러스터러에 클릭이벤트를 등록합니다
		// 마커 클러스터러를 생성할 때 disableClickZoom을 true로 설정하지 않은 경우
		// 이벤트 헨들러로 cluster 객체가 넘어오지 않을 수도 있습니다
		daum.maps.event.addListener(clusterer, 'clusterclick',
				function(cluster) {

					// 현재 지도 레벨에서 1레벨 확대한 레벨
					var level = map.getLevel() - 1;

					// 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
					map.setLevel(level, {
						anchor : cluster.getCenter()
					});
				});
	</script>
</body>
</html>
