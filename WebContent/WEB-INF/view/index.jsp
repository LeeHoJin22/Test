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
	
	<!-- ajax�� ����� -->
	<div id ="result"></div>
	
	<!-- xml�� ����� -->
	<div id ="result1"></div>
	
	<!-- ajax�� ����� �� �ְ� jquery�� ��ũ�Ѵ�. -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>	
	<script>
	$(function(){
		//json ��û�� ajax
		$.ajax({ // HTTP ��û�� ����� �������� ��� ����
			url: "./test.json", //Ŭ���̾�Ʈ�� ��û�� ���� ������ URL �ּ�
			type: "GET", // HTTP ��û ��� (GET, POST ��)
			contentType: "apllication/JSON",
			dataType: "json", // �������� ������ �������� Ÿ��
			success: function(ret){ // ��� ���� �ݹ� �Լ�
				console.log(ret); // �ֿܼ� �α� ���
				$("#result").html(ret.data); //����� result�� ���۹��� ������ ���
			}
		});
		
		// xml��û�� ajax
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