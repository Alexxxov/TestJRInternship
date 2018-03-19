package ru.jrintership.TestJRInternship.controllers.formbeans;

import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.NotBlank;

/**
 * Created by Admin on 19.03.2018.
 */
public class UserForm {

    @NotBlank
    private String name;

    @Range(max = 150)
    private int age;

    private boolean isAdmin;

    public UserForm(){

    }

    public UserForm(String name, int age, boolean isAdmin) {
        this.name = name;
        this.age = age;
        this.isAdmin = isAdmin;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public boolean getIsAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }
}
