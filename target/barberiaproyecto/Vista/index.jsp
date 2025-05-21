<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/128/595/595777.png">
        <title>Barberia TheMan</title>
        <link rel="stylesheet" href="Vista/Estilo/login.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> <!-- Librería de SweetAlert2 -->
    </head>
<body class="Sesion2">
    <div class="overlay"></div>
    <div class="Header">
        <div class="Logo">The<span class="dorado">Man</span></div>
        <div class="navegacion">
            <nav>
                <ul>
                    <li><a onclick="togglePanel('iniciar-sesion')">Home</a></li>
                    <li><a onclick="togglePanel('sobrenostros')">Sobre Nosotros</a></li>
                </ul>
            </nav>
        </div>
        <div class="auth-buttons">
            <button class="btn-registro" onclick="togglePanel('iniciar-sesion')">Iniciar sesión</button>
            <button class="btn-registro" onclick="togglePanel('crearcuenta')">Crear cuenta</button>
        </div>
    </div>
    <h1 class="eslogan">Bienvenido a tu barbería de confianza</h1>

    <!-- Paneles -->
    <div class="iniciar-sesion panel activo"> <!-- Solo este panel tiene "activo" de inicio -->
        <div class="contenedor">
            <form action="/barberiaproyecto/Controlador/Logica.jsp" method="post">
                <h2>Iniciar sesión</h2>
                <input class="input-box" type="email" placeholder="Correo electronico" name="email" required>
                <input class="input-box" type="password" placeholder="Contraseña" name="password" required>
                <input type="submit" name="Iniciar-sesion" value="Iniciar sesión">
            </form>
        </div>
    </div>

    <div class="crearcuenta panel">
        <div class="contenedor">
            <form action="/barberiaproyecto/Controlador/Logica.jsp" method="post">
                <h2>Crear cuenta</h2>
                <input class="input-box" type="email" placeholder="Correo electronico" name="email2" required>
                <input class="input-box" type="password" placeholder="Contraseña" name="password2" required>
                <input type="submit" name="Crear-cuenta" value="Crear cuenta">
            </form>
        </div>
    </div>

    <div class="sobrenostros panel">
        <div class="contenedor">
            <h2>Sobre Nosotros</h2>
            <p>En TheMan Barbería, nos especializamos en ofrecer una experiencia de alta calidad...</p>
        </div>
    </div>

    <script>
        function togglePanel(panelId) {
            document.querySelectorAll('.panel').forEach(panel => panel.classList.remove('activo'));
            document.querySelector(`.${panelId}`).classList.add('activo');
        }
    </script>
</body>
</html>
