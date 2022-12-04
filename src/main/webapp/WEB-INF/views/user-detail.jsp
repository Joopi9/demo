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
	
	// 상세조회
	var urlParams = new URL(location.href).searchParams;
	var uiNum = urlParams.get('uiNum');
	console.log(uiNum)
	var param = {"uiNum": uiNum}
	$.ajax({
		type: 'GET'
		,url: '/userInfo'
		,data: param
		,contentType: 'application/json; charset=UTF-8'
		,success: function(data){
			var html ="";
			html += 'Id: <input type="text" id="uiId" value="'+data.uiId+'"><br>' 
			html += 'Password: <input type="text" id="uiPassword" value="'+data.uiPassword+'"><br>' 
			html += 'Name<input type="text" id="uiName" value="'+data.uiName+'"><br>' 
			html += 'Profile<input type="text" id="uiProfile" value="'+data.uiProfile+'"><br>' 
			$('#data').append(html);	
		}
	})
	
	// 수정
	$(document).on('click', '#mod', function(){
		var modParam = {
				"uiNum": uiNum
				,"uiId": $('#uiId').val()
				,"uiPassword": $('#uiPassword').val()
				,"uiName": $('#uiName').val()
				,"uiProfile": $('#uiProfile').val()
		}
		$.ajax({
			type: 'PATCH'
			,url: '/userInfo'
			,data: JSON.stringify(modParam)
			,contentType: 'application/json; charset=UTF-8'
			,success: function(){
				alert("수정 성공")
			}
		})
	})
	
	// 삭제
	$(document).on('click', '#del', function(){
		$.ajax({
			type: 'DELETE'
			,url: '/userInfo'
			,data: uiNum
			,contentType: 'application/json; charset=UTF-8'
			,success: function(){
				alert("삭제 성공")
			}
		})
	})
</script>

<span id="data"></span>
<button id="mod">수정</button><button id="del">삭제</button>
</body>
</html>