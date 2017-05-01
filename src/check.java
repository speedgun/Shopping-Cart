

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

/**
 * Servlet implementation class check
 */
@WebServlet("/check")
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter writer = response.getWriter();
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");

		
		
try{
			
			Class.forName("com.mysql.jdbc.Driver");		
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root","password");
			
			Statement st = con.createStatement();
			
			ResultSet rs = st.executeQuery("select pass from customer where uname ='"+uname+"'");
	
			System.out.println("1");
			rs.next();
			String password = rs.getString(1);
			System.out.println("2");
			System.out.println(password);
			if(pass.equals(password))
			{
				request.getSession().setAttribute("start", uname);
				System.out.println("3");
				response.sendRedirect("home.jsp");
			}
			else
			{
				writer.println("kkkkkkk");
			}
			
		}
		catch(Exception e)
		{
			writer.println(e.toString());
			System.out.println("wrong");
			
		}
			
		
		
		
		
		
		if(uname.equals("123")&& pass.equals("123"))
		{
			request.getSession().setAttribute("start", "no");
			response.sendRedirect("home.jsp");
		}
		else
		{
			
		}
	}

}
