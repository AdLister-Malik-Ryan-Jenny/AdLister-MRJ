package com.codeup.adlister.util;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.http.HttpServletResponse;

public class PasswordValidation {
    String username;
    String email;
    String currentPassword ;
    String newPassword;
    String passwordConfirmation;
    String sessionPassword;
    String confirm;

    HttpServletResponse response;

    public PasswordValidation(String username, String email, String currentPassword, String newPassword, String passwordConfirmation, String sessionPassword, String confirm) {
        this.username = username;
        this.email = email;
        this.currentPassword = currentPassword;
        this.newPassword = newPassword;
        this.passwordConfirmation = passwordConfirmation;
        this.sessionPassword = sessionPassword;
        this.confirm = confirm;
    }




}
