<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	${Data}
	
	<!-- ajax의 결과값 -->
	<div id ="result"></div>
	
	<!-- xml의 결과값 -->
	<div id ="result1"></div>
	
	<!-- ajax를 사용할 수 있게 jquery를 링크한다. -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>	
	<script>
	$(function(){
		//json 요청의 ajax
		$.ajax({ // HTTP 요청을 만드는 직관적인 방법 제공
			url: "./test.json", //클라이언트가 요청을 보낼 서버의 URL 주소
			type: "GET", // HTTP 요청 방식 (GET, POST 등)
			contentType: "apllication/JSON",
			dataType: "json", // 서버에서 보내줄 데이터의 타입
			success: function(ret){ // 결과 성공 콜백 함수
				console.log(ret); // 콘솔에 로그 출력
				$("#result").html(ret.data); //결과값 result의 전송받은 데이터 출력
			}
		});
		
		// xml요청의 ajax
		$.ajax({
			url: "./test.json",
			type: "GET",
			contentType: "application/XML",
			dataType: "xml",
			success: function(ret){
				console.log(ret);
				$("#result1").html($(ret).find("data"));
			}
		});
	});
	</script>
</body>
</html>