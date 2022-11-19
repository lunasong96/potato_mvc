<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/login/find_pass.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#findBtn").click(function() {
		/* window.open("forgotPwChk.do", "비밀번호 찾기", "width=350,height=280,top=220,left=700") */
		chkNull();
	});
});
function chkNull() {
	$("#forgotPwFrm").submit();
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
	<!-- box-main -->
	<div class="box-main">
		
		<div class="box-title">비밀번호 찾기</div>
		
		<!-- main -->
		<div class="main-container">
			<form method="post" action="forgotPwChk.do" id="forgotPwFrm">
			<h2 class="input-title">이름</h2>
			<input type="text" placeholder="이름" class="text-box" name="name" id="name"><br/>
			<h2 class="input-title">아이디</h2>
			<input type="text" placeholder="아이디" class="id" name="id" id="id"><br/>
			<h2 class="input-title">휴대전화</h2>
			<input type="text" placeholder="전화번호 입력" class="text-box" name="phone" id="phone"><br/>
			</form>
			<input type="button" value="비밀번호 찾기" class="findBtn" id="findBtn">
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