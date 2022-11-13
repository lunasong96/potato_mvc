<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 진입</title>
<link rel="shortcut icon"  href="../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../../common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="../css/mypage_in.css"/>

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


<!-- 작업 시작 -->	
<div class="my_page_wrap">
	<div class="lock_img">
		<svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
  		<path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/></svg>
	</div>
	
<!-- 마이페이지 진입 시 -->
<div class="msg">
	회원님의 정보를 보호하기 위해 비밀번호를 다시 확인합니다.
</div>

<!-- 비밀번호 입력-확인 -->
<div class="pw_chk">
	<input type="password" name="password" id="password" placeholder="비밀번호 입력" size="30" class="pw">
	<input type="button" value="확인" class="pw_chk_btn" >
</div>

<!-- 메인으로 돌아가기 -->
<div class="mainLink">
	<a href="../../mainhome/jsp/user_mainhome.jsp" class="mainLink">메인으로 돌아가기</a>
</div>

</div><!-- my_page_wrap -->

</div><!-- container --><!-- -건들면 안돼~ -->
<!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->

</div>
</body>
</html>