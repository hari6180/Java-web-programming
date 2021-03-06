<%@page import="study.java.myschool.service.impl.ProfessorServiceImpl"%>
<%@page import="study.java.myschool.service.ProfessorService"%>
<%@page import="study.java.myschool.model.Professor"%>
<%@page import="study.java.myschool.MyBatisConnectionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.logging.log4j.LogManager"%>
<%@page import="org.apache.logging.log4j.Logger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	// 파라미터의 문제열 셋을 설정한다. (페이지 상단에서 최초 1회)
	request.setCharacterEncoding("UTF-8");
	// <input>태그의 name속성값을 사용하여 사용자의 입력값을 받는다.
	String name = request.getParameter("name");
	String userid = request.getParameter("userid");
	String position = request.getParameter("position");
	int sal = Integer.parseInt(request.getParameter("sal"));
	String hiredate = request.getParameter("hiredate");
	int comm = Integer.parseInt(request.getParameter("comm"));
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	
	
	
	Professor model = new Professor();
	model.setName(name);
	model.setUserid(userid);
	model.setPosition(position);
	model.setSal(sal);
	model.setHiredate(hiredate);
	model.setComm(comm);
	model.setDeptno(deptno);
	

	// 해당 파라미터가 존재하지 않는 경우
	if (name == null) {
		name = "이름이 없습니다.";
	}
	
	// 앞,뒤 공백제거
	name = name.trim();
	
	// 아무런 내용도 입력하지 않았을 경우
	if (name.equals("")) {
		name = "이름을 입력하세요.";
	}

	
	// 해당 파라미터가 존재하지 않는 경우
	if (userid == null) {
		userid = "userid가 없습니다.";
	}
	
	// 앞,뒤 공백제거
	userid = userid.trim();
	
	// 아무런 내용도 입력하지 않았을 경우
	if (userid.equals("")) {
		userid = "userid를 입력하세요.";
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (position == null) {
		position = "직급이 없습니다.";
	}
	
	// 앞,뒤 공백제거
	position = position.trim();
	
	// 아무런 내용도 입력하지 않았을 경우
	if (position.equals("")) {
		position = "이름을 입력하세요.";
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (sal == 0) {
		System.out.println("급여가 없습니다.");
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (hiredate == null) {
		hiredate = "입사일이 없습니다.";
	}
	
	// 앞,뒤 공백제거
	hiredate = hiredate.trim();
	
	// 아무런 내용도 입력하지 않았을 경우
	if (hiredate.equals("")) {
		hiredate = "입사일을 입력하세요.";
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (comm == 0) {
		System.out.println("성과급이 없습니다.");
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (deptno == 0) {
		System.out.println("학과번호가 없습니다.");
	}
	
	
	// DB 접속
	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.apache.logging.log4j.LogManager;
	// --> import org.apache.logging.log4j.Logger;
	Logger logger = LogManager.getFormatterLogger("prof_addok.jsp");
	
	/** 데이터베이스 접속 */
	SqlSession sqlSession = MyBatisConnectionFactory.getSqlSession();
	
	/** 데이터 처리 수행 */
	// 비지니스 로직을 위한 Service 객체 생성
	ProfessorService professorService = new ProfessorServiceImpl(sqlSession);
	// 조회 결과가 저장될 객체 선언 --> import java.util.List;
	Professor prof = null;
	
	try {
		// 학과 조회하기
		prof = professorService.addProfessor(model);
		sqlSession.commit();
	} catch (NullPointerException e) {
		logger.error("조회된 데이터가 없습니다.");
	} catch (Exception e) {
		logger.error("데이터 조회에 실패했습니다." + e.getMessage());
	} 
	
	response.sendRedirect("prof_view.jsp?profno="+prof.getProfno());
	
%>
