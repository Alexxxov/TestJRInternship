package ru.jrintership.TestJRInternship.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.jrintership.TestJRInternship.model.User;

import java.util.List;

/**
 * Created by Admin on 04.03.2018.
 */
@Repository
public interface UserRepository extends JpaRepository<User,Long> {
    @Override
    List<User> findAll();

    @Override
    void deleteById(Long aLong);

    @Override
    User getOne(Long aLong);
}