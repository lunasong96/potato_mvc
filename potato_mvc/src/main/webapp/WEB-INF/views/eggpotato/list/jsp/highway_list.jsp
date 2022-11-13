<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고속도로별 휴게소</title>
<link rel="shortcut icon"  href="../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../../common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/user_navi2.css"/><%-- 네비바 필요한 사람만 --%>
<link rel="stylesheet" type="text/css" href="../css/highway_list.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- 지도api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=38b2d30b9d0b819b032f0a5f8dc950c7"></script>
<script type="text/javascript">

</script>

</head>
<body>
<div class="wrap">

<!-- header -->
<%@ include file="../../common/jsp/user_header.jsp" %>
<!-- header end-->

<!-- container -->
<div class="container">
<%-- 휴게소리스트용 --%>
<div class="wrap-navi">
		<div class="navi">
			<ul class="navibar">
				<li class="navi-item">
					<a class="navi-link" href="list_view_all.jsp">전체 휴게소</a>
				</li>
				<li class="navi-item">
					<a class="navi-link" href="highway_list.jsp">고속도로별 휴게소</a>
				</li>
				<li class="blank"></li>
				<li class="navi-item">
					<a class="navi-link" href="do_list.jsp">도별 휴게소</a>
				</li>
				<li class="navi-item">
					<a class="navi-link" href="exfood_list.jsp">ex-FOOD</a>
				</li>
			</ul>
		</div>
</div> 
<%-- 네비바 끝 --%>
<!-- 건들지마 -->
			<!--메인 영역 -->
			<div class="main">
				<!-- 카테고리명 -->
				<div class="cat-name">고속도로별 휴게소</div>
			<div class="select-line">
				<!-- 지도 -->
				<div style="padding: 50px 50px;">
				<div id="map" style="width:930px;height:1111px;">
				<script type="text/javascript">
			    var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
			        center : new kakao.maps.LatLng(36.4444, 127.8702), // 지도의 중심좌표
			        level : 12 // 지도의 확대 레벨
			    });

			    // 마커 클러스터러를 생성합니다
			    // 마커 클러스터러를 생성할 때 disableClickZoom 값을 true로 지정하지 않은 경우
			    // 클러스터 마커를 클릭했을 때 클러스터 객체가 포함하는 마커들이 모두 잘 보이도록 지도의 레벨과 영역을 변경합니다
			    // 이 예제에서는 disableClickZoom 값을 true로 설정하여 기본 클릭 동작을 막고
			    // 클러스터 마커를 클릭했을 때 클릭된 클러스터 마커의 위치를 기준으로 지도를 1레벨씩 확대합니다
			    var clusterer = new kakao.maps.MarkerClusterer({
			        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
			        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
			        minLevel: 10, // 클러스터 할 최소 지도 레벨
			        disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
			    });

			    // 데이터를 가져오기 위해 jQuery를 사용합니다
			    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
			    $.get("/download/web/data/chicken.json", function(data) {
			        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
			        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
			        var markers = $(data.positions).map(function(i, position) {
			            return new kakao.maps.Marker({
			                position : new kakao.maps.LatLng(position.lat, position.lng)
			            });
			        });

			        // 클러스터러에 마커들을 추가합니다
			        clusterer.addMarkers(markers);
			    });

			    // 마커 클러스터러에 클릭이벤트를 등록합니다
			    // 마커 클러스터러를 생성할 때 disableClickZoom을 true로 설정하지 않은 경우
			    // 이벤트 헨들러로 cluster 객체가 넘어오지 않을 수도 있습니다
			    kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {

			        // 현재 지도 레벨에서 1레벨 확대한 레벨
			        var level = map.getLevel()-1;

			        // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
			        map.setLevel(level, {anchor: cluster.getCenter()});
			    });
				</script>
				</div>
			</div>
			<div style="padding:50px 0">
			<input type="button" value="경부" class="btn">
			<input type="button" value="남해" class="btn">
			<input type="button" value="서해안" class="btn">
			<input type="button" value="영동" class="btn">
			<input type="button" value="중부" class="btn">
			</div>
		</div>	
			</div>
<!-- 건들지마 -->
</div>
<!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->

</div>
</body>
</html>