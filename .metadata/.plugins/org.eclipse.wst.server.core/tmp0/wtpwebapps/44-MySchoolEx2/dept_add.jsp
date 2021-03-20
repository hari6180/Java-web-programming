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
		<form name="department" method="post" action="dept_addok.jsp" role="form">
			<fieldset>
				<legend>학과추가</legend>
				
				
				<div class="form-dname">
					<label for="dname">학과이름</label>
					<input type="text" name="dname" id="dname"
					class="form-dname" />
				</div>
				
				<div class="form-loc">
					<label for="loc">학과위치</label>
					<input type="text" name="loc" id="loc"
					class="form-loc" />
				</div>
				

				
				<button type="submit" class="btn btn-primary">Submit</button>
			</fieldset>
		
		
		</form>
	
	</div>
    
</body>

</html>