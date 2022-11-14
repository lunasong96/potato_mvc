<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴게소 상세창</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/common/swiper-bundle2.min.css"/>
<link rel="stylesheet" type="text/css" href="css/detailed/user_detailed.css"/>

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
   
	//리뷰 슬라이드 호출
	slider();
	
	$(".bookmark-icon-btn").click(function() {
		$(".bookmark-icon-btn").toggleClass("bibtn-add");
		$(".bi-bookmark ").toggleClass("bb-add");
	})
	
	$(".report-btn").click(function() {
		window.open("report_review_popup.do","popup_report",
		"width=520,height=470,top=203,left=1336");
	})
	
})

	//하트아이콘
	$(document).on("click", ".heart-btn", function() {
		$(this).toggleClass("hb-fill");
	})
	
function slider() {
	$(".re-mySwiper").each(function(index,element) {
		var $this = $(this);
		$this.addClass('instance-'+index);
		var $next = $(this).next();
		var $prev = $(this).prev();
		$next.addClass('next-'+index);
		$prev.addClass('prev-'+index);
		var $slide = $(this).children().children();
		
		 if($slide.length<=4) { //4개 이하일경우
			 var swiper = new Swiper(".instance-"+index, {
			        slidesPerView: 4,
			        spaceBetween: 3,
			        navigation: {
			            nextEl: '.next-'+index,
			            prevEl: '.prev-'+index,
			          },
			      });
		 }else { //4개 초과일경우 무한루프
			 var swiper = new Swiper(".instance-"+index, {
			    	loop: 1,
			        slidesPerView: 4,
			        spaceBetween: 3,
			        navigation: {
			            nextEl: '.next-'+index,
			            prevEl: '.prev-'+index,
			          },
			      });
		 }
	})
	
}
</script>
</head>
<body>
<div class="wrap">

<!-- header -->
<%@ include file="../../common/jsp/user_header.jsp" %>
<!-- header end-->

