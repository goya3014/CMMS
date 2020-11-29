<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html, body {
	height: 100%;
	font-size: 0pt;
	margin: 0px;
	top: 0px;
	left: 0px;
}

body {
	display: flex;
	align-items: center;
	justify-content: center;
}

.total_wrap {
	display: inline-block;
	width: 1280px;
	height: 720px;
	border: 2px solid black;
}

.top_area {
	display: inline-block;
	vertical-align: top;
	width: 1280px;
	height: 170px;
	position: absolute;
	z-index: 50;
}

.logo_area {
	display: inline-block;
	vertical-align: top;
	width: 166px;
	height: 100%;
	
}

.logo_wrap {
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: white;
	
}

.logo {
	display: inline-block;
	vertical-align: top;
	width: 166px;
	height: 48px;
	background-image: url("resources/images/dtol.png");
	border-top: 1px solid #90C84B;
	border-bottom: 1px solid #90C84B;
}

.cmms_area {
	display: inline-block;
	vertical-align: top;
	width: 110px;
	height: 100%;
}

.cmms_wrap {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 50px;
	background-color: #90C84B;
}

.cmms {
	font-size: 22pt;
	font-weight: bold;
}

.top_middle_area {
	display: inline-block;
	vertical-align: top;
	width: 534px;
	height: 100%;
}

.top_middle_wrap {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 50px;
	background-color: #90C84B;
}

.logout_area, .setting_area, .home_area {
	display: inline-block;
	vertical-align: top;
	width: 50px;
	height: 100%;
	float: right;
}

.setting_area {
	width: 120px;
}

.logout_wrap, .setting_wrap, .home_wrap {
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #90C84B;
	height: 50px
}

.logout, .setting, .home {
	display: inline-block;
	vertical-align: top;
	width: 48px;
	height: 48px;
}
.home {
	background-image: url("resources/images/home.png");
}
.setting {
	background-image: url("resources/images/setting.png");
}

.home:hover, .setting:hover, .logout:hover {
	cursor: pointer;
}

.logout {
	background-image: url("resources/images/logout.png");
}

.menu_wrap1, .menu_wrap2, .menu_wrap3  {
	display: none;
	align-items: center;
	justify-content: center;
	height: 40px;
	background-color: #90C84B;
}

.menu_wrap1:hover, .menu_wrap2:hover, .menu_wrap3:hover  {
	cursor: pointer;
	background-color:#49A965;
}


.menu {
	font-size: 13pt;
	font-weight: bold;
	color: white;
}


.emp_area {
	display: inline-block;
	vertical-align: top;
	width: 120px;
	height: 100%;
	float: right;
}

.emp_wrap {
	display: flex;
	align-items: center;
	width: 120px;
	height: 50px;
	background-color: #90C84B;
}

.emp {
	font-size: 13pt;
	font-weight: bold;
}

.langug_area {
	display: inline-block;
	vertical-align: top;
	width: 130px;
	height: 50px;
	background-color: #90C84B;
	float: right;
}

.langug_select {
	width: 110px;
	height: 50px;
	font-size: 13pt;
}


.title_area {
	display: inline-block;
	width: 100%;
	height: 50px;
	border-bottom: 2px solid black;
	margin-top: 65px;
}

.title_wrap {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 80px;
	height: 100%;
	margin-left: 40px;
	
}

.title {
	font-size: 15pt;
	font-weight: bold;
}

.content_area {
	display: inline-block;
	width: 100%;
	height: 603px;
}

.content_wrap {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 555px;
	margin-top: 48px;

}

.treemap_wrap {
	display: inline-block;
	vertical-align: top;
	width: 25%;
	height: 100%;
	border-right: 2px solid black;
}

.treemap_scroll_wrap {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 553px;
}

.treemap_content1, .treemap_content2, .treemap_content3 {
	display: inline-block;
	vertical-align: top;
	width: 409.59px;
	height: 30px;
	border-top: 2px solid black;
}

.treemap_content1 {
	background-color: #377EC3;
}
.treemap_content2 {
	background-color: #00B0F0;
}
.treemap_content3 {
	background-color: #F2F2F2;
}

.treemap_sign1:hover, .treemap_sign2:hover, .treemap_sign3:hover, .treemap_title:hover {
	cursor: pointer;
}

.treemap_sign1, .treemap_sign2, .treemap_sign3  {
	display: inline-block;
	vertical-align: top;
	width: 30px;
	height: 100%;
	background-image: url("resources/images/plus.png");
}

