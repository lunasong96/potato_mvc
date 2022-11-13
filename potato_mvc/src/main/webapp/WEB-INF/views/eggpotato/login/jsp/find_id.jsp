<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="shortcut icon"  href="../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../../common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="../../common/css/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="../css/find_id.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#findBtn").click(function() {
		window.open("find_id_popup.jsp", "아이디 찾기", "width=350,height=320,top=220,left=700")
	});
});
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
		
		<div class="box-title">아이디 찾기</div>
		
		<!-- main -->
		<div class="main-container">
			<h2 class="input-title">이름</h2>
			<input type="text" placeholder="이름" class="text-box"><br/>
			<h2 class="input-title">생년월일</h2>
			<input type="text" placeholder="생년월일" class="text-box"><br/>
			<h2 class="input-title">휴대전화</h2>
			<input type="text" placeholder="전화번호 입력" class="text-box"><br/>
			<input type="button" value="아이디 찾기" class="findBtn" id="findBtn">
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