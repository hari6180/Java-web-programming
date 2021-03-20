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
		<form name="student" method="post" action="stud_addok.jsp" role="form">
			<fieldset>
				<legend>학생추가</legend>


				<div class="form-name">
					<label for="name">학생이름</label> <input type="text" name="name"
						id="name" class="form-name" />
				</div>

				<div class="form-userid">
					<label for="userid">userid</label> <input type="text" name="userid"
						id="userid" class="form-userid" />
				</div>

				<div class="form-grade">
					<label for="grade">학년</label> <input type="text" name="grade"
						id="grade" class="form-grade" />
				</div>

				<div class="form-idnum">
					<label for="idnum">주민번호</label> <input type="text" name="idnum"
						id="idnum" class="form-idnum" />
				</div>

				<div class="form-birthdate">
					<label for="birthdate">생년월일</label> <input type="text"
						name="birthdate" id="birthdate" class="form-birthdate" />
				</div>

				<div class="form-tel">
					<label for="tel">전화번호</label> <input type="text" name="tel"
						id="tel" class="form-tel" />
				</div>

				<div class="form-height">
					<label for="height">키</label> <input type="text" name="height"
						id="height" class="form-height" />
				</div>

				<div class="form-weight">
					<label for="weight">몸무게</label> <input type="text" name="weight"
						id="weight" class="form-weight" />
				</div>

				<div class="form-deptno">
					<label for="deptno">학과번호</label> <input type="text" name="deptno"
						id="deptno" class="form-deptno" />
				</div>

				<div class="form-profno">
					<label for="profno">교수번호</label> <input type="text" name="profno"
						id="profno" class="form-profno" />
				</div>



				<button type="submit" class="btn btn-primary">Submit</button>
			</fieldset>


		</form>

	</div>

</body>

</html>