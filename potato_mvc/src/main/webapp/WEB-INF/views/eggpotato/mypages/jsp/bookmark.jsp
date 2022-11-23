<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴게소 즐겨찾기</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_navi.css"/><%-- 네비바 필요한 사람만 --%>
<link rel="stylesheet" type="text/css" href="css/mypages/bookmark.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
});//ready

function removeBookmark( restarea_idx){
	//alert( "삭제할 키 " +  restarea_idx)	
	$("#restarea_idx").val( restarea_idx );
	alert($("#restarea_idx").val());
	$("#delBookmarkFrm").submit();
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
<%-- 네비바 필요한 경우에 사용할것, 필요없으면 삭제~ --%>


<%-- 마이페이지용 --%>
<div class="wrap-navi">
		<div class="navi">
			<div class="profileWrap">
				<div class="img">
					<img src="http://localhost/potato/css/images/${ img }"   id="profileImg" name="profileImg" class="img" style="margin: 5px 30px; width: 150px; height: 150px; background: #f8edeb; border-radius: 50%;">
				</div>
				<div class="nickname"><c:out value="${ nick }"/> </div>
			</div>			
			<a class="navi-link" href="my_info_edit.do">내 정보 수정</a>
			<a class="navi-link2" href="password_edit.do">비밀번호 수정</a>
			<a class="navi-link2" href="unregister.do">회원탈퇴</a>
			<a class="navi-link" href="my_review.do">내가 쓴 리뷰</a>
			<a class="navi-link" href="like_review.do">좋아요한 리뷰</a>
			<a class="navi-link" href="bookmark.do">휴게소 즐겨찾기</a>
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
<form id="delBookmarkFrm" method="post" action="delBookmark.do" >
<input type="hidden" value="${id }" name="id">
			<input type="hidden" id="restarea_idx" name="restarea_idx">
<c:forEach var="b" items="${bookmarklist}">
		<div class="list">
			<span class="list-item"><c:out value="${ b.name }"/></span>
			<button class="del" onclick="removeBookmark(${b.restarea_idx })">삭제</button>
		</div>
</c:forEach>
</form>

<!-- 북마크한 휴게소가 없을 경우 -->
<c:if test="${ empty bookmarklist }">
<div class="empty">
	<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
  	<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  	<path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
	</svg>
	즐겨찾기한 휴게소가 없습니다.
</div>
</c:if>

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