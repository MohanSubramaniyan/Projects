import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminEntry extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminID = request.getParameter("adminID");
        String password = request.getParameter("password");

        PrintWriter pw = response.getWriter();
        Connection con = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "Mohan@2304");

            String query = "SELECT * FROM admin WHERE AdminID = ? AND password = ?";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, adminID);
            preparedStatement.setString(2, password);
            
            rs = preparedStatement.executeQuery();
            
            if (rs.next()) {
                response.sendRedirect("EditProduct.jsp");
            } else {
                pw.println("<html><body><h2>Invalid login credentials</h2></body></html>");
            }
        } catch (Exception e) {
            e.printStackTrace(); // Log the exception for debugging purposes.
            pw.println("<html><body><h2>An error occurred. Please try again later.</h2></body></html>");
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
