# Library Management Web Application (Spring MVC with RESTful Web Services)

This is a web application for library management developed using Spring MVC. Librarians can log in to manage books, and the book details are maintained on a separate server ( Built with Spring Boot) that exposes RESTful web services using Spring Boot for CRUD operations on books data. Additionally, authors are associated with books and are configured in the database.

## Features

- Web-based library management application developed using Spring MVC.
- Integration with a separate server (Application 2) that provides RESTful APIs for CRUD operations on books data.
- Librarian login and logout functionality with secure session management.
- Display a list of books with details.
- Add a new book, including selecting an author from a dropdown list.
- Edit book details.
- RESTful APIs for CRUD operations on both authors and books data.
- Proper exception handling and HTTP status codes for REST APIs.
- Well-documented HTML, JavaScript, and CSS files.
- Code follows Java coding standards and best practices.

## Usage

To run the library management web application, follow these steps:

1. Clone the repository or download the source code.

2. Set up your database for storing books and authors information.

3. Configure the database connection and other Hibernate properties in the application's configuration files.

4. Deploy the application to your preferred web server (e.g., Tomcat).

5. Access the application in your web browser by entering the URL.

6. Log in as a librarian using your credentials.

7. Use the application to list books, add new books, and edit book details. Authors can be selected from a dropdown list.

## RESTful Web Services

The application communicates with a separate server (Application 2) that provides RESTful APIs for CRUD operations on authors and books data. These APIs are used to fetch and manipulate book and author information.

## Author Management

Authors are configured in the database and can be associated with books during the book creation process. No separate UI is provided for author management, but RESTful APIs are available for CRUD operations on author data.
