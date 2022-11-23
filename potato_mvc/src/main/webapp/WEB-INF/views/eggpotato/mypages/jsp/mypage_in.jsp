<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 진입</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/mypages/mypage_in.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$(".pw_chk_btn").click(function() {
		chkNull();
	});//click
	
});//ready
function chkNull() {
	if($("#passChk").val().trim() == ""){
		$("#passChk").focus();
		$("#passChk").val("");
		
		return ;
	}
	
	alert($("#passChk").val()); 
/* if($("#pass").val()==$("#passChk").val()){  */
		$("#InFrm").submit();
		alert("확인되었습니다");
/* }else{  */
	/* alert("비밀번호를 확인해주세요");  */
	/*  }  */
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
<form id="InFrm" action="chkIdPass.do" method="post" >
<div class="pw_chk">
	<input type="hidden" name="id"  id="id" value="${ sessionScope.id }"/>
	<%-- <input type="hidden" name="pass"  id="pass" value="${ pass }"/> --%>
	<input type="password" name="pass" id="passChk" placeholder="비밀번호 입력" size="30" class="pw">
	<input type="button" value="확인" class="pw_chk_btn" >
</div>
</form>
<!-- 메인으로 돌아가기 -->
<div class="mainLink">
	<a href="user_mainhome.do" class="mainLink">메인으로 돌아가기</a>
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