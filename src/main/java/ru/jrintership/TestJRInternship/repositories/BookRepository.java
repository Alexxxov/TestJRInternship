package ru.jrintership.TestJRInternship.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.jrintership.TestJRInternship.model.Book;

/**
 * Created by Admin on 04.03.2018.
 */

@Repository
public interface BookRepository extends JpaRepository<Book,Integer> {


}