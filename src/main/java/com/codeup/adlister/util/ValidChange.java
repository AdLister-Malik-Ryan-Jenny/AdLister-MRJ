package com.codeup.adlister.util;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ValidChange {
    long id;
    String username;
    String email;
    String currentPassword;
    String newPassword;
    String newPasswordConfirmation;
    String sessionPassword;

    public ValidChange(long id, String username, String email, String currentPassword, String newPassword, String newPasswordConfirmation, String sessionPassword) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.currentPassword = currentPassword;
        this.newPassword = newPassword;
        this.newPasswordConfirmation = newPasswordConfirmation;
        this.sessionPassword = sessionPassword;
    }
    public void profileInfoChange(String username, String email, String currentPassword,String sessionPassword, HttpServletResponse response){
        if(Password.check(currentPassword, sessionPassword)){
            User user = new User(username, email, Password.hash(currentPassword));
            DaoFactory.getUsersDao().updateUser(user);
            try {
                response.sendRedirect("/profile");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }else {
            try {
                response.sendRedirect("/index");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
