<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion barberia</title>
    <link rel="stylesheet" href="Estilo/style.css">
</head>

<body class="Jefe">
    <header class="headerJefe">
        <p>Barberia The<span class="dorado">Man</span></p>
        <h1>Bienvenido administrador</h1>
    </header>

    <!-- CRUD para Citas -->
    <section>
        <h2>Gestión de Citas</h2>

        <!-- Formulario para Actualizar Cita -->
        <form action="/barberiaproyecto/Controlador/Jefelogica.jsp" method="post">
            <h3>Actualizar Cita</h3>
            <input type="hidden" name="action" value="actualizarCita">
            <input type="number" name="id_cita" placeholder="ID de la Cita" required>
            <input type="text" name="cedula_cliente" placeholder="Cédula del Cliente" required>
            <input type="text" name="codigo_barbero" placeholder="Código del Barbero" required>
            <input type="number" name="id_servicio" placeholder="ID del Servicio" required>
            <input type="date" name="date" placeholder="Fecha" required>
            <select type="text" id="time" name="time" required>
                <option value="">Seleccione una Hora</option>
                <option value="9:00">9:00 AM</option>
                <option value="10:00">10:00 AM</option>
                <option value="11:00">11:00 AM</option>
                <option value="12:00">12:00 PM</option>
                <option value="13:00">13:00 PM</option>
                <option value="14:00">14:00 PM</option>
                <option value="15:00">15:00 PM</option>
                <option value="16:00">16:00 PM</option>
                <option value="17:00">17:00 PM</option>
                <option value="18:00">18:00 PM</option>
                <option value="19:00">19:00 PM</option>
                <option value="20:00">20:00 PM</option>
            </select>
            <button type="submit">Actualizar Cita</button>
        </form>

        <!-- Formulario para Eliminar Cita -->
        <form action="/barberiaproyecto/Controlador/Jefelogica.jsp" method="post">
            <h3>Eliminar Cita</h3>
            <input type="hidden" name="action" value="eliminarCita">
            <input type="number" name="id_cita" placeholder="ID de la Cita" required>
            <button type="submit">Eliminar Cita</button>
        </form>
    </section>

    <!-- CRUD para Servicios -->
    <section>
        <h2>Gestión de Servicios</h2>
        <!-- Formulario para Actualizar Servicio -->
        <form action="/barberiaproyecto/Controlador/Jefelogica.jsp" method="post">
            <h3>Agregar Servicio</h3>
            <input type="hidden" name="action" value="agregarServicio">
            <input type="text" name="id_servicio" placeholder="ID del Servicio" required>
            <input type="text" name="nombre" placeholder="Nombre del Servicio" required>
            <input type="number" name="precio" placeholder="Precio" required>
            <button type="submit">Agregar Servicio</button>
        </form>
        
        <!-- Formulario para Actualizar Servicio -->
        <form action="/barberiaproyecto/Controlador/Jefelogica.jsp" method="post">
            <h3>Actualizar Servicio</h3>
            <input type="hidden" name="action" value="actualizarServicio">
            <input type="number" name="id_servicio" placeholder="ID del Servicio" required>
            <input type="text" name="nombre" placeholder="Nombre del Servicio" required>
            <input type="number" name="precio" placeholder="Precio" required>
            <button type="submit">Actualizar Servicio</button>
        </form>

        <!-- Formulario para Eliminar Servicio -->
        <form action="/barberiaproyecto/Controlador/Jefelogica.jsp" method="post">
            <h3>Eliminar Servicio</h3>
            <input type="hidden" name="action" value="eliminarServicio">
            <input type="number" name="id_servicio" placeholder="ID del Servicio" required>
            <button type="submit">Eliminar Servicio</button>
        </form>
    </section>

    <!-- Consultar Servicios y Citas -->
    <section>
        <h2>Consultar Datos</h2>

        <!-- Botón para Ver Citas -->
        <form action="/barberiaproyecto/Controlador/Jefelogica.jsp" method="post" name="verCitas">
            <input type="hidden" name="action" value="verCitas">
            <button type="submit">Ver Todas las Citas</button>
        </form>

         <!-- Botón para Ver Servicios -->
         <form action="/barberiaproyecto/Controlador/Jefelogica.jsp" method="post" name="verServicios">
            <input type="hidden" name="action" value="verServicios">
            <button type="submit" >Ver Todos los Servicios</button>
        </form>
    </section>
</body>
</html>