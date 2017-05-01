<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ORDERS</title>
</head>
<body>
	<%@include file="/home.jsp" %>
	
	<h1 align="center">Hello <%=session.getAttribute("start") %></h1>
	
	<table width="60%" align="center" border="4" style="background: green ;"  ;>
	
	<tr style="font-size:55">
			<th colspan="3" align="center"  >Your Orders</th>
	</tr >
	
		
	<tr>
		<th width="30%" align="center">Item No.</th>
		<th width="30%" align="center">Item Name</th>	
		<th width="30%" align="center">Price</th>	
	</tr>
	
	
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root","password");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select itemid from orders where uname='"+session.getAttribute("start")+"'");
		
		while(rs.next())
		{
			String itemid =rs.getString("itemid");
		%>
			
			<tr>
				<td width="30%" align="center"><%=itemid%></td>
				
				<% ResultSet r2 = con.createStatement().executeQuery("select name,price from items where itemid ='"+itemid+"'"); 
					
					while(r2.next())
					{%>
						<td width="30%" align="center"><%=r2.getString("name") %></td>
						<td width="30%" align="center"><%=r2.getString("price") %></td>
					<%}
				
				%>
				
					
			</tr>
			
			
		<%}
		
	
	%>
	
	
	
	
	
	
	
	
	
		
	</table>
	
</body>
</html>