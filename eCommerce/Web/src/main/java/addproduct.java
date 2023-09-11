import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

//Import statements...

public class addproduct extends HttpServlet {
 private static final long serialVersionUID = 1L;

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String a = request.getParameter("name");
     String b = request.getParameter("desc");
     String c = request.getParameter("quantity");
     String d = request.getParameter("price");
     String e = request.getParameter("image");
     String f = request.getParameter("category");
     PrintWriter pw = response.getWriter();

     try {
         Class.forName("com.mysql.jdbc.Driver");
         String dbUrl = "jdbc:mysql://localhost:3306/ecommerce";
         String dbUser = "root";
         String dbPassword = "Mohan@2304";

         // Use try-with-resources to automatically close resources
         try (Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
              PreparedStatement ps = con.prepareStatement("INSERT INTO products(pname, pdesc, quant, price, image_id, category) VALUES(?,?,?,?,?,?)")) {

             ps.setString(1, a);
             ps.setString(2, b);
             ps.setString(3, c);
             ps.setString(4, d);
             ps.setString(5, e);
             ps.setString(6, f);

             int action = ps.executeUpdate();

             if (action > 0) {
                 // Redirect to a success page
                 response.sendRedirect("show.jsp");
             } else {
                 // Provide an error message if the insertion fails
                 pw.println("<html><body><h2>Registration Failed</h2></body></html>");
             }
         }
     } catch (Exception ex) {
         ex.printStackTrace(); // Log the exception for debugging
         pw.println("<html><body><h2>An error occurred. Please try again later.</h2></body></html>");
     }
 }


}
