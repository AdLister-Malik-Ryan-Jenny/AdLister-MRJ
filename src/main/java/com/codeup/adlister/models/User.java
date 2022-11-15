package com.codeup.adlister.models;

import com.codeup.adlister.util.Password;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

public class User {
    private long id;
    @NotBlank(message = "username cannot blank")
    private String username;
    @Email(message = "Please enter a valid email")
    private String email;
    @NotBlank(message = "password cannot be blank")
    private String password;

    public User() {}

    public User(String username, String email, String password) {
        this.username = username;
        this.email = email;
        setPassword(password);
    }
    public User(String username, String email, Long id) {
        this.username = username;
        this.email = email;
        this.id = id;
    }

    public User(long id, String username, String email, String password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = Password.hash(password);
    }
     public String toString () {
        return username + " " + email + " " + password;
     }
}
