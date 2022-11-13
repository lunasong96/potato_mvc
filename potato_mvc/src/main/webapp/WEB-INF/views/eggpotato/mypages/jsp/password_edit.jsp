<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 수정</title>
<link rel="shortcut icon"  href="../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../../common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/user_navi.css"/><%-- 네비바 필요한 사람만 --%>
<link rel="stylesheet" type="text/css" href="../css/password_edit.css"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$(".pw_edit_form_btn").click(function() {
		confirm("비밀번호가 수정되었습니다.")
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
<!-- 작업 시작 -->
<div class="pw_edit_title">비밀번호 수정
	<div class="pw_edit_form">
		<table>
			<tr>
				<th><label for="password">현재 비밀번호</label></th>
				<td>
					<input type="password" id="password" name="password" placeholder="비밀번호를 입력해주세요." class="pw">
				</td>
			</tr>
			<tr>
				<th><label for="password">신규 비밀번호</label></th>
				<td>
					<input type="password" id="password" name="newpassword" placeholder="비밀번호를 입력해주세요." class="pw">
					<span class="txt">* 비밀번호는 *8~20자의 영문,숫자,특수문자를 혼합하여 입력해주세요.</span>
				</td>
			</tr>
			<tr>
				<th><label for="password">신규 비밀번호 확인</label></th>
				<td>
					<input type="password" id="password" name="newpassword1" placeholder="비밀번호를 입력해주세요." class="pw">
				</td>
			</tr>
		</table>
	
	<button class="pw_edit_form_btn">확인</button>

	</div><!-- pw_edit_form -->
	</div> 
</div><!-- wrap-navi -->

</div><!-- container 건들면 안됩니다....! -->
<!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->

</div><!-- wrap -->
</body>
</html>