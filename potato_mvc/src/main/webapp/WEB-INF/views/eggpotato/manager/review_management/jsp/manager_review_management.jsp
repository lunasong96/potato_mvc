<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Management</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/m_common/manager_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/home/manager_mainhome.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/review_management/manager_review_management.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#searchBtn").click(function(){
		if($("#searchBox").val().trim() == "") {
			alert("검색어를 입력하세요!");
			return;
		}
		
		$("#keyword").val($("#searchBox").val());
		
		
	});
	
	if($("[name='mainChk']").is(":checked")){
		
	}
	
})//ready;

//리뷰상세창열기
$(document).on("click",".popup-btn",function(){
	open("","review_popup","width=1400,height=550,top=211,left=300");
    var param = $(this).val().split(",");
    $("#reIdx").val(param[0]);
    $("#id").val(param[1]);
    $("#rsIdx").val(param[2]);
    $("#popupFrm").submit();
    
	
});

//페이징
function movePage( page ) {
	$("#pageFlag").val(page);
	$("#hidFrm").submit();
}


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
			<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-vector-pen" viewBox="0 0 16 16">
  			<path fill-rule="evenodd" d="M10.646.646a.5.5 0 0 1 .708 0l4 4a.5.5 0 0 1 0 .708l-1.902 1.902-.829 3.313a1.5 1.5 0 0 1-1.024 1.073L1.254 14.746 4.358 4.4A1.5 1.5 0 0 1 5.43 3.377l3.313-.828L10.646.646zm-1.8 2.908-3.173.793a.5.5 0 0 0-.358.342l-2.57 8.565 8.567-2.57a.5.5 0 0 0 .34-.357l.794-3.174-3.6-3.6z"/>
  			<path fill-rule="evenodd" d="M2.832 13.228 8 9a1 1 0 1 0-1-1l-4.228 5.168-.026.086.086-.026z"/>
			</svg><span class="text">리뷰관리</span>
		</div>
		<div class="review_management-wrap">
			<div class="review_management">
				<div class="rm-top">
					<select class="search-select"> <!-- controller에서 숫자를 필드명으로 바꿔주는 작업필요 -->
						<option value="1"${ 1 eq param.searchType?" selected='selected'":"" }>휴게소명</option>
						<option value="2"${ 2 eq param.searchType?" selected='selected'":"" }>내용</option>
						<option value="3"${ 3 eq param.searchType?" selected='selected'":"" }>작성자</option>
					</select>
					<div class="search-wrap">
						<input autocomplete="off" type="text" class="search-txt" id="searchBox" value="${ param.keyword }">
						<button type="button" class="search-bar" id="searchBtn">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
									 <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
								</svg>
						</button>
					</div>
				</div>
				<div class="btn-line">
					<!-- 버튼 누를 시 해당 기능동작, 정렬버튼들은 각각 오름차순, 내림차순 기능으로 분리하기 -->
					<button type="button" class="delete-btn">선택삭제</button>
					<button type="button" class="align-btn">등록일순</button>
					<button type="button" class="align-btn">신고수순</button>
				</div>
				<div class="table-wrap">
					<table class="table">
						<tr>
							<th><input type="checkbox" id="mainChk" name="mainChk"/></th><th>휴게소명</th><th>내용</th><th>평점</th><th>작성자</th><th>작성일시</th><th>신고수</th>
						</tr>
						<c:forEach var="rev" items="${ requestScope.reviewList }" >
							<tr>
								<!-- 버튼의 value에 리뷰를 식별할 수 있는 3가지 값을 넣고 스크립트에서 받아서 hidden form으로 넘겨준다. -->
								<td><input type="checkbox" name="reviewChk" value="${ rev.review_idx },${rev.id},${ rev.restarea_idx }"/></td>
								<td><c:out value="${ rev.name }"/></td><td><button type="button" class="popup-btn" value="${ rev.review_idx },${rev.id},${ rev.restarea_idx }"><c:out value="${ rev.contents }"/></button></td>
								<td><c:out value="${ rev.rating }"/></td><td><c:out value="${ rev.id }"/></td><td><fmt:formatDate value="${ rev.post_date }" pattern="yyyy-MM-dd hh:mm:ss"/></td><td><c:out value="${ rev.report_cnt }"/></td>
							</tr>
						</c:forEach> 
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

<form id="hidFrm" method="get" action="manager_review.do">
	<input type="hidden" id="keyword" name="keyword" value="${ param.keyword }"/>
	<input type="hidden" id="searchType" name="searchType" value="${ param.searchType }"/>
	<input type="hidden" id="dateOrderFlag" name="dateOrderFlag" value="${ param.pageFlag }"/>
	<input type="hidden" id="reportOrderFlag" name="reportOrderFlag" value="${ param.pageFlag }"/>
	<input type="hidden" id="pageFlag" name="pageFlag" value="${ param.pageFlag }"/>
</form>
<form id="popupFrm" method="get" action="manager_open_reviewPopup.do" target="review_popup">
	<input type="hidden" id="reIdx" name="review_idx">
	<input type="hidden" id="id" name="id">
	<input type="hidden" id="rsIdx" name="restarea_idx">
</form>

</body>
</html>