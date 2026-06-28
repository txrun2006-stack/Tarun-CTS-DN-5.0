package com.library;

import com.library.service.BookService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class LibraryManagementApplication {

    public static void main(String[] args) {

        // Load the Spring Container
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");

        // Get the BookService bean from the container
        BookService bookService =
                context.getBean("bookService", BookService.class);

        // Call a method on the bean
        bookService.display();
    }
}