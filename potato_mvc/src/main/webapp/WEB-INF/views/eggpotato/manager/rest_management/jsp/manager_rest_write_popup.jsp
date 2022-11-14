<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write Popup</title>
<link rel="shortcut icon"  href="css/images/logo.png"/>
<link rel="stylesheet" type="text/css" href="css/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/m_common/manager_wrap_container.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/home/manager_mainhome.css"/>
<link rel="stylesheet" type="text/css" href="css/manager/rest_management/manager_rest_write_popup.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<div class="wrap">
	<div class="popup-wrap">
		<div class="rest-name">
			<div class="name">
				<span>휴게소 명</span>
				<input type="text" placeholder="휴게소명을 기입하세요."/> 
			</div>
			<div class="tumbnail">
				<img src="">
				<div class="tumbnail-btn-wrap">
					<span>썸네일</span>
					<div>
						<div class="file-btn-wrap">
							<input type="file" class="fileup"/>
							<input type="button" class="round-blue-btn" value="등록">
							<input type="button" class="round-blue-btn" value="삭제">
						</div>
					</div>
				</div>
			</div>
		</div>
		<p class="sep"/>
		<div class="rest-food">
			<div class="food-head">
				<span>음식</span>
			</div>
			<div class="food-info">
				<span>
					<input type="file" class="fileup2"/>
					<input type="button" class="round-blue-btn" value="사진첨부" />
				</span>
				<div class="food-detail">
					<div class="food-img-wrap">
						<img src="">
					</div>
					<div class="food-content">
						<span>
							<label>이름 : </label>
							<input type="text" placeholder="음식명을 기입해주세요."/>
						</span>
						<span>
							<label>가격 : </label>
							<input type="text" placeholder="가격을 기입해주세요."/>
						</span>
						<span>
							<span>
								<label>설명 : </label>
							</span>
							<textarea placeholder="음식설명을 기입해주세요."></textarea>
						</span>
						<span>
							<span>
								<label>재료 : </label>
							</span>
							<textarea placeholder="재료를 기입해주세요."></textarea>
						</span>
						<span>
							<label>대표메뉴</label>
							<input type="radio" name="type"/>
							<label>추천메뉴</label>
							<input type="radio" name="type"/>
							<label>선택안함</label>
							<input type="radio" name="type" checked="checked"/>
						</span>
					</div>
				</div>
			</div>
			<div class="appendBtn">
				<button type="button" class="plus-btn">+</button>
				<button type="button" class="minus-btn">-</button>
			</div>
		</div>
		<p class="sep"/>
		<div class="rest-info">
			<span>기본정보</span>
			<div class="info-wrap">
				<div>
					<span>
						<label>지도좌표 : </label>
					</span>
					<input type="text" placeholder="위도"/>
					<input type="text" placeholder="경도"/>
				</div>
				<div>
					<span>
						<label>위치 : </label>
					</span>
					<select>
						<option>----도----</option>
					</select>
					<select>
						<option>---노선---</option>
					</select>
				</div>
				<div>
					<span>
						<label>전화번호 : </label>
					</span>
					<input type="text" placeholder="전화번호"/>
				</div>
				<div class="amenity-wrap">
					<span>편의시설<br>(휴게소)</span>
					<div class="icon-wrap">
						<div class="icon-sector">
							<!-- 추후 이미지 아이콘 추가 -->
							<span>
								<img src="css/images/sleep.png" ><span>수면실</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/shower.png" ><span>샤워실</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/washing.png" ><span>세탁실</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/rest.png" ><span>쉼터</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/barber.png" ><span>이발소</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/baby.png" ><span>수유실</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/pharmacy.png" ><span>약국</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/market.png" ><span>농산물 판매</span>
								<input type="checkbox"/>
							</span>
						</div>
					</div>
				</div>
				<div class="amenity-wrap">
					<span>편의시설<br>(주유소)</span>
					<div class="icon-wrap">
						<div class="icon-sector">
							<!-- 추후 이미지 아이콘 추가 -->
							<span>
								<img src="css/images/sleep.png" ><span>수면실</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/shower.png" ><span>샤워실</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/washing.png" ><span>세탁실</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/rest.png" ><span>쉼터</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/barber.png" ><span>이발소</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/baby.png" ><span>수유실</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/pharmacy.png" ><span>약국</span>
								<input type="checkbox"/>
							</span>
							<span>
								<img src="css/images/market.png" ><span>농산물 판매</span>
								<input type="checkbox"/>
							</span>
						</div>
					</div>
				</div>
				<div class="chk-list">
					<label>세차장</label>
					<input type="checkbox"/>	
					<label>경정비소</label>
					<input type="checkbox"/>
					<label>화물차라운지</label>
					<input type="checkbox"/>		
				</div>
			</div>	
		</div>
		<div class="buttom">
			<button type="button" class="square-blue-btn">등록하기</button>
		</div>
	</div>
</div>
</body>
</html>