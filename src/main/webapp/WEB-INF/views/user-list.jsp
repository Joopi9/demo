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
	
	// 리스트 조회
	$.ajax({
		type: 'GET'
		,url: '/userInfoList'
		,contentType: 'application/json; charset=UTF-8'
		,success: function(data){
			var html = "";
			$.each(data, function(idx, item){
				html += '<tr id="userTr'+idx+'">';
				html += '<td hidden=true class="uiNum" id="uiNum'+idx+'">' + item.uiNum + '</td>'
				html += '<td border=1px solid class="userTd">'+ item.uiId + '</td>'
				html += '<td border=1px solid class="userTd">'+ item.uiPassword + '</td>'
				html += '<td border=1px solid class="userTd">'+ item.uiName + '</td>'
				html += '<td border=1px solid class="userTd">'+ item.uiProfile + '</td>'
				html += '</tr>'
			})
				$('#table').append(html);
		}
	})
	
	// 페이지 이동
	$(document).on('click', 'table>tbody>tr>td', function(){
		var uiNum = $(this).parent().find("td:eq(0)").text();
		console.log(uiNum)
			 location.href = '/views/user-detail?uiNum='+uiNum;
	})
	
</script>
<table border= 2px solid; width= 500px; height=100px >
	<tbody id="table">
		<tr>
			<th hidden=true>uiNum</th>
			<th>Id</th>
			<th>Password</th>
			<th>Name</th>
			<th>Profile</th>
		</tr>
	</tbody>
</table>
</body>
</html>