<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>

<%@include file="/home.jsp" %>

	<h1 align="center"> Sign Up</h1>
	
	
	<form action="reg" method="post">
	
	<table width="40%" " align="center"  style="background: green ; margin-top: 10% ;" border="1">
		<tr height="50px">
			<td> Username  :  </td>
			<td > <input type="text" name="uname"><br> </td>
		</tr>
	
		<tr height="50px">
			<td> Password  : </tc>
			<td> <input type="password" name="pass"><br></td>
		</tr>
		
		<tr height="50px">
			<td> Email : </tc>
			<td> <input type="text" name="email"><br></td>
		</tr>
		
		<tr height="50px">
			<td> Mobile No. : </tc>
			<td> <input type="text" name="mob"><br></td>
		</tr>
		
		<tr height="50px">
			<td> Address  : </tc>
			<td> <input type="text" name="add"><br></td>
		</tr>
		
		<tr height="50px">
			<td>  </td>
			<td> <button type="submit">Sign Up</button></td>
		</tr>
	</table>
	
	
	</form>

	
</body>
</html>