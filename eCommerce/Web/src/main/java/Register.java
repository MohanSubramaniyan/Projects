

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.io.*;
/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a = request.getParameter("username");
		String b = request.getParameter("mobile");
		String c = request.getParameter("email");
		String d = request.getParameter("password");
		PrintWriter pw = response.getWriter();
		
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","Mohan@2304");
			String add = "INSERT INTO userdata(username, mobile, email, password) VALUES(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(add);
			
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			
			int action = ps.executeUpdate();
			
			if(action > 0) {
				 HttpSession session=request.getSession();
				   session.setAttribute("ex", a);
				   
				   response.sendRedirect("home.jsp");
			} else {
				pw.println("<html><body><h2> Registration Failed</h2></body></html>");
			}
		} catch (Exception ex) {
			pw.println(ex);
		}
	}

}
