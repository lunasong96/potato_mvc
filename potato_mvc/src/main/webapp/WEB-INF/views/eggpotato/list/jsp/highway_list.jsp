<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고속도로별 휴게소</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_navi2.css"/><%-- 네비바 필요한 사람만 --%>
<link rel="stylesheet" type="text/css" href="css/list/highway_list.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- 지도api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=76d1c997f3e1435db1c67138826b6555"></script>
<script type="text/javascript">

var pinNum;

$(function(){
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(36.1752197169176, 127.7488279073141), // 지도의 중심좌표
	        level: 12 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	$(".btn").click(function(){
		pinNum=$(this).val();
		
	
		if(pinNum=="경부"){
			// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
			var positions = [
					
					<c:forEach var="mapPin" items="${pin1}">
			    {
			        content: '<div>${mapPin.name}<br><a href="user_detailed.do?restarea_idx=${mapPin.restarea_idx }" style="color: #593000; font-weight: bold;">상세보기</a></div>', 
			        latlng: new kakao.maps.LatLng(${mapPin.lat}, ${mapPin.lng})
			    },
					</c:forEach>
			];
		}
		
		if(pinNum=="남해"){
			// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
			var positions = [
					
					<c:forEach var="mapPin" items="${pin2 }">
			    {
			        content: '<div>${mapPin.name}<br><a href="user_detailed.do?restarea_idx=${mapPin.restarea_idx }" style="color: #593000; font-weight: bold;">상세보기</a></div>', 
			        latlng: new kakao.maps.LatLng(${mapPin.lat}, ${mapPin.lng})
			    },
					</c:forEach>
			];
		}
		
		if(pinNum=="서해안"){
			// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
			var positions = [
					
					<c:forEach var="mapPin" items="${pin3 }">
			    {
			        content: '<div>${mapPin.name}<br><a href="user_detailed.do?restarea_idx=${mapPin.restarea_idx }" style="color: #593000; font-weight: bold;">상세보기</a></div>', 
			        latlng: new kakao.maps.LatLng(${mapPin.lat}, ${mapPin.lng})
			    },
					</c:forEach>
			];
		}
		
		if(pinNum=="영동"){
			// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
			var positions = [
					
					<c:forEach var="mapPin" items="${pin4 }">
			    {
			        content: '<div>${mapPin.name}<br><a href="user_detailed.do?restarea_idx=${mapPin.restarea_idx }" style="color: #593000; font-weight: bold;">상세보기</a></div>', 
			        latlng: new kakao.maps.LatLng(${mapPin.lat}, ${mapPin.lng})
			    },
					</c:forEach>
			];
		}
		
		if(pinNum=="중부"){
			// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
			var positions = [
					
					<c:forEach var="mapPin" items="${pin5 }">
			    {
			        content: '<div>${mapPin.name}<br><a href="user_detailed.do?restarea_idx=${mapPin.restarea_idx }" style="color: #593000; font-weight: bold;">상세보기</a></div>', 
			        latlng: new kakao.maps.LatLng(${mapPin.lat}, ${mapPin.lng})
			    },
					</c:forEach>
			];
		}
	
	
	for (var i = 0; i < positions.length; i ++) {
	    // 마커를 생성합니다
	    	var marker = new kakao.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng // 마커의 위치
	    });

	    // 마커에 표시할 인포윈도우를 생성합니다 
	    var infowindow = new kakao.maps.InfoWindow({
	        content: positions[i].content // 인포윈도우에 표시할 내용
	    });

	    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
	    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	    kakao.maps.event.addListener(marker, 'click', clickListener(map, marker, infowindow));
	    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	    kakao.maps.event.removeListener(marker, 'click', clickOutListener(infowindow));
	}

	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	    return function() {
	        infowindow.open(map, marker);
	    };
	}
	
	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function clickListener(map, marker, infowindow) {
	    return function() {
	    	position, content
	    };
	}
	
	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}
	
	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function clickOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}
	})
});

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
					<a class="navi-link" href="allList.do">전체 휴게소</a>
				</li>
				<li class="navi-item">
					<a class="navi-link" href="mapPin.do">고속도로별 휴게소</a>
				</li>
				<li class="blank"></li>
				<li class="navi-item">
					<a class="navi-link" href="doMap.do">도별 휴게소</a>
				</li>
				<li class="navi-item">
					<a class="navi-link" href="exFood.do">ex-FOOD</a>
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
<form action="mapPin.do" id="pinFrm">
	<input type="hidden" id="line_idx" name="line_idx"/>
</form>
</body>
</html>