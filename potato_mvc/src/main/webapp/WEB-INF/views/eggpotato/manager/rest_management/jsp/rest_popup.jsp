<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴게소 상세창</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/common/swiper-bundle2.min.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/rest_management/rest_popup.css"/>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f17857e30d029f485667a3cf426b0a8e"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
	// 음식 사진 슬라이드
    var swiper = new Swiper(".mySwiper", {
    	loop: 1,
    	slidesPerView: 4,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
    });
    
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 
   
	
	
	$(".bookmark-icon-btn").click(function() {
		$(".bookmark-icon-btn").toggleClass("bibtn-add");
		$(".bi-bookmark ").toggleClass("bb-add");
	})
	
	$(".report-btn").click(function() {
		window.open("report_review_popup.jsp","popup_report",
		"width=520,height=470,top=203,left=1336");
	})
	
})

	//하트아이콘
	$(document).on("click", ".heart-btn", function() {
		$(this).toggleClass("hb-fill");
	})
</script>
</head>
<body>
<div class="wrap">


<!-- container -->
<div class="containers">
	<div class="title-wrap">
		<span><c:out value="${ detail.name }"/></span>
		<div class="rate-wrap">
			<div class="star-rate">
				<span class="star-blank"></span>
				<div class="star-wrap">
					<span class="star" style="width: ${ detail.totalRating*20 }%"></span>
				</div>
				<span class="rate-txt"><c:out value="${ detail.totalRating }"/></span>
			</div>
			<div class="bookmark-wrap">
				<div>
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bookmark" viewBox="0 0 16 16">
					  <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
					</svg>
				</div>
				<span class="bookmark-txt"><c:out value="${ detail.bookmark_cnt }"/></span>
			</div>
		</div>
	</div>
	
	<div class="slide-wrap">
		<div class="swiper mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="css/images/곡성.jpg" alt="휴게소음식사진" class="foodimg">
					<div class="food-detailed-wrap">
						<span class="food-name">누구나 돌솥 비빔밥</span>
						<span class="food-price">8900원</span>
						<p class="food-feature">2015년 한국도로공사 휴게소 대표메뉴 평가에서 전국 1위를 수상한 EX푸드</p>
						<p class="food-ingredient">무생체, 표고버섯, 콩나물, 고사리, 단배추, 참나물, 계란, 김치, 깍두기</p>
					</div>
					<p class="slide-img-title">
						대표
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
						  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						</svg>
					</p>
				</div>
				
				<div class="swiper-slide">
					<img src="css/images/곡성.jpg" alt="휴게소음식사진" class="foodimg">
					<div class="food-detailed-wrap">
						<span class="food-name">누구나 돌솥 비빔밥</span>
						<span class="food-price">8900원</span>
						<p class="food-feature">2015년 한국도로공사 휴게소 대표메뉴 평가에서 전국 1위를 수상한 EX푸드</p>
						<p class="food-ingredient">무생체, 표고버섯, 콩나물, 고사리, 단배추, 참나물, 계란, 김치, 깍두기</p>
					</div>
					<p class="slide-img-title">
						대표
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
						  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						</svg>
					</p>
				</div>
			</div>
	    </div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>
	</div>
	
	<div class="map-bookmark">
		<div class="map-wrap">
			<span>지도</span>
			<div id="map" class="kk-map"></div>
		</div>
	</div>
	
	<div class="amenities-icon-wrap">
		<span>편의시설 구분</span>
		<div class="icon-wrap">
			<div class="amenities-icon">
				<img alt="편의시설아이콘" src="css/images/sleep.png">
				<span>수면실</span>
			</div>
			<div class="amenities-icon">
				<img alt="편의시설아이콘" src="css/images/shower.png">
				<span>샤워실</span>
			</div>
			<div class="amenities-icon">
				<img alt="편의시설아이콘" src="css/images/washing.png">
				<span>세탁실</span>
			</div>
			<div class="amenities-icon">
				<img alt="편의시설아이콘" src="css/images/rest.png">
				<span>쉼터</span>
			</div>
			<div class="amenities-icon">
				<img alt="편의시설아이콘" src="css/images/barber.png">
				<span>이발소</span>
			</div>
			<div class="amenities-icon">
				<img alt="편의시설아이콘" src="css/images/baby.png">
				<span>수유실</span>
			</div>
			<div class="amenities-icon">
				<img alt="편의시설아이콘" src="css/images/pharmacy.png">
				<span>약국</span>
			</div>
			<div class="amenities-icon">
				<img alt="편의시설아이콘" src="css/images/market.png">
				<span>농산물판매장</span>
			</div>
		</div>
	</div>
	
	<div class="amenities-table-wrap">
		<table class="amenities-table">
			<tr>
				<th>위치</th>
				<td><c:out value="${ detail.line }"/></td>
				<th>전화번호</th>
				<td><c:out value="${ detail.tel }"/></td>
			</tr>
			<tr>
				<th>편의시설(휴게소)</th>
				<td>	
					<c:set var="restArr" value="${ fn:split(detail.retAmImgs,',') }"/>
					<div class="table-icon-wrap">
					<c:if test="${ not empty detail.retAmImgs }">
					<c:forEach var="rIcon" items="${ restArr }">
						<img alt="편의시설아이콘" src="css/images/${ rIcon }">
					</c:forEach>
					</c:if>
					</div>
				</td>
				<th>편의시설(주유소)</th>
				<td>
					<c:set var="gasArr" value="${ fn:split(detail.gasAmImgs,',') }"/>
					<div class="table-icon-wrap">
					<c:if test="${ not empty detail.gasAmImgs }">
					<c:forEach var="gIcon" items="${ gasArr }">
						<img alt="편의시설아이콘" src="css/images/${ gIcon }">
					</c:forEach>	
					</c:if>
					</div>
				</td>
			</tr>
			<tr>
				<th>세차장</th>
				<td><c:out value="${ detail.carwash_chk }"/></td>
				<th>경정비소</th>
				<td><c:out value="${ detail.repair_chk }"/></td>
			</tr>
			<tr>
				<th>ex-화물차라운지</th>
				<td><c:out value="${ detail.cargolounge_chk }"/></td>
				<th>-</th>
				<td></td>
			</tr>
		</table>
	</div>
	<div class="btns">
		<button type="button" class="modi-btn">수정</button>
		<button type="button" class="del-btn">삭제</button>
	</div>
	
</div>
<!-- container end -->



</div>
</body>
</html>