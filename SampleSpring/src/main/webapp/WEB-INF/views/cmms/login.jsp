<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css"> /*타입을 테스트로 */
html, body {
	margin: 0px;
	padding: 0px;
	font-size: 0pt;
	width: 100%;
	top: 0px;
	left: 0px;
	height: 100%;
}

body {
	display: flex;
	align-items: center;
	justify-content: center;
}

.sidemap {
	display: inline-block;
	width: 1280px;
	height: 720px;
	border: 1px solid black;
}

.topbox {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 25%;
}

.midbox {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 50%;
	background-color: white;
}

.midright {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 766px;
	height: 100%;
	float: right;
}

.right_all {
	width: 400px;
	height: 208px;
	float: left;
	top: 50%;
	margin-top: -105px;
	position: absolute;
}

.right_top {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 42px;
}

.langug_select {
	width: 150px; /* 원하는 너비설정 */
	padding: .8em .8em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	background: url("resources/images/selectimg.png") no-repeat 95% 50%;
	/* 네이티브 화살표를 커스텀 화살표로 대체 */
	border: 1px solid #999;
	border-radius: 0px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
	float: right;
}


.right_bottom {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 164px;
}

.bottom_left {
	float: left;
	width: 246px;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

#loginform {
	width: 210px;
	height: 70px;
	margin: 100px auto;
	border: 1px solid gray;
	border-radius: 5px;
	padding: 15px;
	margin: 100px auto;
}

#loginform input {
	margin-top: 6px;
	width: 198px;
	height: 20px;
}


.bottom_right {
	float: right;
	width: 150px;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.btn_login {
	height: 100px;
	width: 130px;
	font-size: 15pt;
	color: white;
	outline: 0;
	background-color: #377EC3;
	border-radius: 10px;
}

.midleft {
	float: left;
	width: 510px;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.imgbox {
	width: 340px;
	height: 200px;
}

img {
	width: 100%;
	height: 100%;
}

.flowbox {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 25%;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	
	langugList();//언어선택 리스트 불러오기
	
	$(".langug_select").on("change", function(){
		langugChange();//아이디, 로그인, 패스워드 단어 변경
	});
	
	$(".btn_login").on("click", function(){
		
		if($("#id").val() == "" || $("#pw").val() == ""){
			
			alert("아이디나 비밀번호가 누락되었습니다.");
			
		}else{
			$("#langug_select").val($(".langug_select").val());
			loginCheck();	
			console.log("로그인 체크 실행");
			
		}
	});
	
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
		},			
		error : function(request, status, error){ // 실행도중 에러가 발생했을때
			console.log("txt : " + request.responseText); //반환 텍스트
			console.log("error : " + error); // 에러내용			
		}
		
	});
}//langugList end

function langugChange() {
	
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post", 
		url : "langugChangeAjax", 
		dataType : "json",//보내는 데이터형태
		data: params,
		success : function(res){ //성공시 다음의 함수를 실행하게되며 돌아오는 값을 res라는 이름으로 받는다
			 if(res.result == "success"){
				$(".btn_login").text(res.list[0].LANGUG_NAME);
				 $("#loginId").attr("placeholder", res.list[1].LANGUG_NAME);
				 $("#loginPw").attr("placeholder", res.list[2].LANGUG_NAME);
				
			}else {
				console.log("실패");
			} 
		},			
		error : function(request, status, error){ // 실행도중 에러가 발생했을때
			console.log("txt : " + request.responseText); //반환 텍스트
			console.log("error : " + error); // 에러내용			
		}
		
	});
	
	
}//langugChange end


function loginCheck() {
	
	var params = $("#loginForm").serialize();
	
	$.ajax({
		type : "post", 
		url : "loginCheckAjax", 
		dataType : "json",//보내는 데이터형태
		data: params,
		success : function(res){ //성공시 다음의 함수를 실행하게되며 돌아오는 값을 res라는 이름으로 받는다
			 if(res.result == "success"){
				 
				 if($(".langug_select").val() == 0){
					 alert("로그인에 성공하였습니다.");
				 }else if($(".langug_select").val() == 1){
					 alert("Login Successful!");
				 }else {
					 alert("登录成功。");
				 }
				
				$("#empName").val(res.empName);
				$("#positnName").val(res.positnName);
				$("#langugselect").val($(".langug_select").val());
				$("#actionForm2").attr("action", "home");
				$("#actionForm2").submit();
			 }else if(res.result == "fail") {
				alert("로그인에 실패하였습니다.");
			 }else{
				 alert("로그인 중 문제가 발생하였습니다.");
			 } 
		},			
		error : function(request, status, error){ // 실행도중 에러가 발생했을때
			console.log("txt : " + request.responseText); //반환 텍스트
			console.log("error : " + error); // 에러내용			
		}
		
	});
	
	
}//langugChange end
</script>
</head>
<body>
<form action="#" id="actionForm2" method="post">
<input type="hidden" id="empName" name="empName"/>
<input type="hidden" id="positnName" name="positnName"/>
<input type="hidden" id="langugselect" name="langug_select" />
</form>
	<div class="sidemap">
		<!-- 화면크기 제한 1280*720-->
		<div class="topbox"></div>
		<div class="midbox">
			<div class="midleft">
				<div class="imgbox">
					<img class="logo" src="resources/images/login_logo.png" />
				</div>
			</div>
			<div class="midright">
				<div class="right_all">
					<div class="right_top">
					<form action="#" id="actionForm" method="post">
						<select class="langug_select" name="langug_select">
						</select>
						</form>
					</div>
					<div class="right_bottom">
						<div class="bottom_left">
							<form action="#" id="loginForm" method="post">
							<input type="hidden" id="langug_select" name="langug_select" />
								<div>
									<input type="text" id="id" name="id" placeholder="로그인"> 
									<input type="password" id="pw" name="pw" placeholder="패스워드">
								</div>
							</form>
						</div>
						<div class="bottom_right">
							<button class="btn_login">로그인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="flowbox"></div>
	</div>
</body>
</html>