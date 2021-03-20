<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>

<head>
<meta charset="UTF-8" />
<title>Hello JSP</title>
 <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
  <style>
    .btn{
      text-decoration: none;
      font-size:2rem;
      color:white;
      padding:10px 20px 10px 20px;
      margin:20px;
      display:block;
      border-radius: 10px;
      transition:all 0.1s;
      text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
      font-family: 'Lobster', cursive;
    }
    .btn:active{
      transform: translateY(3px);
    }
    .btn.black{
      background-color: #333333;
      border-bottom:5px solid #6F6C61;
    }
    .btn.black:active{
      border-bottom:2px solid #6F6C61;
    }
    .btn.red{
      background-color: #65C5DB;
      border-bottom:5px solid #5F9186;
    }
    .btn.red:active{
      border-bottom:2px solid #5F9186;
    }
    .btn.mint{
      background-color: #89DAC7;
      border-bottom:5px solid #5F9186;
    }
    .btn.mint:active{
      border-bottom:2px solid #5F9186;
    }
  </style>

</head>

<body>
<center>

<h1> Myschool Management </h1>

	<a class="btn black" href="dept_list.jsp">Department</a>
	<a class="btn red" href="prof_list.jsp">Professor</a>
	<a class="btn mint" href="stud_list.jsp">Student</a>
	
	
</center>
	
</body>

</html>
