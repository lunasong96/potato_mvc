<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<span>건천휴게소(부산방향)</span>
		<div class="rate-wrap">
			<div class="star-rate">
				<span class="star-blank"></span>
				<div class="star-wrap">
					<span class="star" style="width: 100%"></span>
				</div>
				<span class="rate-txt">5</span>
			</div>
			<div class="bookmark-wrap">
				<div>
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bookmark" viewBox="0 0 16 16">
					  <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
					</svg>
				</div>
				<span class="bookmark-txt">5</span>
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
					<img src="css/images/구리.jpg" alt="휴게소음식사진" class="foodimg">
					<div class="food-detailed-wrap">
						<span class="food-name">누구나 돌솥 비빔밥</span>
						<span class="food-price">8900원</span>
						<p class="food-feature">2015년 한국도로공사 휴게소 대표메뉴 평가에서 전국 1위를 수상한 EX푸드</p>
						<p class="food-ingredient">무생체, 표고버섯, 콩나물, 고사리, 단배추, 참나물, 계란, 김치, 깍두기</p>
					</div>
					<p class="slide-img-title">
						추천
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
						  <path d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
						</svg>
					</p>
				</div>
				<div class="swiper-slide">
					<img src="css/images/속리산.jpg" alt="휴게소음식사진" class="foodimg">
					<div class="food-detailed-wrap">
						<span class="food-name">누구나 돌솥 비빔밥</span>
						<span class="food-price">8900원</span>
						<p class="food-feature">2015년 한국도로공사 휴게소 대표메뉴 평가에서 전국 1위를 수상한 EX푸드</p>
						<p class="food-ingredient">무생체, 표고버섯, 콩나물, 고사리, 단배추, 참나물, 계란, 김치, 깍두기</p>
					</div>
					<p class="slide-img-title">
						추천
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
						  <path d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
						</svg>
					</p>
				</div>
				<div class="swiper-slide">
					<img src="css/images/여주.jpg" alt="휴게소음식사진" class="foodimg">
					<div class="food-detailed-wrap">
						<span class="food-name">누구나 돌솥 비빔밥</span>
						<span class="food-price">8900원</span>
						<p class="food-feature">2015년 한국도로공사 휴게소 대표메뉴 평가에서 전국 1위를 수상한 EX푸드</p>
						<p class="food-ingredient">무생체, 표고버섯, 콩나물, 고사리, 단배추, 참나물, 계란, 김치, 깍두기</p>
					</div>
				</div>
				<div class="swiper-slide">
					<img src="css/images/오수.jpg" alt="휴게소음식사진" class="foodimg">
					<div class="food-detailed-wrap">
						<span class="food-name">누구나 돌솥 비빔밥</span>
						<span class="food-price">8900원</span>
						<p class="food-feature">2015년 한국도로공사 휴게소 대표메뉴 평가에서 전국 1위를 수상한 EX푸드</p>
						<p class="food-ingredient">무생체, 표고버섯, 콩나물, 고사리, 단배추, 참나물, 계란, 김치, 깍두기</p>
					</div>
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
				<td>경부선</td>
				<th>전화번호</th>
				<td>054-751-6890</td>
			</tr>
			<tr>
				<th>편의시설(휴게소)</th>
				<td>	
					<div class="table-icon-wrap">
						<img alt="편의시설아이콘" src="css/images/baby.png">
					</div>
				</td>
				<th>편의시설(주유소)</th>
				<td>
					<div class="table-icon-wrap">
						<img alt="편의시설아이콘" src="css/images/shower.png">
						<img alt="편의시설아이콘" src="css/images/rest.png">
					</div>
				</td>
			</tr>
			<tr>
				<th>세차장</th>
				<td>X</td>
				<th>경정비소</th>
				<td>X</td>
			</tr>
			<tr>
				<th>ex-화물차라운지</th>
				<td>X</td>
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