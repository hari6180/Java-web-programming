
<%@page import="study.java.mvmanagement.service.impl.StudentServiceImpl"%>
<%@page import="study.java.mvmanagement.service.StudentService"%>
<%@page import="study.java.mvmanagement.model.Student"%>
<%@page import="study.java.mvmanagement.MyBatisConnectionFactory"%>
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
	int grade = Integer.parseInt(request.getParameter("grade"));
	String idnum = request.getParameter("idnum");
	String birthdate = request.getParameter("birthdate");
	String tel = request.getParameter("tel");
	int height = Integer.parseInt(request.getParameter("height"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	int profno = Integer.parseInt(request.getParameter("profno"));

	
	
	Student model = new Student();
	model.setName(name);
	model.setUserid(userid);
	model.setGrade(grade);
	model.setIdnum(idnum);
	model.setBirthdate(birthdate);
	model.setTel(tel);
	model.setHeight(height);
	model.setWeight(weight);
	model.setDeptno(deptno);
	model.setProfno(profno);


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
	if (grade == 0) {
		System.out.println("학년이 없습니다.");
	}
	
	
	// 해당 파라미터가 존재하지 않는 경우
	if (idnum == null) {
		idnum = "주민번호가 없습니다.";
	}
	
	// 앞,뒤 공백제거
	idnum = idnum.trim();
	
	// 아무런 내용도 입력하지 않았을 경우
	if (idnum.equals("")) {
		idnum = "주민번호를 입력하세요.";
	}
	

	
	// 해당 파라미터가 존재하지 않는 경우
	if (birthdate == null) {
		birthdate = "생일이 없습니다.";
	}
	
	// 앞,뒤 공백제거
	birthdate = birthdate.trim();
	
	// 아무런 내용도 입력하지 않았을 경우
	if (birthdate.equals("")) {
		birthdate = "생일을 입력하세요.";
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (tel == null) {
		tel = "전화번호가 없습니다.";
	}
	
	// 앞,뒤 공백제거
	tel = tel.trim();
	
	// 아무런 내용도 입력하지 않았을 경우
	if (tel.equals("")) {
		tel = "전화번호를 입력하세요.";
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (height == 0) {
		System.out.println("키가 없습니다.");
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (weight == 0) {
		System.out.println("몸무게가 없습니다.");
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (deptno == 0) {
		System.out.println("학과번호가 없습니다.");
	}
	
	// 해당 파라미터가 존재하지 않는 경우
	if (profno == 0) {
		System.out.println("교수번호가 없습니다.");
	}
	
	
	// DB 접속
	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.apache.logging.log4j.LogManager;
	// --> import org.apache.logging.log4j.Logger;
	Logger logger = LogManager.getFormatterLogger("stud_addok.jsp");
	
	/** 데이터베이스 접속 */
	SqlSession sqlSession = MyBatisConnectionFactory.getSqlSession();
	
	/** 데이터 처리 수행 */
	// 비지니스 로직을 위한 Service 객체 생성
	StudentService professorService = new StudentServiceImpl(sqlSession);
	// 조회 결과가 저장될 객체 선언 --> import java.util.List;
	Student stud = null;
	
	try {
		// 학과 조회하기
		stud = professorService.addStudent(model);
		sqlSession.commit();
	} catch (NullPointerException e) {
		logger.error("조회된 데이터가 없습니다.");
	} catch (Exception e) {
		logger.error("데이터 조회에 실패했습니다." + e.getMessage());
	} 
	
	response.sendRedirect("stud_view.jsp?studno="+stud.getStudno());
	
%>
