<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign In</title>
</head>
<body>

	<%@include file="/home.jsp" %>
	
	<form action="check" method="post">
	
	
	<table width="40%" " align="center"  style="background: green ; margin-top: 10% ;" border="1">
		<tr height="50px">
			<td> Username  :  </td>
			<td width="60%"> <input type="text" name="uname"><br> </td>
		</tr>
	
		<tr height="50px">
			<td> Password  : </tc>
			<td> <input type="password" name="pass"><br></td>
		</tr>
		
		<tr height="50px">
			<td>  </td>
			<td> <button type="submit">Log In</button></td>
		</tr>
	</table>
	
	</form>
	
	<form action="signup.jsp">
	
	<div id="up">
		Not Registered ?  <button type="submit">Sign Up</button>
	</div>
	
	</form>
	

</body>
</html>