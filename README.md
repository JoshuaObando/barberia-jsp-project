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

