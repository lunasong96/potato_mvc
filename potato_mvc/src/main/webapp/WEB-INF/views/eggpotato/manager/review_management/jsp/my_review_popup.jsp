<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴게소 상세창</title>
<link rel="shortcut icon"  href="../../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../../../common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="../../../common/css/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="../../../common/css/swiper-bundle2.min.css"/>
<link rel="stylesheet" type="text/css" href="../css/my_review_popup.css"/>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f17857e30d029f485667a3cf426b0a8e"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
   
	//리뷰 슬라이드 호출
	slider();

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
<div class="mainWrap">
	<div class="review-wrap">
		<div class="review-txt">
			<span>**휴게소 리뷰</span>
		</div>
	</div>
	<div class="review-exist">
		<div class="re-left">
			<img src="http://localhost/html_prj/day0825/images/cimg.png" alt="프로필사진">
		</div>
		
		<div class="re-right">
			<div>
				<a href="#void" style="text-decoration : none;font-size: 19px; color: white;border: 0px solid; padding: 4px 20px 1px 20px;background-color: #DCC1A0; border-radius: 7px;">
				냠냠냠냠냐먀냐먀냠히호호 휴게소
				</a>
			</div>
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
			   				<img src="../../../images/횡성.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
 			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../../images/화성.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../../images/치악.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../../images/충주.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../../images/주암.jpg" alt="리뷰사진" class="re-foodimg">
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
				</div>
				<span class="date">2022.10.26</span>
			</div>
		</div>
	</div>	
	<div class="btnWrap">
		<button type="button" class="delBtn">삭제</button>
	</div>			
</div>
</body>
</html>