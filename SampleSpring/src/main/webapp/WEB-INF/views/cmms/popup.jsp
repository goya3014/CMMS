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

.popup_bg {
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0px;
	left: 0px;
	background-color: black;
	opacity: 0.3;
	z-index: 50;
}


.popup_area {
	background-color:white;
	width: 600px;
	height: 600px;
	position:absolute;
	top: calc(50% - 300px);
	left: calc(50% - 300px);
	box-shadow: 1px 0px 4px 0px rgba(0, 0, 0, 0.8);
	z-index: 100;
} 

.popup_title_area {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 50px;
	background-color: #377EC3;
}

.popup_title_wrap {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 40px;
	height: 100%;
	margin-left: 20px;
}

.popup_title {
	font-size: 15pt;
	font-weight: bold;
	color: white;
}
.popup_con_area {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 480px;
}

.popup_btn_area {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
	height: 50px;
	
}

.popup_btn_wrap {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 80px;
	height: 40px;
	background-color: #377EC3;
}

.popup_btn {
	font-size: 15pt;
	font-weight: bold;
	color: white;
}

</style>
</head>
<body>
<div class="popup_bg"></div>
		<div class="popup_area">
			<div class="popup_title_area">
				<div class="popup_title_wrap">
					<div class="popup_title">알림</div>
				</div>
			</div>
				<div class="popup_con_area">
				
				</div>
				<div class="popup_btn_area">
					<div class="popup_btn_wrap">
					<div class="popup_btn">닫기</div></div>
				</div>
		</div>
</body>
</html>