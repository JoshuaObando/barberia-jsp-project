<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException" %>
<%
    String dbURL = "jdbc:mysql://localhost:3306/proyecto_barberia";
    String dbUser = "root";
    String dbPassword = "Joshua20000..**"; // Cambia esto a tu contraseña de MySQL

    Connection conexion = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conexion = DriverManager.getConnection(dbURL, dbUser, dbPassword);
        application.setAttribute("conexion", conexion);
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        out.println("Error al conectar a la base de datos: " + e.getMessage());
    }
%>