.treemap_sign2 {
	margin-left: 30px;
}
.treemap_sign3 {
	margin-left: 60px;
}

.treemap_title_wrap {
	display: inline-block;
	vertical-align: top;
	width: 200px;
	height: 30px;

}

.treemap_title_middle_wrap {
	display: flex;
	align-items: center;
	width: 100%;
	height: 100%;
}

.treemap_title {
	font-size: 11pt;
	font-weight: bold;
	margin-left: 5px;
}

.content_right_area {
	display: inline-block;
	vertical-align: top;
	width: 948px;
	height: 100%;
	margin-left: 10px;
}

.btn_area, .search_area {
	dislay: inline-block;
	vertical-align: top;
	width: 100%;
	height: 30px;
}

.btn_area {
	margin-bottom: 3px;
}

.insertBtn, .updateBtn, .deleteBtn, .saveBtn {
	background-color: #377EC3;
	width: 65px;
	height: 30px;
	font-size: 11pt;
	font-weight: bold;
	float: right;
}

.saveBtn {
	margin-right: 10px;
}

.updateBtn {
	margin-left: 10px;
	margin-right: 10px;
}

.content_right_wrap {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 520px;
}

.content_wrap_left {
	display: inline-block;
	vertical-align: top;
	width: 472px;
	height: 520px;
	border: 1px solid black;
}
.content_wrap_right {
	display: inline-block;
	vertical-align: top;
	width: 472px;
	height: 520px;
	border: 1px solid black;
}

.content_title_wrap {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 520px;
}

.content_title {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 57.7px;
	border-bottom: 1px solid black;
}

.content_title#big {
	height: 108px;
	border: 0px;
}

.content_title_middle_wrap {
	display: inline-block;
	vertical-align: top;
	width: 170px;
	height: 57.7px;
	background-color: #F2F2F2;
	border-right: 1px solid black;
}

.letter_center_wrap {
	display: flex;
	align-items: center;
	justify-content: center;
}

.letter_center_wrap#level{
	width: 100px;
	height: 57.7px
}
.letter_center_wrap#type {
	width: 200px;
	height: 57.7px
}
.letter_center_wrap#title {
	width: 170px;
	height: 57.7px
}

.letter_center_wrap#content {
	width: 300px;
	height: 57.7px
}

.letter_center_wrap#big {
	width: 170px;
	height: 108px;
}
.letter_center_wrap#status {
	width: 108px;
	height: 108px;
}
.letter_center_wrap#repair {
	width: 200px;
	height: 50px;
}

.content_con_middle_wrap {
	display: inline-block;
	vertical-align: top;
	width: 300px;
	height: 57.7px;
}

.content_con_middle_wrap#big {
	width: 290px;
	height: 108px;
}
.content_con_middle_wrap#level {
	width: 100px;
	border-right: 1px solid black;
}
.content_con_middle_wrap#type {
	width: 200px;
}


.content_con_middle_wrap2 {
	display: inline-block;
	vertical-align: top;
	width: 300px;
	height: 108px;
}
.content_title_middle_wrap#big {
	height: 108px;
}

.content_title_font {
	font-size: 11pt;
	font-weight: bold;
}

.content_title_font#repair {
	color: white;
}


.content_represent_area {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 175px;
	border-bottom: 1px solid black;
}

.content_represent_flex_wrap {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
	height: 175px;
}

.content_represent_wrap {
	display: inline-block;
	vertical-align: top;
	width: 300px;
	height: 150px;
}

.content_represent_img {
	display: none;
}

.status_wrap {
	display: inline-block;
	vertical-align: top;
	width: 108px;
	height: 108px;
	background-color: green;
	border-radius: 54px;
}

.status_letter {
	font-size: 10pt;
	color: white;
	font-weight: bold;
}

.repair_wrap {
	display: inline-block;
	vertical-align: top;
	width: 200px;
	height: 50px;
	background-color: green;
}


#assetName {
	height: 30px;  
}

#assetType {
	height: 30px;
}

#parentName {
	height: 30px;
}

#addFile {
	float: right;
}

#assetCode {
	width: 100px;
	height: 30px;
}

#assetStatus, #repairRank, #assetLocation, #assetInstalDt {
	width: 200px;
	height: 30px;
}

#assetLevel {
	width: 30px;
	height: 30px;
}

.content_title2 {
	display: none;
}


