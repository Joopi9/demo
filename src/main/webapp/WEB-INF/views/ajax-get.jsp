<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>

function login(){
	$.ajax({
		type: 'GET',
		url: '/user2?uiNum=' +$('#uiNum').val() + '&uiName=' + $('#uiName').val(),
		success: function(data){
			console.log(JSON.stringify(data));
			$('#num').text(data.uiNum);
			$('#name').text(data.uiName);
		}
	})
}

</script>
<div id='num'></div>
<span id='name'></span><br><br>
<input id='uiNum' type='text'><br>
<input id='uiName' type='text'><br>
<button onclick='login()'>login</button>
</body>
</html>