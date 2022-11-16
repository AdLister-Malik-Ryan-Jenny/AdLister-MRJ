package com.codeup.adlister.util;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PasswordValidation {
    long id;
    String username;
    String email;
    String currentPassword;
    String newPassword;
    String passwordConfirmation;
    String sessionPassword;


    HttpServletResponse response;
    HttpServletRequest request;


//    public PasswordValidation(long id, String username, String email, String currentPassword, String newPassword, String passwordConfirmation, String sessionPassword) {
//        this.id = id;
//        this.username = username;
//        this.email = email;
//        this.currentPassword = currentPassword;
//        this.newPassword = newPassword;
//        this.passwordConfirmation = passwordConfirmation;
//        this.sessionPassword = sessionPassword;
//
//    }
//
//    public void changeCredentials(String username, String email, String currentPassword, String newPassword, String passwordConfirmation, String sessionPassword, HttpServletResponse response) throws IOException {
//            boolean validAttempt = Password.check(currentPassword, sessionPassword);
//            if (! newPassword.isEmpty() && newPassword.equals(passwordConfirmation)) currentPassword = newPassword;
//
//            if (validAttempt) {
//                User user = new User(username, email, Password.hash(currentPassword));
//                DaoFactory.getUsersDao().updateUser(user);
//                response.sendRedirect("/profile");
//            }else {
//                response.sendRedirect("/index");
//            }
//    }
//
//    public void deleteCredentials(String username, String currentPassword, String sessionPassword, HttpServletResponse response, HttpServletRequest request) throws IOException {
//        boolean validAttempt = Password.check(currentPassword, sessionPassword);
//        if (validAttempt) {
//            DaoFactory.getUsersDao().deleteUser(username);
//            request.getSession().removeAttribute("user");
//            request.getSession().invalidate();
//            response.sendRedirect("/login");
//        } else {
//            response.sendRedirect("/index");
//        }
//
//    }


}
