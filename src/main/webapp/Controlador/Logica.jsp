<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ include file="../Modelo/Conexion.jsp" %>

<%
    String alertMessage = "";
    String alertType = "error";
    String iniciarSesion = request.getParameter("Iniciar-sesion");
    String crearCuenta = request.getParameter("Crear-cuenta");

    Connection con = (Connection) application.getAttribute("conexion");

    if (iniciarSesion != null) {
        String Correo = request.getParameter("email");
        String contrasena = request.getParameter("password");

        if (con != null) {
            String sqlconsulta = "CALL VerificarCredenciales(?, ?);";
            try (PreparedStatement pst = con.prepareStatement(sqlconsulta)) {
                pst.setString(1, Correo);
                pst.setString(2, contrasena);
                ResultSet rs = pst.executeQuery();

                if (rs.next()) {
                    if ("JefeAdministrador@gmail.com".equals(rs.getString("Correo")) && "JefeAdministrador777".equals(rs.getString("contrasena"))) {
                        alertMessage = "Bienvenido, administrador.";
                        alertType = "success";
                        response.sendRedirect("/barberiaproyecto/Vista/Jefe.jsp");
                    } else {
                        alertMessage = "Bienvenido, cliente.";
                        alertType = "success";
                        response.sendRedirect("/barberiaproyecto/Vista/Cliente.jsp");
                    }
                } else {
                    alertMessage = "Credenciales incorrectas";
                    alertType = "error";
                }
            } catch (Exception e) {
                e.printStackTrace();
                alertMessage = "Error en la consulta: " + e.getMessage();
                alertType = "error";
            }
        } else {
            alertMessage = "No se pudo establecer la conexión a la base de datos.";
            alertType = "error";
        }
    } else if (crearCuenta != null) {
        String Correo = request.getParameter("email2");
        String contrasena = request.getParameter("password2");

        if (con != null) {
            String sqlInsert = "CALL InsertarUsuario(?, ?);";
            try (PreparedStatement psInsert = con.prepareStatement(sqlInsert)) {
                psInsert.setString(1, Correo);
                psInsert.setString(2, contrasena);
                int result = psInsert.executeUpdate();
                
                if (result > 0) {
                    alertMessage = "Registro exitoso. Ahora puedes iniciar sesión.";
                    alertType = "success";
                }
            } catch (Exception e) {
                if (e.getMessage().contains("El correo ya está registrado")) {
                    alertMessage = "El correo electrónico ya está registrado.";
                    alertType = "error";
                } else {
                    alertMessage = "Error en el registro: " + e.getMessage();
                    alertType = "error";
                }
            }
        } else {
            alertMessage = "No se pudo establecer la conexión a la base de datos.";
            alertType = "error";
        }
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

<script>
    Swal.fire({
        icon: '<%= alertType %>',
        title: '<%= alertType.equals("success") ? "Éxito" : "Error" %>',
        text: "<%= alertMessage %>",
        confirmButtonText: 'Aceptar'
    }).then(() => {
        // Redirigir si es necesario después de mostrar la alerta
        if ('<%= alertType %>' === 'success') {
            window.location.href = '<%= request.getContextPath() %>/index.jsp'; // Cambia esta ruta según corresponda
        } else {
            window.history.back(); // Regresa a la página anterior en caso de error
        }
    });
</script>

</body>
</html>
