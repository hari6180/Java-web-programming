<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
Connection conn=null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:9090:XE";
	
Boolean connect = false;
	
try{
    Class.forName(driver);
    conn=DriverManager.getConnection(url,"hr","hr"); //자신의 아이디와 비밀번호
    connect = true;
    conn.close();
}catch(Exception e){
    connect = false;
    e.printStackTrace();
}
%>
<%
if(connect==true){%>
    연결되었습니다.
<%}else{ %>
    연결에 실패하였습니다.
<%}%> 
<!doctype html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Hello JSP</title>
</head>

<body>
    
</body>

</html>
