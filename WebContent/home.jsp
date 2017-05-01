<%@page import="com.mysql.fabric.Response"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>HOME</title>
	<link rel="stylesheet" href="style.css" type="text/css" />
	<script type="text/javascript" src="myjs.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body class="body" >
	
	<header class="mainheader">
	<img  id="img" src="s.png" style="margin-left: 40px;margin-top: 2px ;height: 80px;width: 100px;" >	
	
		
		<span  id="top" >SHOPPING CART</span>
	
	
		
		<div id="sign">
		<b>Hello </b>
			<%
		if(session.getAttribute("start")==null)
		{%>
			<br><b>Sign In </b>
		<ul>
			<li><a href="signin.jsp"><button>SignIn</button></a></li>
			<li>New Customer ? <a href="signup.jsp">Sign Up</a></li>			
		</ul>
	    </div>
		<%	
		}
			
		else
		{%>
		<br><b> <%= session.getAttribute("start") %></b>  
		<ul>
			<li><a href="orders.jsp">Your Orders</a></li>
			<li><a href="out.jsp">   Sign Out </a></li>			
		</ul>
	    </div>			
				
		<%	
		}
	%>	
	
		
	<nav>
		<ul>
			<li><a href="./home.jsp">HOME</a></li>
			<li><a href="./men.jsp"> MEN</a></li>
			<li><a href="./women.jsp">WOMEN</a></li>
			<li><a href="./kids.jsp">KIDS</a></li>
			<li><a href="./sports.jsp">SPORTS</a></li>
		</ul>
	</nav>
	
	

</body>
</html>