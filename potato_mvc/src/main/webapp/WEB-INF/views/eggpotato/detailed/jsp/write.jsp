<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common/user_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/detailed/write.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
	//사진파일클릭
	$("#filebtn").on("change", uploadFileImg);
	
})

function starRate(rate) {
 	switch(rate) {
		case 5: $(".rate-txt").addClass("rate-add"); $(".rate-txt").text("최고에요!"); break;
		case 4: $(".rate-txt").addClass("rate-add"); $(".rate-txt").text("좋아요"); break;
		case 3: $(".rate-txt").addClass("rate-add"); $(".rate-txt").text("보통이에요"); break;
		case 2: $(".rate-txt").addClass("rate-add"); $(".rate-txt").text("조금 아쉬워요"); break;
		case 1: $(".rate-txt").addClass("rate-add"); $(".rate-txt").text("별로에요!"); break;
	} 
}

var file_Arr=[];

function uploadFileImg(e) {
	
	var files = e.target.files; //이벤트가 일어난 대상=input file (유사배열)
	var fileArr= Array.prototype.slice.call(files); //배열작업
	
	var index=0; //고유인덱스 부여
	fileArr.forEach(function(f) {
		if(!f.type.match("image/*")) { // 확장명 검사
			alert("이미지 파일을 선택해주세요.");
			return;
		}//end if 
		
		file_Arr.push(f); //배열에 담기
		
		var previewAdd=new FileReader(); //파일 데이터 읽기
		previewAdd.onload=function(e) {
			
			
			var preimg=
				"<div class='review-img-wrap' id='riw-"+index+"'><img src='"+ e.target.result +"' class='review-img' alt='리뷰사진'>"+
				"<a href='javascript:deleteImage("+index+");' class='img-a'><svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-x-square-fill' viewBox='0 0 16 16'>"+
			  	"<path d='M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z'/></svg></a></div>"
			$(preimg).appendTo(".photo-preview-wrap");
			index++;	 
			
			if($(".review-img-wrap").length > 6 ) {
				alert("이미지는 6개까지만 보여줄 수 있습니다.");	
				$(".review-img-wrap").last().remove();
				file_Arr.splice(index, 1);
				return;
			}
		}
		previewAdd.readAsDataURL(f); //데이터 url만들기 인코딩
		
	})
		console.log(files);
		console.log(fileArr);
		console.log(file_Arr[0]);
}

function okReview() {
	
	//별점 선택
	if($("input[name=ratingRadio]:checked").val()==undefined){
		alert("별점을 선택해주세요.");
		return;
	}
	 
	//내용 입력
	if($(".review-txtarea").val().trim()==""){
		alert("휴게소가 어떠셨나요?");
		$(".review-txtarea").focus();
		return;
	}
	
	location.href="review_write.do?restarea_idx=${param.restarea_idx }";
}

function deleteImage(index) {
	console.log(index);
	file_Arr.splice(index, 1); //index에 해당하는 배열[index] 삭제
	
	var delImage="#riw-"+index;
	console.log(delImage);
	$(delImage).remove(); //선택 이미지 삭제
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
	<div class="write-wrap">
		<div class="top">
			<button type="button" class="cancle-btn" onclick="javascript:history.back();">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
				  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
				</svg>
			</button>
			<span>${mrw.name }</span>
			<button type="button" class="ok-btn" onclick="okReview();">완료</button>
		</div>
		
		<div class="write-box">
			<div class="wb-top">
				<div class="rate-wrap">
				  <input name="ratingRadio" type="radio" id="st1" value="5" onclick="starRate(5)"/>
				  <label for="st1">
				  	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
					  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
					</svg>
				  </label>
				  <input name="ratingRadio" type="radio" id="st2" value="4" onclick="starRate(4)"/>
				  <label for="st2">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
					  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
					</svg>			  
				  </label>
				  <input name="ratingRadio" type="radio" id="st3" value="3" onclick="starRate(3)"/>
				  <label for="st3">
				  	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
					  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
					</svg>
				  </label>
				  <input name="ratingRadio" type="radio" id="st4" value="2" onclick="starRate(2)"/>
				  <label for="st4">
				  	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
					  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
					</svg>
				  </label>
				  <input name="ratingRadio" type="radio" id="st5" value="1" onclick="starRate(1)"/>
				  <label for="st5">
				  	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
					  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
					</svg>				  
				  </label>
				</div>
				<div class="rate-txt">별점을 선택해주세요!</div>
			</div>
			
			<div class="wb-middle">
				<p class="wb-text">여기서 보여지는 이미지의 크기는 실제 리뷰에서 보여지는 이미지 크기와 동일합니다.</p>
				<div class="wbm-wrap">
					<div class="photo-add-wrap">
						<input type="file" id="filebtn" class="file-class" multiple="multiple" accept="image/*">
						<label for="filebtn" class="file-add">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-images" viewBox="0 0 16 16">
							  <path d="M4.502 9a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/>
							  <path d="M14.002 13a2 2 0 0 1-2 2h-10a2 2 0 0 1-2-2V5A2 2 0 0 1 2 3a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v8a2 2 0 0 1-1.998 2zM14 2H4a1 1 0 0 0-1 1h9.002a2 2 0 0 1 2 2v7A1 1 0 0 0 15 11V3a1 1 0 0 0-1-1zM2.002 4a1 1 0 0 0-1 1v8l2.646-2.354a.5.5 0 0 1 .63-.062l2.66 1.773 3.71-3.71a.5.5 0 0 1 .577-.094l1.777 1.947V5a1 1 0 0 0-1-1h-10z"/>
							</svg>
						</label>
					</div>
					<div class="photo-preview-wrap">
						<!-- <div class="review-img-wrap">
							<img src="css/images/속리산.jpg" class="review-img" alt="리뷰사진">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square-fill" viewBox="0 0 16 16">
							  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
							</svg>
						</div>
						<div class="review-img-wrap">
							<img src="css/images/여주.jpg" class="review-img" alt="리뷰사진">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square-fill" viewBox="0 0 16 16">
							  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
							</svg>
						</div>
						<div class="review-img-wrap">
							<img src="css/images/오수.jpg" class="review-img" alt="리뷰사진">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square-fill" viewBox="0 0 16 16">
							  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
							</svg>
						</div>
						<div class="review-img-wrap">
							<img src="css/images/baby.png" class="review-img" alt="리뷰사진">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square-fill" viewBox="0 0 16 16">
							  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
							</svg>
						</div>
						<div class="review-img-wrap">
							<img src="css/images/market.png" class="review-img" alt="리뷰사진">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square-fill" viewBox="0 0 16 16">
							  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
							</svg>
						</div>
						<div class="review-img-wrap">
							<img src="css/images/속리산.jpg" class="review-img" alt="리뷰사진">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square-fill" viewBox="0 0 16 16">
							  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
							</svg>
						</div> -->
					</div>
				</div>
			</div>
			
			<div class="wb-bottom">
				<textarea rows="15" class="review-txtarea" placeholder="휴게소가 어떠셨나요?"></textarea>
			</div>
			
		</div>
		
	</div>
</div>
<!-- container end -->

<!-- footer -->
<%@ include file="../../common/jsp/user_footer.jsp" %>
<!-- footer end -->

</div>
</body>
</html>