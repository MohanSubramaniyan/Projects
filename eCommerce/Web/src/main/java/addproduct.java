import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

public class addproduct extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String a = request.getParameter("name");
        String b = request.getParameter("desc");
        String c = request.getParameter("quantity");
        String d = request.getParameter("price");
        String e = request.getParameter("image");
        PrintWriter pw = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "Mohan@2304");
            String add = "INSERT INTO products(pname, pdesc, quant, price, image_id) VALUES(?,?,?,?,?)";
            
            // Use PreparedStatement for parameterized queries
            PreparedStatement ps = con.prepareStatement(add);
            ps.setString(1, a);
            ps.setString(2, b);
            ps.setString(3, c);
            ps.setString(4, d);
            ps.setString(5, e);

            int action = ps.executeUpdate();
            
            if (action > 0) {
                // Print a success message directly in the response
                pw.println("<html><body><h2>Product added successfully</h2></body></html>");
            } else {
                // Provide an error message if the insertion fails
                pw.println("<html><body><h2>Registration Failed</h2></body></html>");
            }

            // Close resources
            ps.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace(); // Log the exception for debugging purposes
            pw.println("<html><body><h2>An error occurred. Please try again later.</h2></body></html>");
        }
    }
}
