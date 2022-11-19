<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴게소 상세창</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/common/swiper-bundle2.min.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/review_management/my_review_popup.css"/>

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
	
}// end slider

</script>
</head>
<body>
<div class="mainWrap">
	<div class="review-wrap">
	</div>
	<div class="review-exist">
		<div class="re-left">
			<img src="css/images/cimg.png" alt="프로필사진">
		</div>
		
		<div class="re-right">
			<div>
				<a href="#void" style="text-decoration : none;font-size: 19px; color: white;border: 0px solid; padding: 4px 20px 1px 20px;background-color: #DCC1A0; border-radius: 7px;">
				<c:out value="${ reviewDetail.name }"/>
				</a>
			</div>
			<span><c:out value="${ reviewDetail.nick }"/></span>
			<div class="star-rate">
				<span class="star-blank"></span>
				<div class="re-star-wrap">
					<span class="star" style="width:${ reviewDetail.rating * 20}%"></span>
				</div>
				<span class="rate-txt"><c:out value="${ reviewDetail.rating }"/></span>
			</div>
			<p class="re-txt">
				<c:out value="${ reviewDetail.contents }"/>
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
						<span><c:out value="좋아요(${ reviewDetail.like_cnt })개"/></span>
					</div>
				</div>
				<span class="date"><fmt:formatDate value="${ reviewDetail.post_date }" pattern="yyyy-MM-dd EEEE hh:mm:ss" /></span>
			</div>
		</div>
	</div>	
	<div class="btnWrap">
		<button type="button" class="delBtn" id="delBtn">삭제</button>
	</div>			
</div>
</body>
</html>