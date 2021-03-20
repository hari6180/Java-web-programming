<%@page import="study.java.mvmanagement.model.Department"%>
<%@page import="study.java.mvmanagement.service.DepartmentService"%>
<%@page import="study.java.mvmanagement.service.impl.DepartmentServiceImpl"%>
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
	String dname = request.getParameter("dname");
	String loc = request.getParameter("loc");
	
	
	Department model = new Department();
	model.setDname(dname);
	model.setLoc(loc);
	
	
	
	
	// 해당 파라미터가 존재하지 않는 경우
	if (dname == null) {
		dname = "학과이름이 없습니다.";
	}
	
	// 앞,뒤 공백제거
	dname = dname.trim();
	
	// 아무런 내용도 입력하지 않았을 경우
	if (dname.equals("")) {
		dname = "학과 이름을 입력하세요.";
	}
	
	
	
	// 해당 파라미터가 존재하지 않는 경우
	if (loc == null) {
		loc = "학과 위치가 없습니다.";
	}
	
	// 앞,뒤 공백제거
	loc = loc.trim();
	
	// 아무런 내용도 입력하지 않았을 경우
	if (loc.equals("")) {
		loc = "위치를 입력하세요.";
	}
	
	// DB 접속
	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.apache.logging.log4j.LogManager;
	// --> import org.apache.logging.log4j.Logger;
	Logger logger = LogManager.getFormatterLogger("dept_addok.jsp");
	
	/** 데이터베이스 접속 */
	SqlSession sqlSession = MyBatisConnectionFactory.getSqlSession();
	
	/** 데이터 처리 수행 */
	// 비지니스 로직을 위한 Service 객체 생성
	DepartmentService departmentService = new DepartmentServiceImpl(sqlSession);
	// 조회 결과가 저장될 객체 선언 --> import java.util.List;
	Department dept = null;
	
	try {
		// 학과 조회하기
		dept = departmentService.addDepartment(model);
		sqlSession.commit();
	} catch (NullPointerException e) {
		logger.error("조회된 데이터가 없습니다.");
	} catch (Exception e) {
		logger.error("데이터 조회에 실패했습니다." + e.getMessage());
	} 
	
	response.sendRedirect("dept_view.jsp?deptno="+dept.getDeptno());
	
%>
