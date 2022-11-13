<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 팝업창</title>
<link rel="shortcut icon"  href="../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../css/find_id_popup.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">

</script>

</head>
<body>
<div class="wrap">
	<!-- box-main -->
	<div class="box-main">
		
		<div class="box-title">아이디</div>
		<!-- main -->
		<div class="main-container">
			<input type="text" class="text-read" value="kingpotato" readonly="readonly"><br/>
			<input type="button" value="로그인" class="loginBtn">
			<span class="line_or">
				::before
				<span class="txt_or">또는</span>
				::after
			</span>
			<input type="button" value="비밀번호 찾기" class="findBtn">
		</div>
		<!-- //main -->
	</div>
	<!-- //box-main -->
</div>
</body>
</html>