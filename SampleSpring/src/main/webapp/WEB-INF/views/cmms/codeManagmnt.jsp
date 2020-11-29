<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드관리</title>
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
	vertical-align: top;
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
	width: 1000px;
	height: 100%;
	vertical-align: top;
}
.Total_area_left {
	display: inline-block;
	width: 300px;
	height: 100%;
	vertical-align: top;
}
.Total_area_left1 {
	display: inline-block;
	width: 300px;
	height: 100px;
	vertical-align: top;
}
.Total_area_left_1 {
	display: flex;
	width: 300px;
	height: 100px;
	align-items: flex-end;
	justify-content: center;
}
.Total_area_left2 {
	display: inline-block;
	width: 300px;
    height: 500px;
	vertical-align: top;
}
.Total_area_left_2 {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 300px;
    height: 500px;
    
}
.Total_area_left_1_box {
	display: flex;
	width: 100px;
	height: 40px;
	align-items:center;
	justify-content: center;
	background-color:Gray;
}
.Total_area_left_2_box {
	display: inline-block;
	vertical-align: top;
	width: 250px;
	height: 450px;
	background-color: lightGray;
}
.Total_area_left_2_box_contents {
	display: inline-block;
	width: 250px;
	height: 40px;
	font: 10pt;
}
.Total_area_left_1_box_text {
	font-size: 10pt;
}

.Total_area_mid {
	display: inline-block;
	width: 300px;
	height: 100%;
	vertical-align: top;
}
.Total_area_mid1 {
	display: inline-block;
	width: 300px;
	height: 100px;
	vertical-align: top;
}
.Total_area_mid_1 {
	display: flex;
	width: 300px;
	height: 100px;
	align-items: flex-end;
	justify-content: center;
}
.Total_area_mid_1_box {
	display: flex;
	width: 100px;
	height: 40px;
	align-items:center;
	justify-content: center;
	background-color:Gray;
}
.Total_area_mid_1_box_text {
	font-size: 10pt;
}
.Total_area_mid2 {
	display: inline-block;
	width: 300px;
    height: 500px;
	vertical-align: top;
}
.Total_area_mid_2 {
    display: flex;
    width: 300px;
    height: 500px;
    align-items: center;
    justify-content: center;
}
.Total_area_mid_2_2 {
	display: inline-block;
	width: 250px;
	height: 450px;
	vertical-align: top;
	background-color: lightgray;
}
.Total_area_mid_2_box {
	display: inline-block;
	width: 250px;
	height: 400px;
	vertical-align: top;
}
.Total_area_mid_2_box2 {
	display: inline-block;
	width: 250px;
	height: 50px;
	vertical-align: top;
}
.Total_area_mid_2_box2_frame {
	display: flex;
	width: 250px;
	height: 50px;
	align-items: center;
    justify-content: center;
	
}
.Total_area_mid_2_box_btn {
	display: inline-block;
	height: 40px;
	width: 100px;
	font-size: 15pt;
} 
.Total_area_right {
	display: inline-block;
	width: 300px;
	height: 100%;
	vertical-align: top;
}
.Total_area_right_left {
	display: inline-block;
	width: 100px;
	height: 100%;
}
.Total_area_right_left_area {
	display: inline-block;
	width: 100px;
	height: 400px;
	vertical-align: top;
}
.Total_area_right_left_area_1 {
	display: flex;
	width: 100px;
	height: 150px;
	align-items: flex-end;
	justify-content: center;
}
.Total_area_right_left_area_1_box {
	display: flex;
	width: 80px;
	height: 30px;
	align-items: center;
	justify-content: center;
	background-color: Gray;
}
.Total_area_right_left_area_1_box_text {
	font-size: 10pt;
}
.Total_area_right_left_area_2 {
	display: flex;
	width: 100px;
	height: 150px;
	align-items: center;
	justify-content: center;
}
.Total_area_right_left_area_2_box {
	display: flex;
	width: 80px;
	height: 30px;
	align-items: center;
	justify-content: center;
	background-color: Gray;
}
.Total_area_right_left_area_2_box_text {
	font-size: 10pt;
}
.Total_area_right_right {
	display: inline-block;
	width: 200px;
	height: 100%;
	vertical-align:top;
}
.Total_area_right_right_area {
	display: inline-block;
	width: 200px;
	height: 400px;
	vertical-align: top;
}
.Total_area_right_right_area_1 {
	display: flex;
	width: 200px;
	height: 150px;
	align-items: flex-end;
	justify-content: center;
}
.Total_area_right_right_area_1_box {
	display: flex;
	width: 160px;
	height: 26px;
	align-items: center;
	justify-content: center;
}
.Total_area_right_right_area_2 {
	display: flex;
	width: 200px;
	height: 150px;
	align-items: center;
	justify-content: center;
}
.Total_area_right_right_area_2_box {
	display: flex;
	width: 160px;
	height: 26px;
	align-items: center;
	justify-content: center;
}
.Total_area_right_right_area_3 {
	display: flex;
	width: 200px;
	height: 40px;
	align-items: center;
	justify-content: center;
}
.Total_area_right_right_area_3_btn {
	display: flex;
	width: 100px;
	height: 40px;
	align-items: center;
	justify-content: center;
	font-size: 15pt;
}
.temp {
	display: inline-block;
	width: 250px;
	height: 20px;
	font-size: 10pt;
	text-align: center;
	border-bottom: 1px solid black;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.slimscroll.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.slimscroll.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {//document 그린후 실행
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
	
	//코드관리 화면 
	//코드대분류박스 스크롤

	$(".Total_area_left_2_box").slimScroll({
		width: "250px",
		height: "450px"
	});
	
	//코드관리 화면
	//코드소분류박스 스크롤
	$(".Total_area_mid_2_box").slimScroll({
		width: "250px",
		height: "400px"
	});
	
	
	
	langugList();
	
	//코드관리화면 끝
	
	/*javascript, jQuery 작성공간  */
});//document ready end

