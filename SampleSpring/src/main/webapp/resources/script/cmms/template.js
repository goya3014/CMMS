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