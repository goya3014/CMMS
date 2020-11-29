<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
	width: 320px;
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

.tree_wrap2, .tree_wrap3 {
	display: inline-block;
	vertical-align: top;
}

.tree_wrap2 {
	margin-left: 30px;
}
.tree_wrap3 {
	margin-left: 60px;
}

.treemap_sign1:hover, .treemap_title:hover {
	cursor: pointer;
}

.treemap_sign1, .treemap_sign2  {
	display: inline-block;
	vertical-align: top;
	width: 30px;
	height: 100%;
}

.treemap_sign1 {
	background-image: url("resources/images/plus.png");
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
	margin-bottom: 3px
}

.insertBtn {
	background-color: #90C84B;
	width: 93px;
	height: 30px;
	font-size: 11pt;
	font-weight: bold;
	float: right;
}

.select_code {
	display: inline-block;
	vertical-align: top;
	width: 145px;
	height: 100%;
	float: right;
}


#select_text {
	display: inline-block;
	vertical-align: top;
	width: 344px;
	height: 26px;
	padding: 0px;
	float: right;
}

.select_btn {
	width: 80px;
	height: 100%;
	float: right;
}

.main_table_wrap {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 441px;
	
}

table {
	border-collapse: collapse;
	border: 1px solid black;
	width: 100%;
}

tr {
	height: 40px;
}

tbody > tr:hover {
	background-color: #49A965;
}

td, th {
	font-size: 11pt;
	text-align: center;
	border: 1px solid black;
}

thead {
	background-color: #90C84B;
}

.paging_area {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	height: 40px;
	margin-top: 3px;
}

.paging_wrap {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 40px;
}

.paging {
	font-size: 12pt;
	width: 30px;
}

.paging:hover {
	cursor: pointer;
}

#first, #before, #next, #last {
	display: inline-block;
	vertical-align: top;
	width: 30px;
	height: 30px;
}

#first {
	background-image: url("resources/images/first.png");
}
#before {
	background-image: url("resources/images/before.png");
	margin-right: 20.72px;
}
#next {
	background-image: url("resources/images/next.png");
}
#last {
	background-image: url("resources/images/last.png");
}

.sub_select_wrap {
	width: 150px;
	height: 28px;
	font-size: 10pt;
	float: right;
	border: 1px solid black;
}

.sub_select_text {
	font-size: 10pt;
}

.sub_select_text_wrap {
	display: inline-block;
	vertical-align: top;
	width: 150px;
	height: 28px;
}

.sub_select_text_center{
	display: flex;
	align-items: center;
	justify-content: center;
	height: 28px;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.slimscroll.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.slimscroll.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var subSelect = 0;
	/*홈화면 script 시작*/
	//트리맵 스크롤
 	$(".treemap_scroll_wrap").slimScroll({
		width: "100%",
		height: "100%"
	}); 
 	
	//설비리스트 스크롤
 	$(".main_table_wrap").slimScroll ({
 		axis: "x",
 		width: "100%",
		height: "441px"
 	});
	
 	//트리맵 로드
 	//treeload();
	//클릭시 minus로 표시 변경
/* 	$(".treemap_content1#JM").on("click", function(){
		$(".treemap_sign1#JM").css({"background-image": "url(resources/images/minus.png)"});
		
	}); */

/* 	$(".treemap_sign1").on("click", function(){
		console.log($(this).parent().attr('class'));
	}); */

	
	$(".sub_select").on("click", function(){
		
		if(subSelect == 0){
			
		$(".sub_select_wrap").css("background-color", "#90C84B");
		subSelect = 1;
		
		}else {
			
		$(".sub_select_wrap").css("background-color", "white");
		subSelect = 0;
		}
	});
	var temp = 0;
	$(".insertBtn").on("click", function(){
		
		console.log("등록버튼 클릭됨");
		var html = "";
		
		if(temp == 0){
			
		html += "<div class=\"treemap_content2\" id=\"VSMC\">";
		html +=	"<div class=\"tree_wrap2\"></div>";
		html +=	"<div class=\"treemap_sign1\"></div>";
		html +=	"<div class=\"treemap_title_wrap\">";
		html +=	"<div class=\"treemap_title_middle_wrap\">";
		html +=	"<div class=\"treemap_title\">VSMC</div>";
		html +=	"</div></div></div>";
		
		$("#JZ").append(html);
		temp = 1;
		
		}else{
			console.log("remove");
			$("#JZ").remove();
			temp = 0;
		}
		
		
	});
	
	
	



	
	/* 홈화면 script 종료 */
});//document ready end

