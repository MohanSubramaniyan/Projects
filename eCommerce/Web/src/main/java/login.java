import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.io.*;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		String a=request.getParameter("username");
		String b=request.getParameter("password");
		
		PrintWriter pw=response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","Mohan@2304");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from userdata where username ='"+a+"' and password='"+b+"' ");
			if(rs.next()) {
				   HttpSession session=request.getSession();
				   session.setAttribute("ex", a);
				   
				   response.sendRedirect("index.html");
//				pw.println("hello-------");
				
			}
			else {
				pw.println("<html><body><h2>word</h2></body></html>");
			}
		}
		catch(Exception ei) {
			pw.println(ei);
			
		}
	}

}