</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.slimscroll.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.slimscroll.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
 	//세팅에 마우스 갖다대면 메뉴 출력
 	$(".setting").mouseenter(function() {
		$(".menu_wrap1").css("display", "flex");
		$(".menu_wrap2").css("display", "flex");
		$(".menu_wrap3").css("display", "flex");
	});
	//메뉴에서 마우스 out되면 메뉴제거
	$(".setting_area").mouseleave(function() {
		$(".menu_wrap1").css("display", "none");
		$(".menu_wrap2").css("display", "none");
		$(".menu_wrap3").css("display", "none");
	});  
	
 	$(".treemap_scroll_wrap").slimScroll({
		width: "100%",
		height: "100%"
	}); 
 	
 	$(".main_table_wrap").slimScroll ({
 		axis: "x",
 		width: "100%",
		height: "490px"
 	});
 	
 	
  	$(".scroll_wrap").slimScroll ({
  		axis: "both",
 		width: "300px",
 		height: "108px"
 	}); 
 	
 	$(".updateBtn").on("click", function(){
 		
 		$(".content_represent_img").attr('src', 'resources/images/equipment2.jpg');
 	});
 	
	//클릭시 minus로 표시 변경
/* 	$(".treemap_content1#JM").on("click", function(){
		$(".treemap_sign1#JM").css({"background-image": "url(resources/images/minus.png)"});
		
	}); */

	$(".treemap_sign1").on("click", function(){
		console.log($(this).parent().attr('class'));
	});

});//document ready end
</script>
</head>
<body>
<div class="total_wrap">
	<div class="top_area"><!--top_area 시작-->
		<div class="logo_area">
			<div class="logo_wrap">
				<div class="logo"></div>
			</div>
			</div>
			<div class="cmms_area">
				<div class="cmms_wrap">
					<div class="cmms">CMMS</div>
				</div>
			</div>
			<div class="top_middle_area">
				<div class="top_middle_wrap"></div>
			</div>
			<div class="logout_area">
				<div class="logout_wrap">
				<div class="logout"></div>
			</div>
			</div>
				<div class="setting_area">
				<div class="setting_wrap">
				<div class="setting"></div></div>
				<div class="menu_wrap1">
					<div class="menu">폐기관리</div></div>
				<div class="menu_wrap2">
					<div class="menu">코드관리</div></div>
				<div class="menu_wrap3">
					<div class="menu">언어관리</div>
				</div>
			</div>
			<div class="home_area">
				<div class="home_wrap">
				<div class="home"></div>
			</div>
			</div>
			<div class="langug_area">
			<select class="langug_select">
				<option value="0">한국어</option>
				<option value="1">English</option>
				<option value="2">中國語</option>
			</select>
			</div>
				<div class="emp_area">
					<div class="emp_wrap">
						<div class="emp">이윤미 사원</div>
					</div>
				</div>
	</div><!--top_area종료  -->
	<div class="title_area"><!--title_area시작-->
		<div class="title_wrap">
			<div class="title">설비관리</div>
		</div>
	</div><!--title_area종료  -->
<div class="content_area">
<div class="content_wrap">
	<div class="treemap_wrap">
		<div class="treemap_scroll_wrap">
		<div class="treemap_content1" id="JZ">
			<div class="treemap_sign1"></div>
			<div class="treemap_title_wrap">
				<div class="treemap_title_middle_wrap">
				<div class="treemap_title">JZ</div>
				</div>
			</div>
		</div>
		<div class="treemap_content1" id="JM">
			<div class="treemap_sign1" id="JM"></div>
			<div class="treemap_title_wrap">
				<div class="treemap_title_middle_wrap">
				<div class="treemap_title">JM</div>
				</div>
			</div>
		</div>
 		<div class="treemap_content2">
 			<div class="treemap_sign2" ></div>
 			<div class="treemap_title_wrap">
 				<div class="treemap_title_middle_wrap">
 					<div class="treemap_title">VSMC</div>
 				</div>
 			</div>
 		</div>
 		<div class="treemap_content2">
 			<div class="treemap_sign2" ></div>
 			<div class="treemap_title_wrap">
 				<div class="treemap_title_middle_wrap">
 					<div class="treemap_title">VSMS</div>
 				</div>
 			</div>
 		</div>
 		<div class="treemap_content3">
 			<div class="treemap_sign3" ></div>
 			<div class="treemap_title_wrap">
 				<div class="treemap_title_middle_wrap">
 					<div class="treemap_title">JZ-VSMC-C31</div>
 				</div>
 			</div>
 		</div>
		</div>
		</div>
	<div class="content_right_area">
		<div class="btn_area">
