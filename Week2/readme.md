# 📚 Library Management System - Spring Framework (Week 2 Hands-On)

## 📖 Project Overview

This repository contains the implementation of the **Library Management System** developed as part of the **Spring Framework Week 2 Hands-On Exercises**.

The project demonstrates the fundamentals of the Spring Framework, including:

* Spring IoC (Inversion of Control)
* Dependency Injection (DI)
* XML-based Bean Configuration
* Maven Project Configuration
* Spring Application Context

Instead of creating separate projects for each exercise, this repository maintains **one evolving Library Management System**, where every exercise builds upon the previous one.

---

# 🛠️ Technologies Used

* Java 17
* Maven
* Spring Framework 5.3.39
* IntelliJ IDEA
* XML Configuration

---

# 📂 Project Structure

```text
LibraryManagement
│
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com.library
│   │   │       ├── MainApp.java
│   │   │       ├── repository
│   │   │       │     BookRepository.java
│   │   │       └── service
│   │   │             BookService.java
│   │   │
│   │   └── resources
│   │         applicationContext.xml
│   │
│   └── test
│
├── pom.xml
└── README.md
```

---

# 📚 Exercises Implemented

## ✅ Exercise 1 – Configuring a Basic Spring Application

### Objectives

* Create a Maven project
* Add Spring Context dependency
* Configure Spring XML
* Create BookService and BookRepository
* Load Spring Context
* Execute the application

### Concepts Learned

* Spring Framework Basics
* Spring IoC Container
* Bean Creation
* ApplicationContext
* XML Configuration

---

## ✅ Exercise 2 – Implementing Dependency Injection

### Objectives

* Implement Setter Injection
* Configure dependency injection using XML
* Inject BookRepository into BookService

### Concepts Learned

* Dependency Injection (DI)
* Setter Injection
* Loose Coupling
* Spring Bean Wiring

---

## ✅ Exercise 4 – Creating and Configuring a Maven Project

### Objectives

* Configure Maven
* Add Spring Dependencies
* Configure Maven Compiler Plugin

### Spring Dependencies

* spring-context
* spring-aop
* spring-webmvc

### Concepts Learned

* Maven Project Structure
* Dependency Management
* Maven Build Lifecycle
* Maven Plugins

---

## ✅ Exercise 5 – Configuring the Spring IoC Container

### Objectives

* Configure Spring Beans
* Understand IoC Container
* Manage Bean Dependencies
* Load Configuration using ApplicationContext

### Concepts Learned

* IoC Container
* Bean Lifecycle
* XML Bean Configuration
* Dependency Management

---

# 🏗️ Architecture

```text
                MainApp
                   │
                   ▼
      ClassPathXmlApplicationContext
                   │
                   ▼
        applicationContext.xml
                   │
        ┌──────────┴──────────┐
        ▼                     ▼
 BookRepository         BookService
        ▲                     │
        └────────Dependency───┘
```

---

# ▶️ How to Run

### 1. Clone the repository

```bash
git clone https://github.com/<your-username>/LibraryManagement.git
```

### 2. Open the project

Open the project using **IntelliJ IDEA** or any Java IDE.

### 3. Build the project

```bash
mvn clean install
```

### 4. Run

Execute:

```text
MainApp.java
```

---

# 💻 Sample Output

```text
Adding book: Spring in Action
Book saved: Spring in Action
```

or

```text
BookService is calling BookRepository...
Displaying list of books...
```

depending on the exercise being demonstrated.

---

# 🎯 Learning Outcomes

After completing this project, I gained practical experience in:

* Spring Framework Fundamentals
* Spring IoC Container
* Dependency Injection
* XML Bean Configuration
* Maven Configuration
* Spring ApplicationContext
* Java Project Structure
* Git and GitHub Version Control

---

# 📝 Git Commit History

This repository follows an incremental development approach.

* Week 2 Exercise 1 - Basic Spring Application
* Week 2 Exercise 2 - Dependency Injection
* Week 2 Exercise 4 - Maven Configuration
* Week 2 Exercise 5 - Spring IoC Container

Each exercise extends the same Library Management System instead of creating separate projects.

---

# 👨‍💻 Author

**Tarun Jayakumar**

Aspiring Java Full Stack Developer

Learning Spring Framework | Spring Boot | Hibernate | REST APIs | Microservices
