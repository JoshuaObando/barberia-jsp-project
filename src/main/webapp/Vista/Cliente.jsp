<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Barbería TheMan</title>
    <link rel="stylesheet" href="Estilo/style.css">
    <!-- Incluir SweetAlert2 para mostrar alertas personalizadas -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body class="body-cliente">

    <header class="header-cliente">
        <nav class="navegacion-cliente"> 
            <div class="logo-cliente">Barbería <span class="dorado">TheMan</span></div>
            <ul class="menu-cliente">
                <li><a href="#inicio">Inicio</a></li>
                <li><a href="#servicios">Servicios</a></li>
                <li><a href="#barberos">Barberos</a></li>
                <li><a href="#reservas">Reservas</a></li>
                <li><a href="#contacto">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <section id="inicio" class="hero">
        <h1>Barbería <span class="dorado">TheMan</span></h1>
        <p>El arte del cuidado masculino!</p>
        <a href="#reservas" class="btn-reservar">Reservar Cita</a>
    </section>

    <section id="servicios" class="services">
        <h2>Nuestros Servicios</h2>
        <div class="services-grid">
            <div class="service-card">
                <img src="https://haircutday.com/b/wp-content/uploads/2024/01/Diseno-sin-titulo31-300x300.png" alt="Corte de Cabello">
                <div class="service-info">
                    <h3>Corte básico</h3>
                    <p>Cortes modernos y clásicos</p>
                    <p class="price">₡3000</p>
                    <a href="#reservas" class="btn-service">Reservar</a>
                </div>
            </div>
            <div class="service-card">
                <img src="https://www.consalud.es/estetic/uploads/s1/45/00/23/trucos-para-afeitarse-de-manera-adecuada.jpeg" alt="Afeitado">
                <div class="service-info">
                    <h3>Corte + Barba</h3>
                    <p>Con navaja y toalla caliente</p>
                    <p class="price">₡9000</p>
                    <a href="#reservas" class="btn-service">Reservar</a>
                </div>
            </div>
            <div class="service-card">
                <img src="https://i.ytimg.com/vi/XG3U_vOHAx4/hqdefault.jpg" alt="Barba">
                <div class="service-info">
                    <h3>Barba</h3>
                    <p>Arreglo de barba</p>
                    <p class="price">₡6000</p>
                    <a href="#reservas" class="btn-service">Reservar</a>
                </div>
            </div>
        </div>
    </section>

    <section id="barberos" class="barbers">
        <h2>Nuestros Barberos</h2>
        <div class="barbers-grid">
            <div class="barber-card">
                <img src="https://www.carloscondepeluqueros.com/wp-content/uploads/2020/01/barberos-famosos.jpg" alt="Carlos">
                <h3>Carlos Rodríguez</h3>
                <p>Especialista en cortes modernos</p>
                <p class="experience">5 años de experiencia</p>
            </div>
            <div class="barber-card">
                <img src="https://i.pinimg.com/originals/58/20/bd/5820bdd4a8fea8a6bdd5d27d6fd040d7.jpg" alt="Miguel">
                <h3>Miguel Hernández</h3>
                <p>Experto en barbas y afeitados</p>
                <p class="experience">8 años de experiencia</p>
            </div>
            <div class="barber-card">
                <img src="https://media.licdn.com/dms/image/v2/D4E12AQGFVGLAUpQlIQ/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1696013611407?e=2147483647&v=beta&t=WlSTxfv7tK5tO336rXyUu47tHudoGZzpHgFcW7BE26A" alt="David">
                <h3>David Mora</h3>
                <p>Especialista en estilos clásicos</p>
                <p class="experience">6 años de experiencia</p>
            </div>
        </div>
    </section>

    <section id="reservas" class="booking">
        <h2>Reserva tu Cita</h2>
        <form id="booking-form" class="booking-form" action="/barberiaproyecto/Controlador/ClienteLogica.jsp" method="post">
            <div class="form-group">
                <label for="cedula">Cédula:</label>
                <input type="text" id="cedula" name="cedula" required>
            </div>
            <div class="form-group">
                <label name="barber" for="barber">Barbero:</label>
                <select id="barber" name="barber" required>
                    <option value="">Seleccione un barbero</option>
                    <option value="carlos">Carlos Rodríguez</option>
                    <option value="miguel">Miguel Hernández</option>
                    <option value="david">David Mora</option>
                </select>
            </div>
            <div class="form-group">
                <label for="service">Servicio:</label>
                <select id="service" name="service" required>
                    <option value="">Seleccione un servicio</option>
                    <option value="corte">Corte Básico - ₡6000</option>
                    <option value="corte-barba">Corte + Barba - ₡9000</option>
                    <option value="afeitado">Barba - ₡3000</option>
                </select>
            </div>
            <div class="form-group">
                <label for="date">Fecha:</label>
                <input type="date" id="date" name="date" required>
            </div>
            <div class="form-group">
                <label for="time">Hora:</label>
                <select id="time" name="time" required>
                    <option value="">Seleccione una Hora</option>
                    <option value="9:00">9:00 AM</option>
                    <option value="10:00">10:00 AM</option>
                    <option value="11:00">11:00 AM</option>
                    <option value="12:00">12:00 PM</option>
                    <option value="13:00">1:00 PM</option>
                    <option value="14:00">2:00 PM</option>
                    <option value="15:00">3:00 PM</option>
                    <option value="16:00">4:00 PM</option>
                    <option value="17:00">5:00 PM</option>
                    <option value="18:00">6:00 PM</option>
                    <option value="19:00">7:00 PM</option>
                    <option value="20:00">8:00 PM</option>
                </select>
            </div>
            <button type="submit" class="btn">Reservar Cita</button>
        </form>
    </section>

    <section id="contacto" class="contact">
        <div class="contact-container">
            <h2>Contacto</h2>
            <div class="contact-content">
                <div class="contact-info">
                    <p>📍 Liberia, Guanacaste</p>
                    <p>📞 6112-6878</p>
                    <p>✉️ info@barberiaTheMan.cr</p>
                </div>
                <div class="hours">
                    <h3>Horario</h3>
                    <p>Lunes a Sábado: 9:00 - 20:00</p>
                    <p>Domingos: Cerrado</p>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Barbería TheMan. Todos los derechos reservados.</p>
    </footer>

    <!-- Lógica para mostrar alertas con SweetAlert2 -->
    <%
        String alertMessage = (String) session.getAttribute("alertMessage");
        String alertType = (String) session.getAttribute("alertType");
        if (alertMessage != null) {
    %>
        <script>
            Swal.fire({
                icon: '<%= alertType %>',
                title: '<%= alertType.equals("success") ? "Éxito" : "Error" %>',
                text: "<%= alertMessage %>",
                confirmButtonText: 'Aceptar'
            });
        </script>
    <%
            session.removeAttribute("alertMessage");
            session.removeAttribute("alertType");
        }
    %>
</body>
</html>
