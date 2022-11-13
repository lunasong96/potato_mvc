<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Password Change</title>
<link rel="shortcut icon"  href="../../../images/logo.png"/>
<link rel="stylesheet" type="text/css" href="../../../common/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="../../m_common/m_css/manager_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="../css/manager_password_change.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		//현재 비밀번호 유효성 검사
		
		//새 비밀번호 유효성 검사
		newPw = $("#newPw").val();
		newPwChk = $("#newPwChk").val();
		
		if(newPw!=newPwChk){
			alert("새 비밀번호와 새 비밀번호 확인이 일치하지 않습니다.");
			return;
		}
		
		alert("비밀번호가 변경되었습니다.");
	});//click
});

</script>
</head>
<body>
<div class="wrap">

<!-- header -->
<%@ include file="../../m_common/manager_header.jsp" %>
<!-- header end-->

<!-- container -->
<div class="container">
	<div class="main">
<!-- 건들지마세요 -->
 
<!-- 현재 메뉴 --><!-- 비번변경이 아니면 지워주세요. 지우기시작 -->
		<div style="display: flex;border-bottom: 1px solid grey;align-items: center; margin-bottom: 20px;">
			<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
  			<path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
			</svg><span class="text">비밀번호 변경</span>
		</div>
<!-- 현재 메뉴 --><!-- 비번변경이 아니면 지워주세요. 지우기 끝 -->

<!-- 관리자 비밀번호 변경 -->
		<div class="passChange">
			<table>
			<tr>
				<th><label for="managerId">아이디</label></th>
				<td>
					<input type="text" id="manager_id" name="manager_id" class="inputBox" value="admin" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<th><label for="password">현재 비밀번호</label></th>
				<td>
					<input type="password" id="password" name="password" class="inputBox" placeholder="현재 비밀번호를 입력하세요."/>
				</td>
			</tr>
			<tr>
				<th><label>새 비밀번호</label></th>
				<td>
					<input type="password" id="newPw" name="newPw" class="inputBox" placeholder="새 비밀번호를 입력하세요"/> 
					<span>*8~20자의 영문, 숫자, 특수문자 3가지를 조합하여 입력</span>
				</td>
			</tr>
			<tr>
				<th><label>새 비밀번호 확인</label></th>
				<td>
					<input type="password" id="newPwChk" name="newPwChk" class="inputBox" placeholder="새 비밀번호 확인을 입력하세요"/> 
				</td>
			</tr>
			</table>
		</div><!-- passChange end -->
	
		<div>
			<input type="button" value="확인" class="btn" id="btn"/>
		</div>
<!-- 건들지마세요 -->
	</div>
</div>
<!-- container end -->

<!-- footer -->

<!-- footer end -->

</div>

</body>
</html>