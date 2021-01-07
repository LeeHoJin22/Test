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
		/* hover����� ó���ϴ� �Լ�
		1. ����Ʈ�� ���콺�� ���� �� �μ���ȣ�� val()�Լ��� ���� �ҷ��´�.
		2. ajax�� ���� �����͸� ��û�Ѵ�. �����͸� ��û�� �ÿ�
			deptNo�� �����־� �� �μ���ȣ�� ���� ������ json�������� �޶�� ��û
			��û url�� Testcont�� Servlet���� ��û url�� �޴´�.
		3. ������ ��û�� ������ �� ���̺� �ѷ��ֵ��� ���� */ 
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
					console.log("����!:" + error);
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