function homeLangugChange() {
	
	var params = $("#actionForm").serialize();
	$.ajax({
		type : "post", //전송방식
		url : "homeLangugChangeAjax", //주소
		dataType : "json", //데이터형태
		data: params, //보낼 데이터
		success : function(res){
			if(res.result == "success"){
			$(".insertBtn").val(res.list[0].LANGUG_NAME);/*등록*/
			$(".title").text(res.list[1].LANGUG_NAME);/*타이틀*/
			$(".sub_select_text").text(res.list[2].LANGUG_NAME);/*하위포함*/
			
			var html = "";
			
			html += "<option value=\"" + 0 + "\">" + res.list[3].LANGUG_NAME + "</option>";
			html += "<option value=\"" + 1 + "\">" + res.list[7].LANGUG_NAME + "</option>";
			html += "<option value=\"" + 2 + "\">" + res.list[8].LANGUG_NAME + "</option>";
			html += "<option value=\"" + 3 + "\">" + res.list[11].LANGUG_NAME + "</option>";
			
			$(".select_code").html(html);
			
			$(".select_btn").html(res.list[4].LANGUG_NAME);
			
			
			html = "";
			
			html += "<tr>";
			html += "<th>" + res.list[5].LANGUG_NAME +"</th>";/*번호*/
			html += "<th>" + res.list[3].LANGUG_NAME +"</th>";/*설비코드*/
			html += "<th>" + res.list[7].LANGUG_NAME +"</th>";/*설비명*/
			html += "<th>" + res.list[6].LANGUG_NAME +"</th>";/*레벨*/
			html += "<th>" + res.list[10].LANGUG_NAME +"</th>";/*설비위치*/
			html += "<th>" + res.list[8].LANGUG_NAME +"</th>";/*설비타입*/
			html += "<th>" + res.list[11].LANGUG_NAME +"</th>";/*설비그룹코드 */
			html += "<th>" + res.list[9].LANGUG_NAME +"</th>";/*설비상태 */
			html += "</tr>";
			
			$("thead").html(html);
			
			}else{
				alert("언어변경중 문제가 발생하였습니다.")
			}
		},
		error: function(request, status, error){//실행 중 에러 발생 시 경우 해당 함수를 실행하겠다.
			console.log("txt : " + request.responseText); //반환 텍스트
			console.log("error : " + error); //에러 내용
		} 
	});//ajax end
	
}//homeLangugChange 종료


function treeload() {
	
	$.ajax({
		type : "post", //전송방식
		url : "treeloadAjax", //주소
		dataType : "json", //데이터형태
		success : function(res){
			if(res.result == "success"){
			
				var html = "";
				
				for(var i = 0; i < res.list.length; i++){
					
				html += "<div class=\"treemap_content" + res.list[i].LEVEL + "\" id=\"" + res.list[i].ASSET_CODE + "\">";
				
				if(res.list[i].LEVEL != 1){
					html += "<div class=\"tree_wrap" + res.list[i].LEVEL + "\"></div>";
				}				
				
				if(res.list[i].LOW_LV_COUNT > 1){
					html += "<div class=\"treemap_sign1\"></div>";	
				}else{
					html += "<div class=\"treemap_sign2\"></div>";
				}
				
				html += "<div class=\"treemap_title_wrap\">";
				html += "<div class=\"treemap_title_middle_wrap\">";
				html +=	"<div class=\"treemap_title\">" + res.list[i].ASSET_CODE + "</div>";
				html +=	"</div></div></div>";
				
				$(".treemap_scroll_wrap").html(html);
				}
			}else{
				alert("트리구조 로딩중 문제가 발생하였습니다.");
			}
		},
		error: function(request, status, error){//실행 중 에러 발생 시 경우 해당 함수를 실행하겠다.
			console.log("txt : " + request.responseText); //반환 텍스트
			console.log("error : " + error); //에러 내용
		} 
	});//ajax end
	
}//treeload 종료


