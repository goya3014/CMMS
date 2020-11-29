<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>언어관리</title>
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
	width: 664px;
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
.Total {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
	height: 100%;
	border: 1px solid black;
}
.Total_area {
	display: inline-block;
	width: 640px;
	height: 100%;
}
.Total_area_left {
	display: inline-block;
	width: 200px;
	height: 100%;
	vertical-align: top;
}
.Total_area_left_1 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 200px;
	height: 80px;
}
.Total_area_left_2 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 200px;
	height: 80px;
}
.Total_area_left_3 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 200px;
	height: 80px;
}
.Total_area_left_4 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 200px;
	height: 80px;
}
.Total_area_left_5 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 200px;
	height: 80px;
}
.Total_area_left_6 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 200px;
	height: 80px;
}
.Total_area_left_1_box {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 150px;
	height: 30px;
	background-color: LightGray;
}
.Total_area_left_2_box {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 150px;
	height: 30px;
	background-color: LightGray;
}
.Total_area_left_3_box {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 150px;
	height: 30px;
	background-color: LightGray;
}
.Total_area_left_4_box {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 150px;
	height: 30px;
	background-color: LightGray;
}
.Total_area_left_5_box {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 150px;
	height: 30px;
	background-color: LightGray;
}
.Total_area_left_6_box {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 150px;
	height: 30px;
	background-color: LightGray;
}
.Total_area_left_6_box:hover {
	cursor: pointer;
}
.Total_area_left_1_box_text {
	font-size: 10pt;
}
.Total_area_left_2_box_text {
	font-size: 10pt;
}
.Total_area_left_3_box_text {
	font-size: 10pt;
}
.Total_area_left_4_box_text {
	font-size: 10pt;
}
.Total_area_left_5_box_text {
	font-size: 10pt;
}
.Total_area_left_6_box_text {
	font-size: 10pt;
}

.Total_area_right {
	display: inline-block;
	width: 430px;
	height: 100%;
	vertical-align: top;
}
.Total_area_right_1 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 430px;
	height: 80px;
}
.Total_area_right_2 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 430px;
	height: 80px;
}
.Total_area_right_3 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 430px;
	height: 80px;
}
.Total_area_right_4 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 430px;
	height: 80px;
}
.Total_area_right_5 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 430px;
	height: 80px;
}
.Total_area_right_6 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 430px;
	height: 80px;
}
.Total_area_right_7 {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 430px;
	height: 80px;
}
.text1 {
	height: 20px;
}
.text2 {
	height: 20px;
}
.text3 {
	height: 20px;
}
.text4 {
	display: inline-block;
	height: 20px;
	vertical-align: top;
}
.Search {
	display: inline-block;
	height: 26px;
	width: 26px;
	background-image: url("resources/images/search.png");
	border: 1px solid black;
}
.Search:hover {
	cursor: pointer;
}
.button {
	height: 40px;
	width: 100px;
	font-size: 15pt;
}

</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
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
	
});

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
				<div class="emp_area">
				<div class="emp_wrap">
				<div class="emp">이윤미 사원</div>
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
	</div><!--top_area종료  -->
	<div class="title_area"><!--title_area시작-->
		<div class="title_wrap">
			<div class="title">언어관리</div>
		</div>
	</div><!--title_area종료  -->
<div class="content_area">
<div class="Total">
	<div class="Total_area">
		<div class="Total_area_left">
			<div class="Total_area_left_1">
				<div class="Total_area_left_1_box">
					<div class="Total_area_left_1_box_text">코드분류</div>
				</div>
			</div>
			<div class="Total_area_left_2">
				<div class="Total_area_left_2_box">
					<div class="Total_area_left_2_box_text">코드</div>
				</div>
			</div>
			<div class="Total_area_left_3">
				<div class="Total_area_left_3_box">
					<div class="Total_area_left_3_box_text">한국명</div>
				</div>
			</div>
			<div class="Total_area_left_4">
				<div class="Total_area_left_4_box">
					<div class="Total_area_left_4_box_text">영문명</div>
				</div>
			</div>
			<div class="Total_area_left_5">
				<div class="Total_area_left_5_box">
					<div class="Total_area_left_5_box_text">중국명</div>
				</div>
			</div>
			<div class="Total_area_left_6">
				<div class="Total_area_left_6_box">
					<div class="Total_area_left_6_box_text">언어추가</div>
				</div>
			</div>
		</div>
		<div class="Total_area_right">
			<div class="Total_area_right_1">
				<select style="width:300px;height:23px"></select>
			</div>
			<div class="Total_area_right_2">
 				<input class="text4" type="text" size = "36">
 			    <div class="Search"></div>
			</div>
			<div class="Total_area_right_3">
				<input class="text1" type="text" size="40"/>
			</div>
			<div class="Total_area_right_4">
				<input class="text2" type="text" size="40"/>
			</div>
			<div class="Total_area_right_5">
				<input class="text3" type="text" size="40"/>
			</div>
			<div class="Total_area_right_6">

			</div>
			<div class="Total_area_right_7">
				<input class="button" type="button" value="저장"/>
			</div>
		</div>
	</div> 
</div>
</div>
</div>
</body>
</html>