<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Refresh" content="2;url=home.jsp">
<title>ORDER CONFIRMATION</title>
</head>
<body>

	<%     if(request.getSession().getAttribute("start")==null||request.getSession().getAttribute("pid")==null)
	{

		response.sendRedirect("sorry.jsp");
	}	
	%>



<%
System.out.println(session.getAttribute("start")+"','"+session.getAttribute("pid")+"')");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root","password");
Statement st = con.createStatement();
st.executeUpdate("insert into orders (uname,itemid) values ('"+session.getAttribute("start")+"','"+session.getAttribute("pid")+"')");

%>

<span>
CONGRATULATIONS !!!!!! ORDER SUCCESSFULLY PLACED  (Itme ID :<%=session.getAttribute("pid") %>)
<br>
<br><br>
<br><br>
<br><br>
<br>
<p>

<I>You will be redirected to homepage.....</I></p>
</span>
	


<style>
span
{
  margin-left: 300px;
  color: green ;
  font-size: 25px;
}

span p

{
  float: center ;
  margin-left: 350px;
}
</style>
</html>