</script>
</head>
<body>
<c:import url="/template"></c:import>
			<div class="langug_area">
		<form action="#" id="actionForm">
			<select class="langug_select" name="langug_select">
			</select>
		</form>
			</div>
				<div class="emp_area">
					<div class="emp_wrap">
						<div class="emp">${param.positnName} ${param.empName}</div>
					</div>
				</div>
	</div><!--top_area종료  -->
		<div class="title_area"><!--title_area시작-->
		<div class="title_wrap">
			<div class="title">현재 페이지의 타이틀</div>
		</div>
	</div><!--title_area종료  -->
<div class="content_area">
<div class="content_wrap">
	<div class="treemap_wrap">
		<div class="treemap_scroll_wrap">
	 	<div class="treemap_content1" id="JZ">
	 	<div class="tree_wrap2"></div>
			<div class="treemap_sign1"></div>
			<div class="treemap_title_wrap">
				<div class="treemap_title_middle_wrap">
				<div class="treemap_title">JZ</div>
				</div>
			</div>
		</div>
<!--  		<div class="treemap_content2">
 			<div class="treemap_sign2" ></div>
 			<div class="treemap_title_wrap">
 				<div class="treemap_title_middle_wrap">
 					<div class="treemap_title">VSMC</div>
 				</div>
 			</div>
 		</div>
 		<div class="treemap_content3">
 			<div class="treemap_sign1" ></div>
 			<div class="treemap_title_wrap">
 				<div class="treemap_title_middle_wrap">
 					<div class="treemap_title">JZ-VSMC-C31</div>
 				</div>
 			</div>
 		</div> -->
		</div><!--treemap_scroll_wrap 종료-->
		</div><!--treemap 종료-->
	<div class="content_right_area">
		<div class="btn_area">
			<input type="button" value="등록" class="insertBtn"/>
		</div>
		<div class="search_area">
		 <button class="select_btn">검색</button>
		 	 <input id="select_text">
			 <select class="select_code">
				<!-- 셀렉트박스로 코드 선택 -->
			 </select>
			 <div class="sub_select_wrap">
			 <div class="sub_select_text_wrap">
			 <div class="sub_select_text_center">
			  <input type="checkbox" class="sub_select"/>
			 <div class="sub_select_text">하위포함</div>
			 </div>
			 </div>
			 </div>
		 </div><!--search area end -->
		 <div class="main_table_wrap">
		 <table>
		 <thead>
		 </thead>
		 <tbody>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	<tr>
		 		<td>1</td>
		 		<td>JM-VSMC-SORT1</td>
		 		<td>VSM Cutting Line3-1</td>
		 		<td>3</td>
		 		<td>지모 > 1공장 > 재단 3-1반</td>
		 		<td>SEWER INFRASTRUCT</td>
		 		<td>Roller High-Post(Tangent)</td>
		 		<td>설비가동중</td>
		 	</tr>
		 	</tbody>
		 </table>
		 </div><!--main_table_wrap 종료-->
		 <div class="paging_area">
		 		<div class="paging_wrap">
			<div class="paging" id="first"></div>
			<div class="paging" id="before"></div>
			<div class="paging"><b>1</b></div>
			<div class="paging">2</div>
			<div class="paging">3</div>
			<div class="paging">4</div>
			<div class="paging">5</div>
			<div class="paging" id="next"></div>
			<div class="paging" id="last"></div>
		</div>
		 </div>
		</div><!--content right area 종료-->
	</div><!--content wrap 종료  -->
</div><!--content area 종료-->
</div><!--total wrap 종료-->
</body>
</html>