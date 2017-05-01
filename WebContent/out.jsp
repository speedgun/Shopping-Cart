<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Refresh" content="2;url=home.jsp">
<title>Logged Out</title>
</head>
<body>


	<% session.setAttribute("start", null);%>
	<%@include file="/home.jsp" %>
	<br><br><br>
	<h1 align="center">Logged Out</h1>
	
	<br><h2 align="center">Thanks for stopping by!</h2>
  <br>	<h3 align="center">We hope to see you again soon<h3>
</body>
</html>