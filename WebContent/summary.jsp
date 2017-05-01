<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT DESCRIPTION</title>
</head>
<body>
		<br>
		<h1 align="center">PRODUCT DESCRIPTION</h1>
		
		
		<form action="success.jsp" method="post">
		
		<%
		session.setAttribute("pid",request.getParameter("pid") );
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root","password");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select name,price from items where itemid='"+request.getParameter("pid")+"'");
		while(rs.next())
		{
			%> 
			<img  src="img/<%=request.getParameter("pid")%>.jpg"  style="margin-left:500px">
			
			<div id="des"><br>
			<%= rs.getString(1)%><br><br>	
			<b><span >Price : Rs <%= rs.getString(2)%></span></b>	<br>
			
			<button type="submit" >Proceed To Checkout</button>
			</div>
			
			<style>
	
			#des
			{
				background-color: grey ;	
				margin-left: 450px;
				margin-top: 30px;
				width:400px ;
				align-content: center;
				height: 190px ;
	
			}
			
			#des button
			{
				margin-left: 120px;
				margin-top: 30px;
				height: 35px;
				color: orange;
				background-color: blue ;
			}
			span
			{align-content: center;
				align-items: center;
				margin-left: 120px;
				color: red;
				font-style: oblique;
				font-size: 25px;
			}
				
			</style>

			<%						
		}
		
		%>
		
		</form>
	
</body>
</html>