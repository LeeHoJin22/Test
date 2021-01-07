<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	ul#menu li{
		background-color: black;
		color: white;
		padding: 5px 10px;
		text-decoration: none;
		border-radius: 4px;
		margin-bottom: 5px;
		width: 100px;
	}
	
	ul#menu li:hover{
		background-color: green;
	}
	
	table{
		border: 1px solid black;
	}
	
	table#div_getData td{
		width: 100px;
		padding: 10px;
		border: 1px solid black;
	}
</style>
<script type="text/javascript" src="jquery-2.2.2.min.js"></script>
<script>
	$(function(){
		/* hover기능을 처리하는 함수
		1. 리스트에 마우스를 댔을 때 부서번호를 val()함수를 통해 불러온다.
		2. ajax를 통해 데이터를 요청한다. 데이터를 요청할 시에
			deptNo를 보내주어 이 부서번호에 관한 정보를 json형식으로 달라고 요청
			요청 url은 Testcont로 Servlet에서 요청 url을 받는다.
		3. 데이터 요청에 성공할 시 테이블에 뿌려주도록 구현 */ 
		$('#menu li').hover(function(){
			var getDeptNo="";
			var htmlText"";
			getDeptNo = $(this).text();
			
			$(this).append($("<span> ***</span>"));
			
			$.ajax({
				type : "post",
				url : "Textcont",
				data : {deptNo: getDeptNo},
				dataType: "json",
				
				success : function(data){
					for(var i = 0; i <data.length; i++){
						htmlText += "<tr>"
						+"<td>"+data[i].empNo+"</td>"
						+"<td>"+data[i].empName+"</td>"
						+"<td>"+data[i].deptNo+"</td>"
						+"<td>"+data[i].empSal+"</td>"
						+"</tr>"
					}
					$('table > tbody').html(htmlText);
				},
				complete : function(data){
					
				},
				error : function(xhr, status, errror){
					console.log("에러!:" + error);
				},
			});
		}, function(){
			$(this).find("span:last").remove();
		});
	});
</script>
</head>
<body>

</body>
</html>