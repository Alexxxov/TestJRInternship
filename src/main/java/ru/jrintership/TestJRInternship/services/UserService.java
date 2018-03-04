package ru.jrintership.TestJRInternship.services;

import ru.jrintership.TestJRInternship.model.User;

import java.util.List;

/**
 * Created by Admin on 04.03.2018.
 */
public interface UserService {

    List<User> findAllUsers();

    User getUser(Long id);

    void deleteUser(Long id);

    void saveUser(User user);
}
