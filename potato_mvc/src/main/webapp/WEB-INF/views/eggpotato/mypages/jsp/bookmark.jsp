<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴게소 즐겨찾기</title>
<link rel="shortcut icon"  href="../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../../common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/user_navi.css"/><%-- 네비바 필요한 사람만 --%>
<link rel="stylesheet" type="text/css" href="../css/bookmark.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$(".del").click(function() {
		confirm("즐겨찾기가 삭제되었습니다.")
	});//click
});//ready
</script>

</head>
<body>
<div class="wrap">

<!-- header -->
<%@ include file="../../common/jsp/user_header.jsp" %>
<!-- header end-->

<!-- container -->
<div class="container">
<%-- 네비바 필요한 경우에 사용할것, 필요없으면 삭제~ --%>


<%-- 마이페이지용 --%>
<div class="wrap-navi">
		<div class="navi">
			<div class="profileWrap">
				<div class="img">
					<img src=""  id="profileImg" name="profileImg" class="img" style="margin: 5px 30px; width: 150px; height: 150px; background: #f8edeb; border-radius: 50%;">
				</div>
				<div class="nickname">감자킴</div>
			</div>			
			<a class="navi-link" href="my_info_edit.jsp">내 정보 수정</a>
			<a class="navi-link2" href="password_edit.jsp">비밀번호 수정</a>
			<a class="navi-link2" href="unregister.jsp">회원탈퇴</a>
			<a class="navi-link" href="my_review.jsp">내가 쓴 리뷰</a>
			<a class="navi-link" href="like_review.jsp">좋아요한 리뷰</a>
			<a class="navi-link" href="bookmark.jsp">휴게소 즐겨찾기</a>
		</div><!-- navi -->
	

<%-- 네비바 끝 --%>
<!-- 작업시작 -->
<div class="bookmarkWrap">
	<div class="title">휴게소 즐겨찾기</div  >
	<!-- 	<div class="profile">
			<div class="profileImg">
					<img src=""  id="profileImg" name="profileImg" class="profileImg" style="margin: 5px 30px; width: 70px; height: 70px; background: #f8edeb; border-radius: 50%;">
				<div class="profileContent">
					<div class="nick">
						닉네임
					</div>nick
				</div>profileContent
			</div>profileImg
		</div>profile -->
	<div class="listWrap">
		<div class="list">
			<span class="list-item">xx휴게소</span>
			<button class="del">삭제</button>
		</div>
		<div class="list">
			<span class="list-item">냠냠 휴게소</span>
			<button class="del">삭제</button>
		</div>
		<div class="list">
			<span class="list-item">꼭꼭 휴게소</span>
			<button class="del">삭제</button>
		</div>
		<div class="list">
			<span class="list-item">얍얍 휴게소</span>
			<button class="del">삭제</button>
		</div>
		
		
	</div><!-- listWrap -->
	</div><!-- bookmarkWrap -->
</div><!-- wrap-navi -->

</div><!-- container -->
<!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->

</div>
</body>
</html>