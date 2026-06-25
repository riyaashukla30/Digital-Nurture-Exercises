LibraryManagement

This is a simple Java project built using Spring Core framework. It demonstrates basic dependency injection using XML configuration.

Project Overview

The application contains a BookService and BookRepository. Spring is used to manage object creation and wiring between these classes.

Technologies Used
Java
Maven
Spring Core (XML based configuration)
Project Structure
LibraryManagement
│
├── pom.xml
└── src
    └── main
        ├── java
        │   └── com.library
        │       ├── service
        │       ├── repository
        │       └── main
        └── resources
            └── applicationContext.xml
How to Run
Step 1: Compile project
mvn clean compile
Step 2: Run application
mvn exec:java
Output
Book: Atomic Habits by James Clear