function langugList() {
	
	$.ajax({
		type : "post", 
		url : "langugListAjax", 
		dataType : "json", //보내는 데이터형태
		success : function(res){ //성공시 다음의 함수를 실행하게되며 돌아오는 값을 res라는 이름으로 받는다
			 if(res.result == "success"){
				var html = "";
				
				for(var i = 0; i < res.list.length; i++){
					html += "<option value=\"" + i + "\">" + res.list[i].LANGUG_NAME + "</option>";
					
				}
				$(".langug_select").append(html);
				
			}else {
				console.log("실패");
			} 
			console.log(res.result);
		},			
		error : function(request, status, error){ // 실행도중 에러가 발생했을때
			console.log("txt : " + request.responseText); //반환 텍스트
			console.log("error : " + error); // 에러내용			
		}
		
	});

	
}//langugList end
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
			<div class="title">코드관리</div>
		</div>
	</div><!--title_area종료  -->
<div class="content_area">
	<div class="Total">
		<div class="Total_area">
			<div class="Total_area_left">
			<div class="Total_area_left1">
				<div class="Total_area_left_1">
					<div class="Total_area_left_1_box">
						<div class="Total_area_left_1_box_text">코드대분류</div>
					</div>
			</div>
			</div>
			<div class="Total_area_left2">
				<div class="Total_area_left_2">
					<div class="Total_area_left_2_box">
						<input type="button" class="Total_area_left_2_box_contents" value="설비코드">
						<input type="button" class="Total_area_left_2_box_contents" value="설비코드">
						<input type="button" class="Total_area_left_2_box_contents" value="설비코드">
						<input type="button" class="Total_area_left_2_box_contents" value="설비코드">
						<input type="button" class="Total_area_left_2_box_contents" value="설비코드">
					</div>
				</div>
			</div>
			</div>
			<div class="Total_area_mid">
				<div class="Total_area_mid1">
				<div class="Total_area_mid_1">
					<div class="Total_area_mid_1_box">
						<div class="Total_area_mid_1_box_text">코드소분류</div>
					</div>
				</div>
				</div>
				<div class="Total_area_mid2">
				<div class="Total_area_mid_2">
					<div class="Total_area_mid_2_2">
					<div class="Total_area_mid_2_box">
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
						<div class="temp">test</div>
					</div>
					<div class="Total_area_mid_2_box2">
					<div class="Total_area_mid_2_box2_frame">
						<input class="Total_area_mid_2_box_btn" type="button" value="추가"/>
					</div>
					</div>
					</div>
				</div>
				</div>
			</div>
			<div class="Total_area_right">
				<div class="Total_area_right_left">
					<div class="Total_area_right_left_area">
						<div class="Total_area_right_left_area_1">
							<div class="Total_area_right_left_area_1_box">
								<div class="Total_area_right_left_area_1_box_text">코드</div>
							</div>
						</div>
						<div class="Total_area_right_left_area_2">
							<div class="Total_area_right_left_area_2_box">
								<div class="Total_area_right_left_area_2_box_text">코드명</div>
							</div>
						</div>
					</div>
				</div>
				<div class="Total_area_right_right">
					<div class="Total_area_right_right_area">
						<div class="Total_area_right_right_area_1">
							<input type="text" class="Total_area_right_right_area_1_box"/>
						</div>
						<div class="Total_area_right_right_area_2">
							<input type="text" class="Total_area_right_right_area_2_box" />
						</div>
						<div class="Total_area_right_right_area_3">
							<input class="Total_area_right_right_area_3_btn" type="button" value="저장"/> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>