# 🛍️ Product and Order Management Web Application

## Project Description

This project is a web application for managing products and orders, developed in Java using servlet technologies. It allows users to manage product and order information efficiently and intuitively. The application offers comprehensive functionalities for adding, updating, deleting, and displaying products and orders.

## ✨ Features

- **Product Management**:
  - 🆕 Adding new products with detailed information
  - 📋 Displaying the complete list of available products
  - 🔍 Searching for products by specific criteria
  - ✏️ Updating existing product information
  - 🗑️ Deleting products from the database

- **Order Management**:
  - 🆕 Adding new orders associated with products
  - 📋 Displaying the list of registered orders
  - 🔍 Searching for orders by various criteria
  - ✏️ Updating existing order details
  - 🗑️ Deleting orders from the database

## 🏛️ Project Architecture

The application follows the MVC (Model-View-Controller) architecture pattern to separate different responsibilities:

- **Model**:
  - **Product**: Class representing a product with attributes like `id`, `name`, `surname`, and `phone number`. This class encapsulates the properties and methods related to products.
  - **Order**: Class representing an order with attributes like `id`, `client` (a Product object), and `number of products`. This class manages order information and relationships with products.
  - **ProductManagement**: Data management class for products, including methods to add, display, search, update, and delete products.
  - **OrderManagement**: Data management class for orders, with methods to add, display, search, update, and delete orders.

- **View**: JSP (JavaServer Pages) used to display data to users and capture their input. These pages provide a user interface to interact with the application, such as `display.jsp`, `confirmAddition.jsp`, `searchResult.jsp`, etc.

- **Controller**: Servlets that handle HTTP requests, execute business logic, and redirect to appropriate views. The main controller is `ProductServlet`, which handles actions like adding, updating, deleting, and displaying products and orders.

## 🛠️ Technologies Used

- **Languages and Frameworks**:
  - Java Servlet
  - JSP (JavaServer Pages)

- **Database**:
  - MySQL for data storage

- **Other Tools**:
  - JDBC for database connection and interaction
  - Apache Tomcat as the application server

## 📋 Prerequisites

- JDK 8 or higher
- Apache Tomcat 9 or higher
- MySQL 5.7 or higher

## 🚀 Installation and Configuration

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/your-repository.git

2.**Configure the database**:
- 🗄️Create a MySQL database named bd_java2e.
- 📥 Import the provided SQL file to create necessary tables and insert test data.

3.**Configure the project**:
- 🔧Update the database connection information in the SingletonConnection class.

4. **Deploy the application:**
- 🛠️Compile the project using your IDE or a build tool like Maven.
- 🚀Deploy the generated WAR file on the Apache Tomcat server.
📈## Usage
- Start the Tomcat server and access the application via http://localhost:8080/your-application.
- Use the application's features to manage products and orders through the user interface.
