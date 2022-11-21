<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/login/login.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#loginBtn").click(function(){
		//null 검사
		chkNull();
	});//click
});//ready

//null 검사
function chkNull(){
	if( $("#id").val().trim() == "" ){
		alert("아이디를 입력하세요");
		$("#id").val("");
		$("#id").focus();
		return;
	}//end if
	if( $("#pass").val().trim() == "" ){
		alert("비밀번호를 입력하세요");
		$("#pass").val("");
		$("#pass").focus();
		return;
	}//end if
	
	$("#loginFrm").submit();
}//chkNull
</script>

</head>
<body>
<div class="wrap">

<!-- header -->
<%@ include file="../../common/jsp/user_header.jsp" %>
<!-- header end-->

<!-- container -->
<div class="container">
	<!-- loginBox -->
	<div class="box-login">
		<div class="login-top">로그인</div>
		<!-- main -->
		<div class="login-main">
		<form method="post" action="login.do"  id="loginFrm">
			<input type="text" placeholder="아이디" name="id" id="id" class="id"><br/>
			<input type="password" placeholder="비밀번호" name="pass" id="pass" class="pass"><br/>
			<input type="button" value="로그인" class="loginBtn" id="loginBtn">
		</form>
		</div>
		<!-- //main -->
		<!-- info -->
		<div class="login-info">
			<div class="info-sign">
				<a href="signUpAgree.do">회원가입</a>
			</div>
			<div class="info-find">
				<a href="forgotId.do">아이디</a> | 
				<a href="forgotPw.do">비밀번호 찾기</a>
			</div>
		</div>
		<!-- //info -->
	</div>
	<!-- //loginBox -->
</div>
<!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->

</div>
</body>
</html>