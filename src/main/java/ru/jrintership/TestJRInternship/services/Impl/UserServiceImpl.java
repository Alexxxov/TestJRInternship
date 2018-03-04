package ru.jrintership.TestJRInternship.services.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.jrintership.TestJRInternship.model.User;
import ru.jrintership.TestJRInternship.repositories.UserRepository;
import ru.jrintership.TestJRInternship.services.UserService;

import javax.annotation.PostConstruct;
import java.util.List;

/**
 * Created by Admin on 04.03.2018.
 */
@Service
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;

    @Autowired
    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    //TODO remove test
    @PostConstruct
    void init(){
        User user = new User();
        user.setName("Ivan");
        user.setAge(34);
        user.setAdmin(true);
        userRepository.save(user);
    }

    @Override
    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public User getUser(Long id) {
        return userRepository.getOne(id);
    }

    @Override
    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public void saveUser(User user) {
        userRepository.save(user);
    }
}
