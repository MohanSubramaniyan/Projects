<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            text-align: center;
            background-color: #007bff;
            color: #fff;
            padding: 20px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 20px;
        }

        .product {
            border: 1px solid #ddd;
            padding: 10px;
            margin: 10px;
            background-color: #fff;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .product img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
<header>
    <h2>Product List</h2>
</header>
<div class="container">
    <%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Updated driver class
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "Mohan@2304");
        st = con.createStatement();
        String query = "SELECT * FROM products";
        rs = st.executeQuery(query);

        while (rs.next()) {
            String name = rs.getString("pname");
            double price = rs.getDouble("price");
            String image = rs.getString("image");
    %>
    <div class="product">
        <form action="order.jsp" method="post">
            <input type="hidden" name="name" value="<%= name %>">
            <input type="hidden" name="price" value="<%= price %>">
            <input type="hidden" name="image" value="<%= image %>">
            <h2>Name: <%= name %></h2>
            <p>Price: $<%= price %></p>
            <img src="<%= image %>" alt="<%= name %>">
            <input type="submit" value="Place Order">
        </form>
    </div>
    <%
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    %>
</div>
</body>
</html>
