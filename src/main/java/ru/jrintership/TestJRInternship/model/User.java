package ru.jrintership.TestJRInternship.model;

import org.hibernate.validator.constraints.Range;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

/**
 * Created by Admin on 04.03.2018.
 */

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    @NotBlank
    private String name;

    @Column(name = "age")
    @Range(max = 150)
    private int age;

    @Column(name = "isAdmin")
    private boolean isAdmin;


    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }
}
