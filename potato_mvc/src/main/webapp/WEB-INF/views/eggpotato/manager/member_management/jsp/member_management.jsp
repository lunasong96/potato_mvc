<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Management</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/m_common/manager_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/member_management/member_management.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	//검색버튼 클릭
	$("#searchBtn").click(function(){
		var input=$("#idSearch").val();
		if(input.trim().length<2){
			alert("2자 이상 입력하세요.");
			return;
		}
	});
		
	//차단 해제 버튼 클릭 시
	$("#unblockBtn").click(function(){
	    if (!confirm("해당 회원을 차단 해제하겠습니까?")) {
	        // 취소(아니오) 버튼 클릭 시 이벤트
	        alert("취소되었습니다.")
	    } else {
	        // 확인(예) 버튼 클릭 시 이벤트
	        alert("차단 해제되었습니다.")
	    }
	});
	
	
});//ready

//셀렉트 선택하면 선택한 테이블을 보여준다.
function tableChange(){
	var key=$("#memberCat").val();
	
	if(key==1){
		 document.all["t1"].style.display="block";
		 document.all["t2"].style.display="none";
		 document.all["t3"].style.display="none";
	}
	if(key==2){
		 document.all["t1"].style.display="none";
		 document.all["t2"].style.display="block";
		 document.all["t3"].style.display="none";
	}
	if(key==3){
		 document.all["t1"].style.display="none";
		 document.all["t2"].style.display="none";
		 document.all["t3"].style.display="block";
	}
}//tableChange
	
	//사용자 아이디 클릭시 상세 정보 팝업창 보여주기
	function infoPopup(){
		window.open("mgr_memberInfoPopup.do","member_detail_info_popup",
				"width=539,height=474,top=203,left=1336")
	}
	//신고 버튼 클릭시 팝업창 보여주기
	function showPopup(){
		window.open("mgr_memberBlockPopup.do","member_block_popup",
				"width=539,height=474,top=203,left=1336")
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
 
<!-- 현재 메뉴 --><!-- 회원관리가 아니면 지워주세요. 지우기시작 -->
		<div style="display: flex;border-bottom: 1px solid grey;align-items: center; margin-bottom: 20px;">
			<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-person-hearts" viewBox="0 0 16 16">
			 <path fill-rule="evenodd" d="M11.5 1.246c.832-.855 2.913.642 0 2.566-2.913-1.924-.832-3.421 0-2.566ZM9 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h10s1 0 1-1-1-4-6-4-6 3-6 4Zm13.5-8.09c1.387-1.425 4.855 1.07 0 4.277-4.854-3.207-1.387-5.702 0-4.276ZM15 2.165c.555-.57 1.942.428 0 1.711-1.942-1.283-.555-2.281 0-1.71Z"/>
			</svg><span class="text">회원관리</span>
		</div>
<!-- 현재 메뉴 --><!-- 회원관리가 아니면 지워주세요. 지우기 끝 -->
		
		<!-- 본문 -->
		<div class="member_management">
			
			<div class="mm_top">
				<input hidden="hidden"><select id="memberCat" name="memberCat" class="select_category" onchange="tableChange()">
					<option value="1">전체 사용자</option>
					<option value="2">탈퇴 회원</option>
					<option value="3">차단 회원</option>
				</select>
				
				<div class="search_wrap">
					<input type="text" id="idSearch" name="idSearch" class="search_txt" placeholder="아이디를 입력해주세요." autocomplete="off">
					<button type="button" class="search_btn" id="searchBtn"><strong>검색</strong></button>
				</div>			
			</div><!-- mm_top end -->
			
			<div class="table_wrap">
				<div id="t1" style="display: block"><!-- 초기로딩시 보임 -->
				<table class="table1">
				<!-- 전체사용자 클릭 시 -->
				<tr><th>아이디명</th><th>별명</th><th>가입날짜</th><th>생년월일</th><th>차단</th></tr>
				<c:forEach var="member" items="${ memberList }">
				<tr>
				<td><a href="javascript:infoPopup()" style="color:black">${member.id}</a></td><td>${member.nick}</td><td>${member.birth}</td><td><fmt:formatDate value="${member.join_date}" pattern="yyyy-MM-dd"/> </td>
				<td><input type="button" class="inputBtn" id="blockBtn" name="blockBtn" value="차단" onclick="showPopup()"></td>
				</tr>
				</c:forEach>
			<!-- 	<tr>
				<td><a href="javascript:infoPopup()" style="color:black">q1w2e3r4t5</a></td><td>프링글스</td><td>2022-06-17</td><td>2022.09.11</td>
				<td><input type="button" class="inputBtn" id="blockBtn" name="blockBtn" value="차단" onclick="showPopup()"></td>
				</tr> -->
				</table>
				</div>
				
				<div id="t2" style="display: none"> <!-- 처음 로딩시 숨김 상태 -->
				<!-- 탈퇴 회원 클릭 시 -->
				<table class="table2">
				<tr><th>아이디명</th><th>별명</th><th>가입날짜</th><th>탈퇴날짜</th></tr>
				<tr><td>eggpotato</td><td>감자는맛있지</td><td>2022-06-17</td><td>2022-11-28</td></tr>
				<tr><td>whitepotato</td><td>감자감자왕감자</td><td>2022-06-17</td><td>2022-11-28</td></tr>
				<tr><td>yellowpotato</td><td>알감자는소금</td><td>2022-06-17</td><td>2022-11-28</td></tr>
				<tr><td>purplepotato</td><td>감자머리</td><td>2022-06-17</td><td>2022-11-28</td></tr>
				</table>
				</div>
				
				<div id="t3" style="display: none"> <!-- 처음 로딩시 숨김상태 -->
				<!-- 차단 회원 클릭 시 -->
				<table class="table3">
				<tr><th>아이디명</th><th>별명</th><th>차단사유</th><th>차단해제</th></tr>
				<tr><td>redpotato</td><td>감자팔이</td><td>리뷰와 상관없는 내용 도배</td>
				<td><input type="button" class="inputBtn" id="unblockBtn" name="unblockBtn" value="해제"></td></tr>
				<tr><td>potato</td><td>감자돌이</td><td>개인정보 유출 위험</td>
				<td><input type="button" class="inputBtn" id="unblockBtn" name="unblockBtn" value="해제"></td></tr>
				</table>
				</div>
			
			</div>
		</div><!-- 본문 끝 -->

<!-- 페이지 -->
		<div class="page">
			<a href="#void" class="page-num">&nbsp;&lt;&nbsp;</a>
			<a href="#void" class="page-num">&nbsp;1&nbsp;</a>
			<a href="#void" class="page-num">&nbsp;2&nbsp;</a>
			<a href="#void" class="page-num">&nbsp;3&nbsp;</a>
			<a href="#void" class="page-num">&nbsp;&gt;&nbsp;</a>
		</div>

<!-- 건들지마세요 -->
	</div>
</div>
<!-- container end -->

<!-- footer -->

<!-- footer end -->

</div>
<!-- 회원 불러오기 -->
<form id="hidden" action="mgr_memberManagement.do" method="post">
	<input type="hidden" id="id" name="id" value="${param.id}"/>
	<input type="hidden" id="memberType" name="memberType" value="${param.memberType }"/>
</form>
</body>
</html>