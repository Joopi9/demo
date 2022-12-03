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
	$(document).ready(function(){
		$.ajax({
			type: 'GET'
			,url: '/userInfoList'
			,contentType: 'application/json; charset=UTF-8'
			,success: function(data){
				var html = "";
				$.each(data, function(idx, item){
					html += '<tr>';
					html += '<td border=1px solid>' + item.uiId + '</td>'
					html += '<td border=1px solid>' + item.uiPassword + '</td>'
					html += '<td border=1px solid>' + item.uiName + '</td>'
					html += '<td border=1px solid>' + item.uiProfile + '</td>'
					html += '</tr>'
					$('#table').append(html);
				})
			}
		})
	});
</script>
<table border= 2px solid; width= 100px; height=100px >
	<tbody id="table">
		<tr>
			<th>Id</th>
			<th>Password</th>
			<th>Name</th>
			<th>Profile</th>
		</tr>
	</tbody>
</table>
</body>
</html>