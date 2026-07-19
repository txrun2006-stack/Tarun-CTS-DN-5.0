package com.library.service;

import com.library.repository.BookRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class BookService {

    private BookRepository bookRepository;

    BookService(BookRepository bookRepository){
        this.bookRepository = bookRepository;
        System.out.println("Bean for BookService is Created By Using @Service Annotation so  BookService is Runing");
    }

    public  void callingBookRepo(){
        bookRepository.callingRepo();
    }
}
