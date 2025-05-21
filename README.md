# barberia-jsp-project
University project: Web application for managing a barbershop built with JSP and MySQL.

# 💈 Barbershop Management Web App

A Java JSP-based web application designed to manage a barbershop's services, clients, and employee sessions. Built as a university project using Java EE technologies and connected to a MySQL relational database.

## 📌 Features

- Login system with roles (admin, client, barber)
- CRUD operations for client and barber records
- Session management and navigation control
- Basic appointment management (in progress)
- Styled frontend using JSP + CSS

## 🛠️ Technologies Used

- Java (JSP/Servlet)
- Apache Tomcat
- MySQL
- HTML & CSS
- Maven
- JSTL

## 📁 Project Structure

```
src/
├── main/
│   └── webapp/
│       ├── Controlador/       # Business logic (ClienteLogica.jsp, Logica.jsp, etc.)
│       ├── Modelo/            # DB connection logic (Conexion.jsp)
│       ├── Vista/             # UI views (Cliente.jsp, Jefe.jsp, index.jsp)
│       └── Estilo/            # Stylesheets (login.css, style.css)
└── web.xml                   # Servlet configuration
```

## ⚙️ Setup Instructions

1. Clone this repository:
   ```
   git clone https://github.com/JoshuaObando/barberia-jsp-project.git
   ```

2. Import the project into your IDE (Eclipse, IntelliJ) as a **Maven project**.

3. Configure your local MySQL database:
   - Create schema `barberia`
   - Import table structure (if `.sql` file is provided)
   - Update DB credentials in `Modelo/Conexion.jsp`

4. Deploy using Apache Tomcat.

## 🧠 Authors

- Joshua Obando González
- Maylo Parra Aguirre

## 📌 Status

This project was developed for academic purposes as part of a final course assignment. It is functional and demonstrates role-based control and basic client logic.


# barberia-jsp-project
Proyecto universitario: Aplicación web para la gestión de una barbería, desarrollada con JSP y MySQL.

# 💈 Aplicación Web para Gestión de Barbería

Aplicación web basada en Java JSP diseñada para gestionar los servicios, clientes y sesiones de empleados de una barbería. Desarrollada como proyecto universitario utilizando tecnologías Java EE y conectada a una base de datos relacional MySQL.

## 📌 Funcionalidades

- Sistema de inicio de sesión con roles (administrador, cliente, barbero)
- Operaciones CRUD para registros de clientes y barberos
- Manejo de sesiones y control de navegación
- Gestión básica de citas (en desarrollo)
- Interfaz con estilo personalizado usando JSP + CSS

## 🛠️ Tecnologías Utilizadas

- Java (JSP/Servlet)
- Apache Tomcat
- MySQL
- HTML y CSS
- Maven
- JSTL

## 📁 Estructura del Proyecto

```
src/
├── main/
│   └── webapp/
│       ├── Controlador/       # Lógica de negocio (ClienteLogica.jsp, Logica.jsp, etc.)
│       ├── Modelo/            # Conexión a la base de datos (Conexion.jsp)
│       ├── Vista/             # Interfaz de usuario (Cliente.jsp, Jefe.jsp, index.jsp)
│       └── Estilo/            # Hojas de estilo (login.css, style.css)
└── web.xml                   # Configuración de servlets
```

## ⚙️ Instrucciones de Instalación

1. Cloná este repositorio:
   ```
   git clone https://github.com/JoshuaObando/barberia-jsp-project.git
   ```

2. Importá el proyecto en tu IDE (Eclipse, IntelliJ) como un **proyecto Maven**.

3. Configurá tu base de datos MySQL local:
   - Crear el esquema `barberia`
   - Importar la estructura de tablas (si se proporciona un archivo `.sql`)
   - Actualizar las credenciales en `Modelo/Conexion.jsp`

4. Desplegar usando Apache Tomcat.

## 🧠 Autores

- Joshua Obando González  
- Maylo Parra Aguirre

## 📌 Estado del Proyecto

Este proyecto fue desarrollado con fines académicos como parte de una entrega final de curso. Está funcional y demuestra el control de acceso por roles y la lógica básica de gestión de usuarios y servicios.
