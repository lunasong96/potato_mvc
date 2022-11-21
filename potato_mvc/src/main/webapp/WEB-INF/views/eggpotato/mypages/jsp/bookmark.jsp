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
					<img src=""  id="profileImg" name="profileImg" class="img" style="margin: 5px 30px; width: 150px; height: 150px; background: #f8edeb; border-radius: 50%;">
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
<form id="delBookmarkFrm" method="get" action="delBookmark.do" >
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
	즐겨찾기한 휴게소가 없습니다.
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