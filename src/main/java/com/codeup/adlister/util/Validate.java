package com.codeup.adlister.util;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

public class Validate {
    private String username;
    private String newPassword;
    private String confirmPassword;
    private String password;
    private Long id;
    private String email;


    public Validate(String username, String newPassword, String confirmPassword) {
        this.username = username;
        this.newPassword = newPassword;
        this.confirmPassword = confirmPassword;
    }

    public boolean newPasswordValidation() {
        return newPassword.equals(confirmPassword);
    }

    public void setPassword() {
        if (this.newPassword == null) {
            this.password = password;
        } else if (newPasswordValidation()) {
            this.password = newPassword;
        } else {
            this.password = "error";
        }
    }

    public String sessionPassword() {
        return DaoFactory.getUsersDao().findByUsername(username).getPassword();
    }

    public boolean updateUser() {
        if (Password.check(password, sessionPassword())) {
            User user = new User(id, username, email, Password.hash(password));
            DaoFactory.getUsersDao().updateUser(user);
            return true;
        }
        return false;
    }

    public boolean deleteUser(String confirm) {
        if (confirm.equals("confirm") && Password.check(password, sessionPassword())) {
            DaoFactory.getUsersDao().deleteUser(username);
        }
        return true;
    }
} // validate class



// TODO: 11/15/22 Update else redirect to appropriate redirect or error message

