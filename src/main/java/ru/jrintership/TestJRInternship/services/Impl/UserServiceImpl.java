package ru.jrintership.TestJRInternship.services.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import ru.jrintership.TestJRInternship.model.User;
import ru.jrintership.TestJRInternship.repositories.UserRepository;
import ru.jrintership.TestJRInternship.services.UserService;

import javax.annotation.PostConstruct;
import java.util.List;

/**
 * Created by Admin on 04.03.2018.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;

    @Autowired
    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

//    //TODO remove test
//    @PostConstruct
//    void init(){
//        User user = new User();
//        user.setName("Ivan");
//        user.setAge(34);
//        user.setAdmin(true);
//        userRepository.save(user);
//    }

    @Override
    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public User findById(Long id) {
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

    @Override
    public void updateUser(User user) {
        userRepository.save(user);
    }

    public Page<User> getUsersPage(int pageNumber, int pageSize) {
        PageRequest request =
                new PageRequest(pageNumber - 1, pageSize, Sort.Direction.DESC, "name");
        return userRepository.findAll(request);
    }
}
