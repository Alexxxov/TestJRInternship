package ru.jrintership.TestJRInternship.services;

import ru.jrintership.TestJRInternship.model.Book;

import java.util.List;

/**
 * Created by Admin on 04.03.2018.
 */
public interface BookService {

    List<Book> findAllBooks();

    Book findById(Integer id);

    void deleteBook(Integer id);

    Book saveBook(Book book);

    void updateBook(Book book);
}
