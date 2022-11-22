<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/member_management/member_block_popup.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$("#blockBtn").click(function(){
	$("#blockFrm").submit();
	self.close();
});
</script>

</head>
<body>
<div class="wrap">
	<div class="top">
		<img src="css/images/report.png" class="report-icon">
		<span>회원 차단하기</span>
	</div>
	<div class="middle">
		<p>차단대상자: <span>${ id }</span></p>
		<div class="radio-wrap">
			<c:forEach var="block" items="${ reasonList }">
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">${block.reason }
			</div>
			</c:forEach>

			<!-- 삭제 금지 -->
			<div class="rr-wrap"></div>
			<!-- 삭제금지 -->
		</div>
	</div>
	<div class="bottom">
		<button type="button" class="report-btn" id="blockBtn" name="blockBtn">차단하기</button>
	</div>
</div>

<!-- 차단하기 -->
<form id="blockFrm" action="mgr_block.do" method="post">
	<input type="hidden" id="blockId" name="id">
	<input type="hidden" id="blockIdx" name="block_idx">
</form>
</body>
</html>