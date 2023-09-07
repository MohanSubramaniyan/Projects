import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String a = request.getParameter("mobile");
        String b = request.getParameter("password");

        PrintWriter pw = response.getWriter();
        

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "Mohan@2304");
            Statement ps = con.createStatement();
            ResultSet rs=ps.executeQuery("SELECT * FROM task where mobile='"+a+"' ");
           

            if (rs.next()) {
            	HttpSession session = request.getSession();
            	session.setAttribute("ex", a);
            		response.sendRedirect("Welcome.jsp");
            } else {
                pw.println("<html><body><h1>No data found for the given mobile and date of birth.</h1></body></html>");
            }

            // Close the ResultSet, PreparedStatement, and Connection
            rs.close();
            ps.close();
            con.close();
        } catch (Exception z) {
            // Properly handle the exception by printing the stack trace and/or logging it
            z.printStackTrace();
            pw.println("<html><body><h2>An error occurred: " + z.getMessage() + "</h2></body></html>");
        }
    }
}
