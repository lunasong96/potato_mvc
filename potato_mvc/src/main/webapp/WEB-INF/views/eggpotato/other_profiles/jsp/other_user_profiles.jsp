<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타사용자 리뷰</title>
<link rel="shortcut icon"  href="../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../../common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/swiper-bundle2.min.css"/>
<link rel="stylesheet" type="text/css" href="../css/other_user_profiles.css"/>

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
    
   
	//리뷰 슬라이드 호출
	slider();
	
	$(".bookmark-icon-btn").click(function() {
		$(".bookmark-icon-btn").toggleClass("bibtn-add");
		$(".bi-bookmark ").toggleClass("bb-add");
	})
	
	$(".report-btn").click(function() {
		window.open("../../detailed/jsp/report_review_popup.jsp","popup_report",
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
<div class="wrap"><!-- wrap -->

<!-- header -->
<%@ include file="../../common/jsp/user_header.jsp" %>
<!-- header end-->


<div class="container"><!-- container -->
<!-- 건들지마  -->
<div class="main"><!-- main -->
<!-- 타사용자 프로필 -->
<div class="profile">
	<img src="http://localhost/html_prj/day0825/images/cimg.png" class="photo">
	<span class="nick">휴게소하면알감자</span>
	<span class="cnt">(리뷰 수 : 3건)</span>
</div>
<!-- 타사용자 프로필 -->
<!-- 리뷰 -->
<div class="review-wrap">
		<div class="review-exist">
		<div class="re-left">
			<img src="http://localhost/html_prj/day0825/images/cimg.png" alt="프로필사진">
		</div>
		
		<div class="re-right">
		<!-- 휴게소명 시작-->
		<div>
			<a href="#void" style="text-decoration : none;font-size: 19px; color: white;
						border: 0px solid; padding: 4px 20px 1px 20px;
						background-color: #DCC1A0; border-radius: 7px;">
			냠냠냠냠냐먀냐먀냠히호호 휴게소
			</a>
		</div>	
		<!-- 휴게소명 끝-->
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
			   				<img src="../../images/횡성.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
 			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/화성.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/치악.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/충주.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/주암.jpg" alt="리뷰사진" class="re-foodimg">
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
				</div>
				<span class="date">2022.10.26</span>
			</div>
		</div>
	</div>
	
	<div class="review-exist">
		<div class="re-left">
			<img src="http://localhost/html_prj/day0825/images/cimg.png" alt="프로필사진">
		</div>
		
		<div class="re-right">
		<!-- 휴게소명 시작-->
		<div>
			<a href="#void" style="text-decoration : none;font-size: 19px; color: white;
						border: 0px solid; padding: 4px 20px 1px 20px;
						background-color: #DCC1A0; border-radius: 7px;">
			냠냠냠냠냐먀냐먀냠히호호 휴게소
			</a>
		</div>	
		<!-- 휴게소명 끝-->
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
			   				<img src="../../images/횡성.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
 			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/화성.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/치악.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/충주.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/주암.jpg" alt="리뷰사진" class="re-foodimg">
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
				</div>
				<span class="date">2022.10.26</span>
			</div>
		</div>
	</div>
	
	<div class="review-exist">
		<div class="re-left">
			<img src="http://localhost/html_prj/day0825/images/cimg.png" alt="프로필사진">
		</div>
		<div class="re-right">
		<!-- 휴게소명 시작-->
		<div>
			<a href="#void" style="text-decoration : none;font-size: 19px; color: white;
						border: 0px solid; padding: 4px 20px 1px 20px;
						background-color: #DCC1A0; border-radius: 7px;">
			냠냠냠냠냐먀냐먀냠히호호 휴게소
			</a>
		</div>	
		<!-- 휴게소명 끝-->
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
			   				<img src="../../images/횡성.jpg" alt="리뷰사진" class="re-foodimg">
			   			</div>
 			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/화성.png" alt="리뷰사진" class="re-foodimg">
			   			</div>
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="../../images/치악.jpg" alt="리뷰사진" class="re-foodimg">
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
				</div>
				<span class="date">2022.10.26</span>
			</div>
		</div>
	</div>
</div>	
<!-- 리뷰 -->

<!-- 페이지 -->
<div class="page">
	<a href="#void" class="page-num">&nbsp;&lt;&nbsp;</a>
	<a href="#void" class="page-num">&nbsp;1&nbsp;</a>
	<a href="#void" class="page-num">&nbsp;2&nbsp;</a>
	<a href="#void" class="page-num">&nbsp;3&nbsp;</a>
	<a href="#void" class="page-num">&nbsp;&gt;&nbsp;</a>
</div>

</div><!-- main -->
<!-- 건들지마  -->
</div><!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->

</div><!-- wrap -->
</body>
</html>