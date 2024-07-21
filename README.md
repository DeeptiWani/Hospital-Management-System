# Hospital Management System

## Overview
This project is a Hospital Management System designed to streamline hospital operations by digitizing patient records, doctor schedules, and inventory management. It aims to improve efficiency in healthcare delivery and provide easy access to critical information for hospital staff.

## Technologies Used
- **Frontend:** HTML, CSS, JavaScript
- **Backend:** JavaServer Pages (JSP)
- **Database:** MySQL

## Setting Up the Database

1. **Create a MySQL database:**
   - Open MySQL command-line client or a GUI tool like MySQL Workbench.
   - Create a new database for the project:
     ```sql
     CREATE DATABASE hospital_management_system;
     ```

2. **Import the database schema:**
   - Locate the `database.sql` file provided in the repository.
   - Use MySQL command-line client or a GUI tool to import the schema into the newly created database:
     ```bash
     mysql -u username -p hospital_management_system < path/to/database.sql
     ```
     Replace `username` with your MySQL username and provide the path to `database.sql`.

## Configuring Database Connection

1. **Update database connection settings:**
   - Locate the `dbconfig.properties` file (or equivalent) in your project.
   - Modify the configuration to match your MySQL database credentials:
     ```properties
     db.url=jdbc:mysql://localhost:3306/hospital_management_system
     db.username=your_username
     db.password=your_password
     ```
   - Replace `your_username` and `your_password` with your MySQL username and password.

## Deploying the Application

1. **Deploy on a JSP container:**
   - Download and install a Servlet container such as Apache Tomcat or Jetty if not already installed.
   - Build your project and generate a WAR file (if applicable).
   - Deploy the WAR file to the Servlet container:
     - For Apache Tomcat, copy the WAR file to the `webapps` directory.
     - Start or restart the Servlet container.

## Accessing the Application

1. **Open your web browser:**
   - Launch your web browser (Chrome, Firefox, etc.).
   - Enter the following URL in the address bar:
     ```
     http://localhost:8080/hospital-management-system
     ```
   - Replace `8080` with the port number of your Servlet container if different.
   - This should open the landing page of your Hospital Management System application.

 ## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your suggested changes.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
