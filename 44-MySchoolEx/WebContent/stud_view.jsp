
<%@page import="study.java.mvmanagement.service.impl.StudentServiceImpl"%>
<%@page import="study.java.mvmanagement.service.StudentService"%>
<%@page import="study.java.mvmanagement.model.Student"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="study.java.mvmanagement.MyBatisConnectionFactory"%>
<%@page import="org.apache.logging.log4j.LogManager"%>
<%@page import="org.apache.logging.log4j.Logger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	// 파라미터의 문제열 셋을 설정한다. (페이지 상단에서 최초 1회)
	request.setCharacterEncoding("UTF-8");
	// <input>태그의 name속성값을 사용하여 사용자의 입력값을 받는다.
	String studno_str = request.getParameter("studno");
	int studno = 0;

	Student stud = new Student();

	if (studno_str != null) {
		studno = Integer.parseInt(studno_str);
	}
	stud.setStudno(studno);

	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.apache.logging.log4j.LogManager;
	// --> import org.apache.logging.log4j.Logger;
	Logger logger = LogManager.getFormatterLogger("stud_view.jsp");

	/** 데이터베이스 접속 */
	SqlSession sqlSession = MyBatisConnectionFactory.getSqlSession();

	/** 데이터 처리 수행 */
	// 비지니스 로직을 위한 Service 객체 생성
	StudentService studentService = new StudentServiceImpl(sqlSession);
	// 조회 결과가 저장될 객체 선언 --> import java.util.List;
	Student item = null;

	try {
		// 학생 조회하기
		item = studentService.getStudentItem(stud);
		// 처리 결과를 로그에 기록하기
		logger.debug("조회된 데이터 >> " + item.toString());
	} catch (NullPointerException e) {
		logger.error("조회된 데이터가 없습니다.");
	} catch (Exception e) {
		logger.error("데이터 조회에 실패했습니다." + e.getMessage());
	}
%>

<!doctype html>
<html>

<head>
<meta charset="UTF-8" />
<title>My JSP Page</title>
<!-- Twitter Bootstrap3 & jQuery -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
		<h1 class="page-header">학생정보</h1>
		<ul class="list-group">
			<%
				if (item != null) {
			%>
			<li class="list-group-item">학생번호: <%=item.getStudno()%></li>
			<li class="list-group-item">학생이름: <%=item.getName()%></li>
			<li class="list-group-item">학생ID: <%=item.getUserid()%></li>
			<li class="list-group-item">학년: <%=item.getGrade()%></li>
			<li class="list-group-item">주민번호: <%=item.getIdnum()%></li>
			<li class="list-group-item">생년월일: <%=item.getBirthdate()%></li>
			<li class="list-group-item">전화번호: <%=item.getTel()%></li>
			<li class="list-group-item">키: <%=item.getHeight()%></li>
			<li class="list-group-item">몸무게: <%=item.getWeight()%></li>
			<li class="list-group-item">학과번호: <%=item.getDeptno()%></li>
			<li class="list-group-item">교수번호: <%=item.getProfno()%></li>

			<%
				}
			%>
		</ul>

		<!-- 버튼들 -->
		<p class="text-center">
			<a href="stud_list.jsp" class="btn btn-success">목록</a> <a
				href="stud_add.jsp" class="btn btn-primary">추가</a> <a
				href="stud_delete.jsp?studno=<%=studno%>" class="btn btn-danger">삭제</a>
		</p>

	</div>
</body>
<%
	/** 데이터베이스 접속 해제 */
	sqlSession.close();
%>

</html>
