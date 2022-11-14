<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rest Management</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/m_common/manager_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/home/manager_mainhome.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/rest_management/manager_rest_management.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".write-btn").click(function(){
		open("manager_rest_write_popup.jsp","write_popup","width=950,height=900,top=311,left=560")
	});
	
});

$(document).on("click",".popup-btn",function(){
	open("rest_popup.jsp","rest_popup","width=1900,height=900,top=311,left=560");
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
		<div style="display: flex;border-bottom: 1px solid grey;align-items: center; margin-bottom: 20px;">
			<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-pin-map-fill" viewBox="0 0 16 16">
  			<path fill-rule="evenodd" d="M3.1 11.2a.5.5 0 0 1 .4-.2H6a.5.5 0 0 1 0 1H3.75L1.5 15h13l-2.25-3H10a.5.5 0 0 1 0-1h2.5a.5.5 0 0 1 .4.2l3 4a.5.5 0 0 1-.4.8H.5a.5.5 0 0 1-.4-.8l3-4z"/>
 			<path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999z"/>
			</svg><span class="text">휴게소관리</span>
		</div>
		<div class="rest_management-wrap">
			<div class="review_management">
				<div class="rm-top">
					<div class="search-wrap">
						<label>노선명 : </label>
						<select class="search-select">
							<option value="none">----------전체----------</option>
							<option value="rest">경부선</option>
							<option value="contents">서해안</option>
							<option value="contents">수도권제1고속도로</option>
						</select>
						<label>휴게소명 : </label>
						<input type="text" placeholder="휴게소명 입력" class="search-txt"/>
						<label>구분 : </label>
						<input type="checkbox">
						<label>세차장</label>
						<input type="checkbox">
						<label>경정비소</label>
						<input type="checkbox">
						<label>화물차라운지</label>
						<button type="button" class="search-btn">검색</button>
						<button type="button" class="reset-btn">초기화</button>
						<button type="button" class="write-btn">휴게소 추가</button>
					</div>
					<div class="icon-wrap">
						<span>&lt;편의시설 구분&gt;</span>
						<div class="icon-sector">
							<!-- 추후 이미지 아이콘 추가 -->
							<span>
								<img src="css/images/sleep.png" ><span>수면실</span>
							</span>
							<span>
								<img src="css/images/shower.png" ><span>샤워실</span>
							</span>
							<span>
								<img src="css/images/washing.png" ><span>세탁실</span>
							</span>
							<span>
								<img src="css/images/rest.png" ><span>쉼터</span>
							</span>
							<span>
								<img src="css/images/barber.png" ><span>이발소</span>
							</span>
							<span>
								<img src="css/images/baby.png" ><span>수유실</span>
							</span>
							<span>
								<img src="css/images/pharmacy.png" ><span>약국</span>
							</span>
							<span>
								<img src="css/images/market.png" ><span>농산물 판매</span>
							</span>
						</div>
					</div>
				</div>
				<div class="table-wrap">
					<table class="table">
						<tr>
							<th rowspan="2">휴게소명</th><th rowspan="2">전화번호</th><th colspan="2">편의시설</th><th rowspan="2">세차장</th><th rowspan="2">경정비소</th><th rowspan="2">화물차라운지</th>
						</tr>
						<tr>
							<th>휴게소</th><th>주유소</th>
						</tr>
						<tr>
							<td><button type="button" class="popup-btn">기흥휴게소(서울)</button></td><td>031-8003-9999</td><td>아이콘</td><td>아이콘</td><td>O</td><td>O</td><td>X</td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
						</tr>
					</table>
				</div>
				<div class="page">
					<a href="#void" class="page-num">&nbsp;&lt;&nbsp;</a>
					<a href="#void" class="page-num">&nbsp;1&nbsp;</a>
					<a href="#void" class="page-num">&nbsp;2&nbsp;</a>
					<a href="#void" class="page-num">&nbsp;3&nbsp;</a>
					<a href="#void" class="page-num">&nbsp;&gt;&nbsp;</a>
				</div>
			</div>
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