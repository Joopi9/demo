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
	location.href= '/user1?uiNum=' +$('#uiNum').val() + '&uiName=' + $('#uiName').val();
// 	$.ajax({
// 		  type: 'GET'
// 		, url: '/user?uiNum=' +$('#uiNum').val() + '&uiName=' + $('#uiName').val()
// 		, success: function(){ 
// 		}
// 	})
}

</script>
<div id='num'></div>
<span id='name'></span>
<input id='uiNum' type='text'><br>
<input id='uiName' type='text'><br>
<button onclick='login()'>login</button>
</body>
</html>