<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Hello JSP</title>
</head>

<body>
	<div class='container'>
		<form name="myform" method="post" action="02-action.jsp" role="form">
			<fieldset>
				<legend>Post Data 전송예제</legend>
				
				<div class="form-qroup">
					<label for="user_name">이름</label>
					<input type="text" name="user_name" id="user_name"
					class="form-control" />
				</div>
				
				<button type="submit" class="btn btn-primary">Submit</button>
			</fieldset>
		
		
		</form>
	
	</div>
    
</body>

</html>
