<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ include file="../Modelo/Conexion.jsp" %>

<%
String cedula = request.getParameter("cedula");
String codigobarbero = "";
String servicio = "";
String fecha = request.getParameter("date");
String hora = "";

if ("9:00".equals(request.getParameter("time"))) {
    hora = "09:00:00";
} else if ("10:00".equals(request.getParameter("time"))) {
    hora = "10:00:00";
} else if ("11:00".equals(request.getParameter("time"))) {
    hora = "11:00:00";
} else if ("12:00".equals(request.getParameter("time"))) {
    hora = "12:00:00";
} else if ("13:00".equals(request.getParameter("time"))) {
    hora = "13:00:00";
} else if ("14:00".equals(request.getParameter("time"))) {
    hora = "14:00:00";
} else if ("15:00".equals(request.getParameter("time"))) {
    hora = "15:00:00";
} else if ("16:00".equals(request.getParameter("time"))) {
    hora = "16:00:00";
} else if ("17:00".equals(request.getParameter("time"))) {
    hora = "17:00:00";
} else if ("18:00".equals(request.getParameter("time"))) {
    hora = "18:00:00";
} else if ("19:00".equals(request.getParameter("time"))) {
    hora = "19:00:00";
} else if ("20:00".equals(request.getParameter("time"))) {
    hora = "20:00:00";
}

// Definir el código del barbero basado en el nombre seleccionado
if ("carlos".equals(request.getParameter("barber"))) {
    codigobarbero = "C355";
} else if ("miguel".equals(request.getParameter("barber"))) {
    codigobarbero = "C354";
} else if ("david".equals(request.getParameter("barber"))) {
    codigobarbero = "C353";
}

// Definir el servicio basado en la opción seleccionada
if ("corte".equals(request.getParameter("service"))) {
    servicio = "1";
} else if ("corte-barba".equals(request.getParameter("service"))) {
    servicio = "2";
} else if ("afeitado".equals(request.getParameter("service"))) {
    servicio = "3";
}

Connection con = (Connection) application.getAttribute("conexion");
if (con != null) {
    String sqlInsert = "CALL InsertarCita(?,?,?,?,?);";
    try (PreparedStatement psInsert = con.prepareStatement(sqlInsert)) {
        psInsert.setString(1, cedula);
        psInsert.setString(2, codigobarbero);
        psInsert.setString(3, servicio);
        psInsert.setString(4, fecha);
        psInsert.setString(5, hora);

        int result = psInsert.executeUpdate();
        if (result > 0) {
            session.setAttribute("alertMessage", "Cita reservada con éxito.");
            session.setAttribute("alertType", "success");
        } else {
            session.setAttribute("alertMessage", "Error: No se insertó la cita.");
            session.setAttribute("alertType", "error");
        }
    } catch (Exception e) {
        session.setAttribute("alertMessage", "Error en la reserva de cita: " + e.getMessage());
        session.setAttribute("alertType", "error");
    }
} else {
    session.setAttribute("alertMessage", "No se pudo establecer la conexión a la base de datos.");
    session.setAttribute("alertType", "error");
}
response.sendRedirect("../Vista/Cliente.jsp");
%>