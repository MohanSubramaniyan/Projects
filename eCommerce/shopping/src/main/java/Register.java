import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

public class Register extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String a = request.getParameter("username");
        String b = request.getParameter("email");
        String c = request.getParameter("mobile");
        String d = request.getParameter("password");
        PrintWriter pw = response.getWriter();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "Mohan@2304");
            
            // Corrected SQL query: Specify the columns and use the VALUES keyword
            String query = "INSERT INTO users (username, email, mobile, password) VALUES (?, ?, ?, ?)";
            
            PreparedStatement ps = con.prepareStatement(query);
            
            ps.setString(1, a);
            ps.setString(2, b);
            ps.setString(3, c);
            ps.setString(4, d);
            
            // Execute the SQL query using executeUpdate, not just preparedStatement
            int rowsInserted = ps.executeUpdate();
            
            if (rowsInserted > 0) {
                // Data inserted successfully
                pw.println("<html><body><h2>Registration Successful</h2></body></html>");
            } else {
                // Handle the case where no rows were inserted
                pw.println("<html><body><h2>Registration Failed</h2></body></html>");
            }
            
            con.close();
        } catch (Exception e) {
            pw.println(e);
        }
    }
}
