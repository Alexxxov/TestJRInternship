package ru.jrintership.TestJRInternship.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.jrintership.TestJRInternship.controllers.formbeans.UserForm;
import ru.jrintership.TestJRInternship.model.User;
import ru.jrintership.TestJRInternship.repositories.UserRepository;
import ru.jrintership.TestJRInternship.services.Impl.UserServiceImpl;

import javax.validation.Valid;

/**
 * Created by Admin on 04.03.2018.
 */
@Controller
@RequestMapping("/users")
public class UserController {

    private UserServiceImpl userService;

    @Autowired
    public UserController(UserServiceImpl userService) {
        this.userService = userService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String listUsers(Model model) {
        model.addAttribute("users", userService.findAllUsers());
        return "users/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addUser(Model model) {
        UserForm userForm = new UserForm();
        model.addAttribute("userForm", userForm);
        return "users/new";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String saveUser(@ModelAttribute("userForm") @Valid UserForm userForm, BindingResult bindingResult,
                           RedirectAttributes redirectAttributes) {
        User user = createUser(userForm);
        userService.saveUser(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "/{userId}/delete", method = RequestMethod.POST)
    public String deleteUser(@PathVariable Integer userId, RedirectAttributes redirectAttributes){
        userService.deleteUser(userId);
        return "redirect:/users";
    }

    private User createUser(UserForm userForm) {
        User user = new User();
        user.setName(userForm.getName());
        user.setAge(userForm.getAge());
        user.setAdmin(userForm.getIsAdmin());
        return user;
    }

}
