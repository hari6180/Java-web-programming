<%@page import="study.java.mvmanagement.model.Department"%>
<%@page import="study.java.mvmanagement.service.impl.DepartmentServiceImpl"%>
<%@page import="study.java.mvmanagement.service.DepartmentService"%>
<%@page import="study.java.mvmanagement.MyBatisConnectionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.logging.log4j.LogManager"%>
<%@page import="org.apache.logging.log4j.Logger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	// 파라미터의 문자열 셋을 설정한다. (페이지 상단에서 최초 1회)
	request.setCharacterEncoding("UTF-8");
	// <input>태그의 name속성값을 사용하여 사용자의 입력값을 받는다.
	String deptno_str = request.getParameter("deptno");
	int deptno = 0;

	

	if (deptno_str != null) {
		deptno = Integer.parseInt(deptno_str);
	}
	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.apache.logging.log4j.LogManager;
	// --> import org.apache.logging.log4j.Logger;
	Logger logger = LogManager.getFormatterLogger("dept_delete.jsp");

	Department dept = new Department();
	dept.setDeptno(deptno);

	/** 데이터베이스 접속 */
	SqlSession sqlSession = MyBatisConnectionFactory.getSqlSession();

	/** 데이터 처리 수행 */
	// 비지니스 로직을 위한 Service 객체 생성
	DepartmentService departmentService = new DepartmentServiceImpl(sqlSession);
	// 조회 결과가 저장될 객체 선언

	try {
		// 학과 삭제하기
		departmentService.deleteDepartment(dept);
		// 삭제결과를 데이터 베이스에 반영하기
		sqlSession.commit();
		// 처리 결과를 로그에 기록하기
		logger.debug("데이터 삭제 완료");
	} catch (NullPointerException e) {
		logger.error("삭제된 데이터가 없습니다.");
	} catch (Exception e) {
		logger.error("데이터 삭제에 실패했습니다." + e.getMessage());
	}
	sqlSession.close();
	response.sendRedirect("dept_list.jsp");
%>



<!doctype html>
<html>

<head>
<meta charset="UTF-8" />
<title>Hello JSP</title>
</head>

<body>

</body>


</html>
