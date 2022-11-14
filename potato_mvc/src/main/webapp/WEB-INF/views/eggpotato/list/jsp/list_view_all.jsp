<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 휴게소</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_navi2.css"/><%-- 네비바 필요한 사람만 --%>
<link rel="stylesheet" type="text/css" href="css/list/list_view_all.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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
				<div class="cat-name">전체 휴게소</div>
				<div class="array">
				<input type="button" value="가나다순" class="btn">
				<div class='v-line'></div>
				<input type="button" value="인기순" class="btn">
				</div>
				
				<div class="content-list">
					<!-- 상품 불러오기 -->
					<div class="card">
						<div class="card-photo">
							<a class="card-link" href="#void"><img alt="휴게소 이미지" src="css/images/서산휴게소.jpg"/></a>
						</div>
						<div class="card-name">휴게소이름</div>
						<div class="card-star">
							<span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16" color="#F1C40F">
  							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg></span><span class="card-star-text">5</span>
						</div>
						<div class="card-addr">00방향</div>
					</div>
					<div class="card">
						<div class="card-photo">
							<a class="card-link" href="#void"><img alt="휴게소 이미지" src="css/images/음성휴게소.jpg"/></a>
						</div>
						<div class="card-name">휴게소이름</div>
						<div class="card-star">
							<span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16" color="#F1C40F">
  							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg></span><span class="card-star-text">5</span>
						</div>
						<div class="card-addr">00방향</div>
					</div>
					<div class="card">
						<div class="card-photo">
							<a class="card-link" href="#void"><img alt="휴게소 이미지" src="css/images/천안휴게소.jpg"/></a>
						</div>
						<div class="card-name">휴게소이름</div>
						<div class="card-star">
							<span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16" color="#F1C40F">
  							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg></span><span class="card-star-text">5</span>
						</div>
						<div class="card-addr">00방향</div>
					</div>
					<div class="card">
						<div class="card-photo">
							<a class="card-link" href="#void"><img alt="휴게소 이미지" src="css/images/덕평휴게소.jpg"/></a>
						</div>
						<div class="card-name">휴게소이름</div>
						<div class="card-star">
							<span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16" color="#F1C40F">
  							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg></span><span class="card-star-text">5</span>
						</div>
						<div class="card-addr">00방향</div>
					</div>
					<div class="card">
						<div class="card-photo">
							<a class="card-link" href="#void"><img alt="휴게소 이미지" src="css/images/시흥하늘휴게소.jpg"/></a>
						</div>
						<div class="card-name">휴게소이름</div>
						<div class="card-star">
							<span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16" color="#F1C40F">
  							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg></span><span class="card-star-text">5</span>
						</div>
						<div class="card-addr">00방향</div>
					</div>
					<div class="card">
						<div class="card-photo">
							<a class="card-link" href="#void"><img alt="휴게소 이미지" src="css/images/경기광주휴게소.jpg"/></a>
						</div>
						<div class="card-name">휴게소이름</div>
						<div class="card-star">
							<span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16" color="#F1C40F">
  							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg></span><span class="card-star-text">5</span>
						</div>
						<div class="card-addr">00방향</div>
					</div>
				</div>
		<!-- 페이지 -->
		<div class="page">
			<a href="#void" class="page-num">&nbsp;&lt;&nbsp;</a>
			<a href="#void" class="page-num">&nbsp;1&nbsp;</a>
			<a href="#void" class="page-num">&nbsp;2&nbsp;</a>
			<a href="#void" class="page-num">&nbsp;3&nbsp;</a>
			<a href="#void" class="page-num">&nbsp;&gt;&nbsp;</a>
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