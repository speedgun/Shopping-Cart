

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/reg")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().println("Succesful Sign Up");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String email=request.getParameter("email");;
		String mob = request.getParameter("mob");;
		String add = request.getParameter("add");;


		PrintWriter writer = response.getWriter();
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");		
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root","password");
			
			Statement st = con.createStatement();
			
			 st.executeUpdate("insert into customer (uname,pass,address,mob,email)   values ('"+uname+"','"+pass+"','"+add+"','"+mob+"','"+email+"')");
			/* 
			 * while(rs.next())
			{
				writer.println(rs.getString(1)+rs.getString(2));
			}
			 * */
			 
			
			
		}
		catch(Exception e)
		{
			writer.println(e.toString());
		}
	
		request.getSession().setAttribute("start", uname);
		response.sendRedirect("home.jsp");
	
	}

}