<!-- 			<input type="button" value="삭제" class="deleteBtn"/> -->
			<input type="button" value="저장" class="saveBtn"/>
<!-- 			<input type="button" value="수정" class="updateBtn"/>
			<input type="button" value="등록" class="insertBtn"/> -->
		</div>
		<div class="content_right_wrap">
			<div class="content_wrap_left">
							<div class="content_title_wrap">
								<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">모설비코드</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap" id="content">
											<img src="resources/images/search.png"/>
										</div>
									</div>
								</div>
								<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">모설비명</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap" id="content">
											<input type="text" id="parentName" value="JM-FNS1-C31"/>
										</div>
									</div>
								</div>
								<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">설비코드</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap" id="content">
											<div class="content_title_font">JM-FNS1</div>
											<input type="text" id="assetCode" value="C31" />
										</div>
									</div>
								</div>
								<!--content title end -->
								<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">설비명</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap" id="content">
											<input type="text" id="assetName" value="JM-FNS1-C31" />
										</div>
									</div>
								</div>
								<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">설비레벨</div>
										</div>
									</div>
									<div class="content_con_middle_wrap" id="level">
										<div class="letter_center_wrap" id="level">
											<input type="text" id="assetLevel" value="3"/>
										</div>
									</div>
									<div class="content_con_middle_wrap" id="type">
										<div class="letter_center_wrap" id="type">
										<select id="assetType">
											<option>ELECTRIC STRUCTURE</option>
											<option>FACILITY</option>
										</select>
										</div>
									</div>
								</div>
								<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">설비그룹코드</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap" id="content">
											<img src="resources/images/search.png"/>
										</div>
									</div>
								</div>
								<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">원가부서</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap" id="content">
											<img src="resources/images/search.png"/>
										</div>
									</div>
								</div>
								<div class="content_title" id="big">
									<div class="content_title_middle_wrap" id="big">
									<div class="letter_center_wrap" id="big">
										<div class="content_title_font">참고자료</div>
										</div>
									</div>
									<div class="content_con_middle_wrap2">
										<div class="scroll_wrap">
										<img id="addFile" src="resources/images/plus.png">
										<div class="letter_center_wrap">
										<div class="content_title_font">&nbsp;</div>
										</div>
										</div>
									</div>
								</div><!--content title end-->
							</div>
						</div>
			<div class="content_wrap_right">
			<div class="content_represent_area">
				<div class="content_represent_flex_wrap">
					<div class="content_represent_wrap">
					<div class="letter_center_wrap">
						<img src="resources/images/document.png" width="150px" height="130px" />
						</div>
						<div class="content_represent_title">
							<div class="letter_center_wrap">
							<div class="content_title_font">documenaaaaaaaa1.hwp</div>
							</div>
						</div>
					</div>
					<img class="content_represent_img" src="resources/images/equipment1.jpg" width="300px" height="173px"/>
				</div>
			</div>
					<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">설비위치</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap" id="content">
											<input type="text" id="assetLocation" />
										</div>
									</div>
								</div>
					<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">가동일</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap" id="content">
											<input type="text" id="assetInstalDt" />
										</div>
									</div>
								</div>
					<div class="content_title2">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">정지일</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap" id="content">
											<div class="content_title_font">JM-FNS1-C31</div>
										</div>
									</div>
								</div>
					<div class="content_title">
									<div class="content_title_middle_wrap">
										<div class="letter_center_wrap" id="title">
											<div class="content_title_font">수리우선순위</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap"  id="content">
										<div class="repair_wrap">
											<div class="letter_center_wrap" id="repair">
												<select id="repairRank">
													<option>IMMEDIATE RESPONSE</option>
													<option>설비정지</option>
												</select>
											</div>
										</div>
										</div>
									</div>
								</div>
									<div class="content_title" id="big">
									<div class="content_title_middle_wrap" id="big">
									<div class="letter_center_wrap" id="big">
										<div class="content_title_font">설비상태</div>
										</div>
									</div>
									<div class="content_con_middle_wrap">
										<div class="letter_center_wrap">
											<div class="status_wrap">
											<div class="letter_center_wrap" id="status">
												<select id="assetStatus">
													<option>NON ASSET ITEM</option>
													<option>설비정지</option>
												</select>
											</div>
											</div>
										</div>
									</div>
								</div><!--content title end-->
			</div><!--content wrap right 종료 -->
		</div>
		</div><!--content right area 종료-->
	</div><!--content wrap 종료  -->
</div><!--content area 종료-->
</div><!--total wrap 종료-->
</body>
</html>