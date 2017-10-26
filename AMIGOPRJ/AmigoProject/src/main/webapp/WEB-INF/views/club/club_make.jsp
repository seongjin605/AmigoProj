<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<%@ include file="../header/topMenu.jsp" %>
<script src="<c:url value="/resources/script/checkEffect.js"/>"></script>
<script src="<c:url value="/resources/script/club_make.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/club_make.css"/>">
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		 
		 $(document).ajaxSend(function(e, xhr, options) {
	        xhr.setRequestHeader(header, token);
	    });

		var i = 0;
		
		/*select 값 변경할때 작동*/
		$("#area1").change(function(){
			addSelectBox();
		})

		/* 창설버튼 눌렀을때 */
		$("#joinBtn").click(function(){	
			var icons = $(".ch");
			console.log("??"+icons.length)
			
			$.each(icons,function(index,value){
				if( $(value).hasClass("view") )
					i++;
			})
			console.log("????"+i);
			
			if(i == icons.length )
				$("#club_form").attr("action","${location}/club/insertClub.amg?${_csrf.parameterName}=${_csrf.token}").submit();
			else
				alert("모두 올바르게 입력 하셔야 합니다.");
		})
	
	 	/* 취소버튼 클릭시  */
		$("#cancelBtn").click(function(){
			if(confirm("이 페이지에서 나가시겠습니까?"))
				$("#club_form").attr("method","get").attr("action","../../../index.jsp").submit();  
		})
	})
	
	/* 아작스로 다음주소 selectBox만들기 */
	function addSelectBox(){
		var area =  $("#area1 option:selected").val(); 
		
		$.ajax({
			type:"post",
			url:"${location}/club/selectBox.amg?area="+area,
			success:function(data){
				var i=0;
				var selectTag='';
				
				for(i in data){
					console.log(data[i]);
					selectTag += "<option value=";
					selectTag += data[i]+">";
					selectTag += data[i]+"</option>";
				}
				
				$("#area2").html(selectTag); 	
			},
	 	  	error:function(request,status,error){
	 	        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	 	    }	
		});
	}
</script>
<style>
	#section{
		padding-top: 200px;
		padding-bottom: 120px;
		text-align: center;
		background-image: url("<c:url value="/resources/images/club_form.jpg"/>");
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat; 
	}
</style>
</head>
<body>
	<div id="container">
		<div id="section">		
			<h3>동호회 만들기</h3>
			<div id="article">
				<form method="post" action="" id="club_form" enctype="multipart/form-data">
					<span>*모두 빠짐없이 입력하셔야 합니다.</span>
					<div id="title_field" class="club_row">
						<label for="title">동호회 제목 </label>
						<input type="text" id="title" name="cTitle" placeholder="동호회제목 입력(2자이상)">
						<span class="input_check"></span>
						<i class="fa fa-check ch" aria-hidden="true"></i>						
					</div>
					
					<div id="content_field" class="club_row">
						<label for="content">동호회 소개글 </label>
						<input type="text" id="content" name="cContent" placeholder="소개글 입력(5자이상)">
						<span class="input_check"></span>	
						<i class="fa fa-check ch" aria-hidden="true"></i>					
					</div>
					
					<div id="cpic_field" class="club_row">
						<label for="cpic">동호회 대표사진 </label>
						<input type="file" id="cpic" name="cpic" value="사진" >
						<span class="input_check"></span>						
					</div>
				
					<div id="area_field" class="club_row">
						<label for="area">활동 지역</label>
						<select name="cArea1" id="area1">
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="인천">인천</option>
							<option value="대전">대전</option>
							<option value="부산">부산</option>
							<option value="대구">대구</option>
							<option value="광주">광주</option>
							<option value="울산">울산</option>
						</select>
								
						<select name="cArea2" id="area2">
							<option value="관악구">관악구</option>
							<option value="강남구">강남구</option>
							<option value="용산구">용산구</option>
							<option value="강서구">강서구</option>
							<option value="금천구">금천구</option>
							<option value="송파구">송파구</option>
						</select>		
						<span class="input_check"></span>				
					</div>
					
					<div id="hobby_field" class="club_row">
						<label for="hobby">관심사</label>
						<select name="cHobby" id="hobby">
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
						<span class="input_check"></span>
					</div>
					<div class="submit_group">
						<input type="button" id="joinBtn" value="만들기">
						<input type="button" id="cancelBtn" value="취소">
					</div>
					
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
			</div>
		</div>
		
		<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b29fce79e611838c807e77bde81127dc&libraries=clusterer"></script>
		<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b29fce79e611838c807e77bde81127dc"></script>
		<script>
		var map = new daum.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
			center : new daum.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표
			level : 12
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

		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new daum.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

		// 지도 타입 변경 컨트롤을 생성한다
		var mapTypeControl = new daum.maps.MapTypeControl();

		// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
		map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new daum.maps.Marker({
			// 지도 중심좌표에 마커를 생성합니다 
			position : map.getCenter()
		});
		// 지도에 마커를 표시합니다
		marker.setMap(map);

		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {

			// 클릭한 위도, 경도 정보를 가져옵니다 
			var latlng = mouseEvent.latLng;

			// 마커 위치를 클릭한 위치로 옮깁니다
			marker.setPosition(latlng);

			var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
			message += '경도는 ' + latlng.getLng() + ' 입니다';

			var resultDiv = document.getElementById('clickLatlng');
			resultDiv.innerHTML = message;

		});
	</script>
	<%@ include file="../footer/footer.jsp" %>
	</div>
</body>
<style>
	#footer{
		top:0;
	
	}
</style>
</html>