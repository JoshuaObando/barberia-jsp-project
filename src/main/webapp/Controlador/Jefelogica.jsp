<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ include file="../Modelo/Conexion.jsp" %>

<%
    Connection con = (Connection) application.getAttribute("conexion");

    // Recibir el valor de "action" para decidir qué operación realizar
    String action = request.getParameter("action");
    String alertMessage = "";
    String alertType = "error";

    if ("actualizarCita".equals(action)) {
        // Lógica para Actualizar Cita
        String id_cita = request.getParameter("id_cita");
        String cedula_cliente = request.getParameter("cedula_cliente");
        String codigo_barbero = request.getParameter("codigo_barbero");
        String id_servicio = request.getParameter("id_servicio");
        String fecha = request.getParameter("date");
        String hora = request.getParameter("time") != null ? request.getParameter("time") + ":00" : "";

        try {
            String sql = "CALL Actualizarcita(?,?,?,?,?,?);";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, id_cita);
            pst.setString(2, cedula_cliente);
            pst.setString(3, codigo_barbero);
            pst.setString(4, id_servicio);
            pst.setString(5, fecha);
            pst.setString(6, hora);
            int result = pst.executeUpdate();
            if (result > 0) {
                alertMessage = "Cita actualizada correctamente.";
                alertType = "success";
            } else {
                alertMessage = "Error al actualizar la cita.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            alertMessage = "Error al actualizar la cita: " + e.getMessage();
        }

    } else if ("eliminarCita".equals(action)) {
        // Lógica para Eliminar Cita
        String id_cita = request.getParameter("id_cita");

        try {
            String sql = "CALL EliminarCita(?);";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, id_cita);
            int result = pst.executeUpdate();
            if (result > 0) {
                alertMessage = "Cita eliminada correctamente.";
                alertType = "success";
            } else {
                alertMessage = "Error al eliminar la cita.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            alertMessage = "Error al eliminar la cita: " + e.getMessage();
        }

    } else if ("agregarServicio".equals(action)) {
        // Lógica para Agregar Servicio
        String id_servicio = request.getParameter("id_servicio");
        String nombre = request.getParameter("nombre");
        String precio = request.getParameter("precio");

        try {
            String sql = "CALL agregarServicio(?,?,?);";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, id_servicio);
            pst.setString(2, nombre);
            pst.setString(3, precio);
            int result = pst.executeUpdate();
            if (result > 0) {
                alertMessage = "Servicio agregado correctamente.";
                alertType = "success";
            } else {
                alertMessage = "Error al agregar el servicio.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            alertMessage = "Error desde catch: " + e.getMessage();
        }

    } else if ("actualizarServicio".equals(action)) {
        // Lógica para Actualizar Servicio
        String id_servicio = request.getParameter("id_servicio");
        String nombre = request.getParameter("nombre");
        String precio = request.getParameter("precio");

        try {
            String sql = "CALL Actualizarservicio(?, ?, ?);";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, id_servicio);
            pst.setString(2, nombre);
            pst.setString(3, precio);
            int result = pst.executeUpdate();
            if (result > 0) {
                alertMessage = "Servicio actualizado correctamente.";
                alertType = "success";
            } else {
                alertMessage = "Error al actualizar el servicio.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            alertMessage = "Error al actualizar el servicio: " + e.getMessage();
        }

    } else if ("eliminarServicio".equals(action)) {
        // Lógica para Eliminar Servicio
        String id_servicio = request.getParameter("id_servicio");

        try {
            String sql = "CALL EliminarServicio(?);";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, id_servicio);
            int result = pst.executeUpdate();
            if (result > 0) {
                alertMessage = "Servicio eliminado correctamente.";
                alertType = "success";
            } else {
                alertMessage = "Error al eliminar el servicio.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            alertMessage = "Error al eliminar el servicio: " + e.getMessage();
        }

    } else if ("verCitas".equals(action)) {
        // Lógica para Ver Citas sin SweetAlert
        try {
            String sql = "CALL VerCitas();";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            out.println("<h2>Lista de Citas</h2>");
            out.println("<table border='1'>");
            out.println("<tr><th>ID Cita</th><th>Cedula Cliente</th><th>Codigo Barbero</th><th>ID Servicio</th><th>Fecha</th><th>Hora</th></tr>");
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("idcita") + "</td>");
                out.println("<td>" + rs.getString("Cedula") + "</td>");
                out.println("<td>" + rs.getString("CodigoBarbero") + "</td>");
                out.println("<td>" + rs.getString("idservicio") + "</td>");
                out.println("<td>" + rs.getString("Fecha") + "</td>");
                out.println("<td>" + rs.getString("Hora") + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p style='color:red;'>Error al ver las citas: " + e.getMessage() + "</p>");
        }
        return;

    } else if ("verServicios".equals(action)) {
        // Lógica para Ver Servicios sin SweetAlert
        try {
            String sql = "CALL VerServicios();";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            out.println("<h2>Lista de Servicios</h2>");
            out.println("<table border='1'>");
            out.println("<tr><th>ID Servicio</th><th>Nombre</th><th>Precio</th></tr>");
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("id_Servicio") + "</td>");
                out.println("<td>" + rs.getString("Nombre") + "</td>");
                out.println("<td>" + rs.getString("Precio") + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p style='color:red;'>Error al ver los servicios: " + e.getMessage() + "</p>");
        }
        return;

    } else {
        alertMessage = "Acción no válida.";
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Procesando...</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>

<% if (!action.equals("verCitas") && !action.equals("verServicios")) { %>
<script>
    Swal.fire({
        icon: '<%= alertType %>',
        title: '<%= alertType.equals("success") ? "Éxito" : "Error" %>',
        text: "<%= alertMessage %>",
        confirmButtonText: 'Aceptar'
    }).then(() => {
        window.history.back(); // Regresa a la página anterior después de cerrar la alerta
    });
</script>
<% } %>

</body>
</html>