<!-- container -->
<div class="container">
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
		<div class="bookmark-review-wrap">
			<button type="button" class="bookmark-icon-btn">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bookmark" viewBox="0 0 16 16">
				  <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
				</svg>
			</button>
			<span>즐겨찾기</span>
			<div>
				<a href="write.jsp" class="review-link">리뷰쓰기</a>
			</div>
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
	
	<div class="review-wrap">
		<div class="review-txt">
			<span>휴게소 리뷰</span>
			<div>
				<span>전체 리뷰</span>
				<span>3</span>
			</div>
		</div>
		<div class="review-filter">
			<div>
				<a href="">최신순</a>
			</div>
			<div>
				<a href="">과거순</a>
			</div>
		</div>
	</div>
	
	<!-- 리뷰 없을 때 -->
	<div class="no-review">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
		  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
		  <path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
		</svg>
		<span>가장 먼저 리뷰를 달아보세요.</span>
	</div>
	
	<div class="review-exist">
		<div class="re-left">
			<img src="css/images/cimg.png" alt="프로필사진">
		</div>
		
		<div class="re-right">
			<span>휴게소하면알감자</span>
			<div class="star-rate">
				<span class="star-blank"></span>
				<div class="re-star-wrap">
					<span class="star" style="width: 100%"></span>
				</div>
				<span class="rate-txt">5</span>
			</div>
			<p class="re-txt">
				휴게소 화장실도 깨끗하게 관리되어있고 <br>
				알감자도 너무 맛있어요 <br>
				라멘은 안팔아서 아쉬웠어요.
			</p>
			
			<div class="re-slider">
				<div class="swiper-button-prev re-swiper-button-prev"></div>
			    <div class="swiper re-mySwiper">
			    	<div class="swiper-wrapper re-swiper-wrapper">
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/횡성.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
 			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/화성.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/치악.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/충주.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/주암.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
			    	</div>
			    </div>
				<div class="swiper-button-next re-swiper-button-next"></div>
			</div>
		
			<div class="etc-icon-wrap">
				<div class="etc-icon">
					<div class="heart-icon-wrap">
						<button type="button" class="heart-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
							</svg>
						</button>
						<span>좋아요(1)</span>
					</div>
					<div class="report-icon">
						<button type="button" class="report-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
							  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
							</svg>
						</button>
						<span>신고</span>
					</div>
					<div class="edit-icon">
						<a href="" class="edit-link">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
							  <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
							</svg>
						</a>
						<span>수정</span>
					</div>
					<div class="delete-icon">
						<button type="button" class="delete-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
							  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
							</svg>
						</button>
						<span>삭제</span>
					</div>
				</div>
				<span class="date">2022.10.26</span>
			</div>
		</div>
	</div>
	
	<div class="review-exist">
		<div class="re-left">
			<img src="css/images/cimg.png" alt="프로필사진">
		</div>
		
		<div class="re-right">
			<span>슬라이드테스트</span>
			<div class="star-rate">
				<span class="star-blank"></span>
				<div class="re-star-wrap">
					<span class="star" style="width: 80%"></span>
				</div>
				<span class="rate-txt">4</span>
			</div>
			<p class="re-txt">
				슬라이드 여러개여도 개별로 인식
			</p>
			
			<div class="re-slider">
				<div class="swiper-button-prev re-swiper-button-prev"></div>
			    <div class="swiper re-mySwiper">
			    	<div class="swiper-wrapper re-swiper-wrapper">
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/횡성.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
 			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/화성.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/치악.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/충주.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/주암.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
			    	</div>
			    </div>
				<div class="swiper-button-next re-swiper-button-next"></div>
			</div>
		
			<div class="etc-icon-wrap">
				<div class="etc-icon">
					<div class="heart-icon-wrap">
						<button type="button" class="heart-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
							</svg>
						</button>
						<span>좋아요(1)</span>
					</div>
					<div class="report-icon">
						<button type="button" class="report-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
							  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
							</svg>
						</button>
						<span>신고</span>
					</div>
					<div class="edit-icon">
						<a href="" class="edit-link">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
							  <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
							</svg>
						</a>
						<span>수정</span>
					</div>
					<div class="delete-icon">
						<button type="button" class="delete-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
							  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
							</svg>
						</button>
						<span>삭제</span>
					</div>
				</div>
				<span class="date">2022.10.26</span>
			</div>
		</div>
	</div>
	
	<div class="review-exist">
		<div class="re-left">
			<img src="css/images/cimg.png" alt="프로필사진">
		</div>
		
		<div class="re-right">
			<span>사진4개이하테스트</span>
			<div class="star-rate">
				<span class="star-blank"></span>
				<div class="re-star-wrap">
					<span class="star" style="width: 80%"></span>
				</div>
				<span class="rate-txt">4</span>
			</div>
			<p class="re-txt">
				첨부 사진이 4개 이하일 경우 슬라이드 X
			</p>
			
			<div class="re-slider">
				<div class="swiper-button-prev re-swiper-button-prev"></div>
			    <div class="swiper re-mySwiper">
			    	<div class="swiper-wrapper re-swiper-wrapper">
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/횡성.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
 			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/화성.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/images/치악.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
			    	</div>
			    </div>
				<div class="swiper-button-next re-swiper-button-next"></div>
			</div>
		
			<div class="etc-icon-wrap">
				<div class="etc-icon">
					<div class="heart-icon-wrap">
						<button type="button" class="heart-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
							</svg>
						</button>
						<span>좋아요(1)</span>
					</div>
					<div class="report-icon">
						<button type="button" class="report-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
							  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
							</svg>
						</button>
						<span>신고</span>
					</div>
					<div class="edit-icon">
						<a href="" class="edit-link">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
							  <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
							</svg>
						</a>
						<span>수정</span>
					</div>
					<div class="delete-icon">
						<button type="button" class="delete-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
							  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
							</svg>
						</button>
						<span>삭제</span>
					</div>
				</div>
				<span class="date">2022.10.26</span>
			</div>
		</div>
	</div>
	
	<div class="review-exist">
		<div class="re-left">
			<img src="css/images/cimg.png" alt="프로필사진">
		</div>
		
		<div class="re-right">
			<span>소떡소떡이지</span>
			<div class="star-rate">
				<span class="star-blank"></span>
				<div class="re-star-wrap">
					<span class="star" style="width: 100%"></span>
				</div>
				<span class="rate-txt">5</span>
			</div>
			<p class="re-txt">
				여기 소떡소떡 맛집이에요
			</p>
			
			<div class="etc-icon-wrap">
				<div class="etc-icon">
					<div class="heart-icon-wrap">
						<button type="button" class="heart-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
							</svg>
						</button>
						<span>좋아요(1)</span>
					</div>
					<div class="report-icon">
						<button type="button" class="report-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
							  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
							</svg>
						</button>
						<span>신고</span>
					</div>
					<div class="edit-icon">
						<a href="" class="edit-link">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
							  <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
							</svg>
						</a>
						<span>수정</span>
					</div>
					<div class="delete-icon">
						<button type="button" class="delete-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
							  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
							</svg>
						</button>
						<span>삭제</span>
					</div>
				</div>
				<span class="date">2022.10.26</span>
			</div>
		</div>
	</div>
	
	<div class="review-more-wrap">
		<button type="button" class="more-btn">
		더보기
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
			</svg>
		</button>
	</div>
	
</div>
<!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->

</div>
</body>
</html>