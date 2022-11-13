<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="shortcut icon"  href="images/logo.png"/>
<link rel="stylesheet" type="text/css" href="common/reset.css"/>
<link rel="stylesheet" type="text/css" href="common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="login/join_img.css"/>

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
	<!-- box-main -->
	<div class="box-main">
		<div class="navigation_wrap">
			<div class="bar_navigation" style="width: 80%;">20%</div>
		</div>
		<!-- main -->
		<div class="main-container">
			<h2 class="main-title">프로필 사진</h2><br/>
			<img src="login/images/img1.png" class="main-profile"/><br/>
			<input type="button" value="사진등록" class="imgBtn">
			<input type="button" value="삭제" class="imgBtn">
			<input type="button" value="가입하기" class="joinBtn">
		</div>
		<!-- //main -->
	</div>
	<!-- //box-main -->
</div>
<!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->

</div>
</body>
</html>