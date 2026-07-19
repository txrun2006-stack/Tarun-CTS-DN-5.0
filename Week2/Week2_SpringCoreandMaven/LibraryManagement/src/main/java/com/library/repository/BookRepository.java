package com.library.repository;

import org.springframework.stereotype.Repository;

import java.awt.print.Book;

@Repository
public class BookRepository  {

    BookRepository(){
        System.out.println("Bean for Repository is Created By @Repositoy Annotion ");
    }

    public void callingRepo() {
        System.out.println("here the Repositroy is called ! ");
    }
}
