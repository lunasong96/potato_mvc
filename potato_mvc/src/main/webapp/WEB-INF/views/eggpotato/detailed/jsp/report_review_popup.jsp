<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고창</title>
<link rel="shortcut icon"  href="css/css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/detailed/report_review_popup.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">

</script>

</head>
<body>
<div class="wrap">
	<div class="top">
		<img src="css/images/report.png" class="report-icon">
		<span>리뷰 신고하기</span>
	</div>
	<div class="middle">
		<p>신고대상자: <span>소떡소떡이지</span></p>
		<div class="radio-wrap">
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">홍보/상업성
			</div>
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">같은 내용 도배
			</div>
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">욕설/인신공격
			</div>
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">음란/선정성
			</div>
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">불법정보
			</div>
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">개인정보 노출
			</div>
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">권리침해 신고
			</div>
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">관련 없는 내용
			</div>
			<div class="rr-wrap">
				<input type="radio" name="report-radio" class="rr">기타
			</div>
			<!-- 삭제 금지 -->
			<div class="rr-wrap"></div>
			<!-- 삭제금지 -->
		</div>
	</div>
	<div class="bottom">
		<button type="button" class="report-btn">신고하기</button>
	</div>
</div>
</body>
</html>