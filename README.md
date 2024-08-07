# 📦 Java Project - Product and Order Management System

## 🚀 Project Overview

This Java project is a web-based application that manages products and orders. It leverages Java Servlets, JSP, and a MySQL database to provide functionalities for user authentication, product management, and order processing. This project is a practical example of using Servlets and JSP to create a dynamic and interactive web application.

## ✨ Features

- **User Authentication** 🔐: Authenticate users with login credentials.
- **Product Management** 🛒: Add, update, delete, and display products.
- **Order Management** 📦: Create, update, delete, and view orders.
- **Database Integration** 🗄️: Use MySQL for data storage and retrieval.

## 🛠️ Technologies Used

- **Language**: Java
- **Web Technologies**: Servlets, JSP
- **Database**: MySQL
- **Database Connection**: JDBC

## 📋 Prerequisites

- Java 8 or higher
- MySQL database
- Apache Tomcat or another Java Servlet container
- MySQL Connector/J library

## 🚀 Installation and Configuration

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/Product-Order-Management-System.git
   cd Product-Order-Management-System
   
2. **Set Up the Database**
Create a MySQL database named bd_java2e.
Import the SQL schema provided in the database folder.

3. **Configure Database Connection**
Update the SingletonConnection class with your MySQL database credentials if needed.

4. **Deploy the Application**
Deploy the project to your servlet container (e.g., Apache Tomcat).

5. **Run the Application**
Access the application through your web browser at http://localhost:8080/YourAppContext.
## 📈 Usage
- User Authentication: Navigate to the login page (Login.html) and use the credentials admin / admin to log in.
- Product Management: Use the product management pages to add, view, update, and delete products.
- Order Management: Use the order management pages to create, view, update, and delete orders.
## 📁 Project Structure
- Modéle: Contains model classes for Utilisateur, Produit, Commande, and database connection handling.
- Contrôleur: Contains servlet classes for handling user interactions and managing requests and responses.
- dao: Contains data access objects for managing product and order data.
- webapp: Contains JSP pages and HTML forms.

## 🧩 Additional Information
Feel free to modify and extend this project to suit your needs. If you encounter any issues or need further assistance, you can contact me at `amalghozzi@outlook.com`.
