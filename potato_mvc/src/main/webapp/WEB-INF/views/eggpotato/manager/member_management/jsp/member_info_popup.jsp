<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainHome</title>
<link rel="shortcut icon"  href="../../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../../../common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="../../m_common/m_css/manager_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="../css/member_info_popup.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	//닫기 버튼 눌렀을 때
	$("#closeBtn").click(function(){
		self.close();
	});
});


</script>
</head>
<body>
<div class="wrap">
<div class="title">회원정보 보기</div>

<div class="info-wrap">
		<div class="info">
			<label>아이디</label>
			<input type="text" value="q1w2e3r4t5" id="id" name="id" class="inputTxt" readonly="readonly"/>
		</div>
		<div class="info">
			<label>별명</label>
			<input type="text" value="홍길동" id="name" name="name" class="inputTxt" readonly="readonly"/>
		</div>
		<div class="info">
			<label>생년월일</label>
			<input type="date" name="birth" id="birth" value="2022-06-17" readonly="readonly"/>
		</div>
		<div class="info">
			<label>전화번호</label>
			<input type="text" name="phoneNum" id="phoneNum" value="010-1234-4567" class="inputTxt" readonly="readonly"/>
		</div>
		<div class="info">
			<label>이메일</label>
			<input type="text" name="email" id="email" value="abc@gmail.com" class="inputEmail" readonly="readonly"/>
		</div>
		<div class="info">
			<label>가입날짜</label>
			<input type="date" name="join" id="join" value="2022-09-11" readonly="readonly"/>
		</div>
	</div><!-- info-wrap -->
	
	<div class="infoBtn">
		<button type="button" class="closeBtn" id="btn">닫기</button>
	</div><!-- wrap end -->
</div>
</body>
</html>