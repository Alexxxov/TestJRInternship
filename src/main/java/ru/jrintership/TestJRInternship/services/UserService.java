package ru.jrintership.TestJRInternship.services;

import ru.jrintership.TestJRInternship.model.User;

import java.util.List;

/**
 * Created by Admin on 04.03.2018.
 */
public interface UserService {

    List<User> findAllUsers();

    User findById(Integer id);

    void deleteUser(Integer id);

    User saveUser(User user);

    void updateUser(User user);
}
