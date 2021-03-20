<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>

<head>
<meta charset="UTF-8" />
<title>Hello JSP</title>
</head>

<body>
	<div class='container'>
		<form name="professor" method="post" action="prof_addok.jsp"
			role="form">
			<fieldset>
				<legend>교수추가</legend>


				<div class="form-name">
					<label for="name">교수이름</label> 
					<input type="text" name="name"
						id="name" class="form-name" />
				</div>

				<div class="form-userid">
					<label for="userid">userid</label> 
					<input type="text" name="userid"
						id="userid" class="form-userid" />
				</div>

				<div class="form-position">
					<label for="position">교수직급</label> 
					<input type="text" name="position"
						id="position" class="form-position" />
				</div>

				<div class="form-sal">
					<label for="sal">급여</label> 
					<input type="text" name="sal"
						id="sal" class="form-sal" />
				</div>

				<div class="form-hiredate">
					<label for="hiredate">입사일자</label> 
					<input type="text" name="hiredate"
						id="hiredate" class="form-hiredate" />
				</div>

				<div class="form-comm">
					<label for="comm">성과급</label> 
					<input type="text" name="comm"
						id="comm" class="form-comm" />
				</div>

				<div class="form-deptno">
					<label for="deptno">학과번호</label> 
					<input type="text" name="deptno"
						id="deptno" class="form-deptno" />
				</div>



				<button type="submit" class="btn btn-primary">Submit</button>
			</fieldset>


		</form>

	</div>

</body>

</html>