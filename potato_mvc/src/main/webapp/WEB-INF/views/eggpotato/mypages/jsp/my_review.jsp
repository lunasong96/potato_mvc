<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 리뷰</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/common/swiper-bundle2.min.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_navi.css"/><%-- 네비바 필요한 사람만 --%>
<link rel="stylesheet" type="text/css" href="css/mypages/my_review.css"/>

<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
//하트아이콘

	$(function() {
		
		$(".bookmark-icon-btn").click(function() {
			$(".bookmark-icon-btn").toggleClass("bibtn-add");
			$(".bi-bookmark ").toggleClass("bb-add");
		})
		
		$(".report-btn").click(function() {
			window.open("report_review_popup.jsp","popup_report",
			"width=520,height=470,top=203,left=1336");
		})
		$(document).on("click", ".heart-btn", function() {
	$(this).toggleClass("hb-fill");
})
		
		//리뷰 슬라이드 호출
		slider();
		
	})//ready

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

//페이징
function movePage( page ) {
	$("#pageFlag").val( page );
	$("#reviewFrm").submit();
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
<div class="main">
<!-- 건들ㄴ -->
<!-- 왼 : 네비바  -->
<div class="wrap-navi">
	<div class="navi">
		<div class="profileWrap">
			<div class="img">
				<img src="css/images/${img}"  id="profileImg" name="profileImg" class="img" style="margin: 5px 30px; width: 150px; height: 150px; background: #f8edeb; border-radius: 50%;">
			</div>
			<div class="nickname"><c:out value="${nick}"/></div>
		</div>			
			<a class="navi-link" href="my_info_edit.do">내 정보 수정</a>
			<a class="navi-link2" href="password_edit.do">비밀번호 수정</a>
			<a class="navi-link2" href="unregister.do">회원탈퇴</a>
			<a class="navi-link" href="my_review.do">내가 쓴 리뷰</a>
			<a class="navi-link" href="like_review.do">좋아요한 리뷰</a>
			<a class="navi-link" href="bookmark.do">휴게소 즐겨찾기</a>
	</div>
</div>
<!-- 오 : 리뷰+페이징  -->
<div class="review">
<!-- 리뷰 -->
<div class="review-wrap">
<c:forEach var="my" items="${ mAll }">
		<div class="review-exist">
		<div class="re-left">
			<img src="css/images/${my.img}" alt="프로필사진">
		</div>
		
		<div class="re-right">
			<div style="margin-bottom: 10px;">
				<span style="font-size: 19px;color: white;padding: 5px 10px;background-color: #DCC1A0;
				border-radius: 7px;"><c:out value="${my.name}"/></span>
			</div>	
			<span><c:out value="${my.nick}"/></span>
			<div class="star-rate">
				<span class="star-blank"></span>
				<div class="re-star-wrap">
					<span class="star" style="width: ${my.rating*20}%"></span>
				</div>
				<span class="rate-txt"><c:out value="${my.rating}"/></span>
			</div>
			<p class="re-txt">
				<c:out value="${my.contents}" escapeXml="false"/>
			</p>
			<c:if test="${ not empty my.foodimg }">
			<div class="re-slider">
				<div class="swiper-button-prev re-swiper-button-prev"></div>
			    <div class="swiper re-mySwiper">
			    	<div class="swiper-wrapper re-swiper-wrapper">
			    	<c:forEach var="img" items="${ my.foodimg }">
			   			<div class="swiper-slide re-swiper-slide">
			   				<img src="css/reviewImg/${img}" alt="리뷰사진" class="re-foodimg">
			   			</div>
 			   		</c:forEach>
			    	</div>
			    </div>
				<div class="swiper-button-next re-swiper-button-next"></div>
			</div>
			</c:if>
			<div class="etc-icon-wrap">
				<div class="etc-icon">
					<div class="heart-icon-wrap">
						<button type="button" class="heart-btn">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
							</svg>
						</button>
						<span><c:out value="좋아요(${my.liked})"/></span>
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
				<span class="date"><fmt:formatDate value="${my.post_date}" pattern="yyyy-MM-dd" /></span>
			</div>
			
		</div>
	</div>
</c:forEach>	
</div>
<!-- 리뷰 -->
<!-- 페이징 -->
	<div class="page">
		<c:if test="${ not empty reviewList }">
			<c:if test="${ startNum ne 1 }">
				<a href="javascript:movePage(1)" class="page-num">&nbsp;&lt;&lt;&nbsp;</a>
				<a href="javascript:movePage(${startNum ne 1 ? startNum-1 : 1})" class="page-num">&nbsp;&lt;&nbsp;</a>
			</c:if>
			<c:forEach step="1" var="i" begin="0" end="${ isLast }">
				<a href="javascript:movePage(${ startNum+i })" ${ curPage eq startNum + i ?" class='page-num-click'" :" class='page-num'"}><c:out value="&nbsp;${ startNum+i }&nbsp;" escapeXml="false"/></a>
			</c:forEach>
			<c:if test="${ lastPage gt startNum+2 }">
				<a href="javascript:movePage(${ startNum+3 })" class="page-num">&nbsp;&gt;&nbsp;</a>
				<a href="javascript:movePage(${ lastPage })" class="page-num">&nbsp;&gt;&gt;&nbsp;</a>
			</c:if>
		</c:if>
	</div>

</div>
<!-- 건들ㄴ -->
</div>
</div>
<!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->
</div>
<form id="reviewFrm" method="get">
	<input type="hidden" id="pageFlag" name="pageFlag" value="${ empty param.pageFlag ? 1 : param.pageFlag }">
	<input type="hidden" id="id" name="id" value="${ sessionScope.id }">
</form>


</body>
</html>