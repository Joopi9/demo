<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
</head>
<body>
<script>
	function regUser(){
		var params = {
				  uiId:		 $('#uiId').val()
				, uiPassword:$('#uiPassword').val()
				, uiName:	 $('#uiName').val()
		};
		$.ajax({
				type:		'POST'
			  , url:		'/userInfo'
			  , data:		JSON.stringify(params)
			  , contentType:'application/json;charset=UTF-8' 
			  , success: function(){
				  location.href = '/views/user-list';
			  }
		})
	}
</script>
Id: <input type="text" id="uiId"><br>
Password: <input type="password" id="uiPassword"><br>
Name: <input type="text" id="uiName"><br>
<button onclick="regUser()">등록</button>
</body>
</html>