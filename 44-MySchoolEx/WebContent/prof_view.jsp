<%@page import="study.java.mvmanagement.service.impl.ProfessorServiceImpl"%>
<%@page import="study.java.mvmanagement.service.ProfessorService"%>
<%@page import="study.java.mvmanagement.model.Professor"%>
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
	String profno_str = request.getParameter("profno");
	int profno = 0;

	Professor prof = new Professor();

	if (profno_str != null) {
		profno = Integer.parseInt(profno_str);
	}
	prof.setProfno(profno);

	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.apache.logging.log4j.LogManager;
	// --> import org.apache.logging.log4j.Logger;
	Logger logger = LogManager.getFormatterLogger("prof_view.jsp");

	/** 데이터베이스 접속 */
	SqlSession sqlSession = MyBatisConnectionFactory.getSqlSession();

	/** 데이터 처리 수행 */
	// 비지니스 로직을 위한 Service 객체 생성
	ProfessorService professorService = new ProfessorServiceImpl(sqlSession);
	// 조회 결과가 저장될 객체 선언 --> import java.util.List;
	Professor item = null;

	try {
		// 교수 조회하기
		item = professorService.getProfessorItem(prof);
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
		<h1 class="page-header">교수정보</h1>
		<ul class="list-group">
			<%
				if (item != null) {
			%>
			<li class="list-group-item">교수번호: <%=item.getProfno()%></li>
			<li class="list-group-item">교수이름: <%=item.getName()%></li>
			<li class="list-group-item">ID: <%=item.getUserid()%></li>
			<li class="list-group-item">직급: <%=item.getPosition()%></li>
			<li class="list-group-item">급여: <%=item.getSal()%></li>
			<li class="list-group-item">입사일자: <%=item.getHiredate()%></li>
			<li class="list-group-item">성과급: <%=item.getComm()%></li>
			<li class="list-group-item">학과번호: <%=item.getDeptno()%></li>

			<%
				}
			%>
		</ul>

		<!-- 버튼들 -->
		<p class="text-center">
			<a href="prof_list.jsp" class="btn btn-success">목록</a> <a
				href="prof_add.jsp" class="btn btn-primary">추가</a> <a
				href="prof_delete.jsp?profno=<%=profno%>" class="btn btn-danger">삭제</a>
		</p>

	</div>
</body>
<%
	/** 데이터베이스 접속 해제 */
	sqlSession.close();
%>

</html>
